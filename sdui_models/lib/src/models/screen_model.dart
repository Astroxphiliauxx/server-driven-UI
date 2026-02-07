import 'package:freezed_annotation/freezed_annotation.dart';
import 'component_model.dart';
import 'action_model.dart';

part 'screen_model.freezed.dart';
part 'screen_model.g.dart';

/// Screen models define the structure of entire screens.
/// The server sends these to the client, which renders them dynamically.
@Freezed(unionKey: 'runtimeType')
sealed class ScreenModel with _$ScreenModel {
  /// A vertical scrollable screen with a list of components
  const factory ScreenModel.vertical({
    required String screenTitle,
    required List<ComponentModel> components,
  }) = VerticalScreenModel;

  /// An error screen shown when something goes wrong
  const factory ScreenModel.error({
    required String errorMessage,
    String? errorCode,
    ActionModel? retryAction,
  }) = ErrorScreenModel;

  factory ScreenModel.fromJson(Map<String, dynamic> json) =>
      _$ScreenModelFromJson(json);
}
