import 'package:freezed_annotation/freezed_annotation.dart';
import 'action_model.dart';

part 'component_model.freezed.dart';
part 'component_model.g.dart';

/// Component models represent UI elements that can be rendered by the client.
/// Each component type maps to a specific Flutter widget.
@Freezed(unionKey: 'runtimeType')
sealed class ComponentModel with _$ComponentModel {
  /// A title/heading text component
  const factory ComponentModel.title({
    required String title,
    String? subtitle,
  }) = TitleComponent;

  /// A vertical spacer for adding space between components
  const factory ComponentModel.spacer({
    @Default(16.0) double height,
  }) = SpacerComponent;

  /// An image banner component
  const factory ComponentModel.imageBanner({
    required String imageUrl,
    @Default(200.0) double height,
  }) = ImageBannerComponent;

  /// A clickable button with an action
  const factory ComponentModel.button({
    required String label,
    required ActionModel action,
    @Default(false) bool isPrimary,
  }) = ButtonComponent;

  /// A card component with title and optional content
  const factory ComponentModel.card({
    required String title,
    String? subtitle,
    String? imageUrl,
    ActionModel? action,
  }) = CardComponent;

  /// A horizontal scrollable list of components
  const factory ComponentModel.horizontalList({
    required List<ComponentModel> items,
    @Default(120.0) double height,
  }) = HorizontalListComponent;

  /// An info tile with optional avatar, title, and subtitle
  const factory ComponentModel.infoTile({
    required String title,
    String? subtitle,
    String? avatarUrl,
    String? leadingIcon,
    ActionModel? action,
  }) = InfoTileComponent;

  /// A horizontal divider line
  const factory ComponentModel.divider({
    @Default(1.0) double thickness,
  }) = DividerComponent;

  factory ComponentModel.fromJson(Map<String, dynamic> json) =>
      _$ComponentModelFromJson(json);
}
