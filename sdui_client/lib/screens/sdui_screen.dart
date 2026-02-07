import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sdui_models/sdui_models.dart';
import '../core/api/sdui_api_service.dart';
import '../core/mappers/component_mapper.dart';
import '../core/handlers/action_handler.dart';

class SduiScreen extends StatefulWidget {
  final String screenName;

  const SduiScreen({super.key, required this.screenName});

  @override
  State<SduiScreen> createState() => _SduiScreenState();
}

class _SduiScreenState extends State<SduiScreen> {
  late Future<ScreenModel> _screenFuture;

  @override
  void initState() {
    super.initState();
    _fetchScreen();
  }

  void _fetchScreen() {
    _screenFuture = context.read<SduiApiService>().fetchScreen(widget.screenName);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ScreenModel>(
      future: _screenFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }

        if (snapshot.hasError) {
          return Scaffold(
            appBar: AppBar(title: const Text('Error')),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.error_outline, size: 48, color: Colors.red),
                  const SizedBox(height: 16),
                  Text('Error loading screen: ${widget.screenName}'),
                  Text(snapshot.error.toString(), textAlign: TextAlign.center),
                  const SizedBox(height: 16),
                  FilledButton(
                    onPressed: () {
                      setState(() {
                        _fetchScreen();
                      });
                    },
                    child: const Text('Retry'),
                  ),
                ],
              ),
            ),
          );
        }

        final screen = snapshot.data!;
        
        // Handle Error Screen Type
        if (screen is ErrorScreenModel) {
          return Scaffold(
            appBar: AppBar(title: const Text('Error')),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(screen.errorMessage),
                  if (screen.retryAction != null)
                    FilledButton(
                      onPressed: () {
                        // In a real app, handle retry action properly
                        setState(() {
                          _fetchScreen();
                        });
                      },
                      child: const Text('Retry'),
                    ),
                ],
              ),
            ),
          );
        }

        // Handle Vertical Screen Type
        final verticalScreen = screen as VerticalScreenModel;
        final actionHandler = ActionHandler(context);

        return Scaffold(
          appBar: AppBar(
            title: Text(verticalScreen.screenTitle),
          ),
          body: RefreshIndicator(
            onRefresh: () async {
              setState(() {
                _fetchScreen();
              });
              await _screenFuture;
            },
            child: ListView.builder(
              itemCount: verticalScreen.components.length,
              itemBuilder: (context, index) {
                return ComponentMapper.map(
                  verticalScreen.components[index],
                  actionHandler,
                );
              },
            ),
          ),
        );
      },
    );
  }
}
