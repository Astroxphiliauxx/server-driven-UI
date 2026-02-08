import 'package:freezed_annotation/freezed_annotation.dart';

part 'action_model.freezed.dart';
part 'action_model.g.dart';

// Action models define what happens when user interacts with components.
// Each action type specifies a different behavior (navigation, snackbar, etc.)
@Freezed(unionKey: 'runtimeType')
sealed class ActionModel with _$ActionModel {
  // Navigate to another screen by name
  const factory ActionModel.navigate({
    required String destination,
  }) = NavigateAction;

  // Go back to the previous screen
  const factory ActionModel.goBack() = GoBackAction;

  // Show a snackbar message
  const factory ActionModel.showSnackbar({
    required String message,
  }) = ShowSnackbarAction;

  // Open a URL in the browser
  const factory ActionModel.openUrl({
    required String url,
  }) = OpenUrlAction;

  // Log an analytics event
  const factory ActionModel.logEvent({
    required String eventName,
    Map<String, dynamic>? params,
  }) = LogEventAction;

  factory ActionModel.fromJson(Map<String, dynamic> json) =>
      _$ActionModelFromJson(json);
}
