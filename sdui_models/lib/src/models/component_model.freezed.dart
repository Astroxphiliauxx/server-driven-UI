// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'component_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ComponentModel _$ComponentModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'title':
      return TitleComponent.fromJson(json);
    case 'spacer':
      return SpacerComponent.fromJson(json);
    case 'imageBanner':
      return ImageBannerComponent.fromJson(json);
    case 'button':
      return ButtonComponent.fromJson(json);
    case 'card':
      return CardComponent.fromJson(json);
    case 'horizontalList':
      return HorizontalListComponent.fromJson(json);
    case 'infoTile':
      return InfoTileComponent.fromJson(json);
    case 'divider':
      return DividerComponent.fromJson(json);

    default:
      throw CheckedFromJsonException(
        json,
        'runtimeType',
        'ComponentModel',
        'Invalid union type "${json['runtimeType']}"!',
      );
  }
}

/// @nodoc
mixin _$ComponentModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String? subtitle) title,
    required TResult Function(double height) spacer,
    required TResult Function(String imageUrl, double height) imageBanner,
    required TResult Function(String label, ActionModel action, bool isPrimary)
    button,
    required TResult Function(
      String title,
      String? subtitle,
      String? imageUrl,
      ActionModel? action,
    )
    card,
    required TResult Function(List<ComponentModel> items, double height)
    horizontalList,
    required TResult Function(
      String title,
      String? subtitle,
      String? avatarUrl,
      String? leadingIcon,
      ActionModel? action,
    )
    infoTile,
    required TResult Function(double thickness) divider,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String? subtitle)? title,
    TResult? Function(double height)? spacer,
    TResult? Function(String imageUrl, double height)? imageBanner,
    TResult? Function(String label, ActionModel action, bool isPrimary)? button,
    TResult? Function(
      String title,
      String? subtitle,
      String? imageUrl,
      ActionModel? action,
    )?
    card,
    TResult? Function(List<ComponentModel> items, double height)?
    horizontalList,
    TResult? Function(
      String title,
      String? subtitle,
      String? avatarUrl,
      String? leadingIcon,
      ActionModel? action,
    )?
    infoTile,
    TResult? Function(double thickness)? divider,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String? subtitle)? title,
    TResult Function(double height)? spacer,
    TResult Function(String imageUrl, double height)? imageBanner,
    TResult Function(String label, ActionModel action, bool isPrimary)? button,
    TResult Function(
      String title,
      String? subtitle,
      String? imageUrl,
      ActionModel? action,
    )?
    card,
    TResult Function(List<ComponentModel> items, double height)? horizontalList,
    TResult Function(
      String title,
      String? subtitle,
      String? avatarUrl,
      String? leadingIcon,
      ActionModel? action,
    )?
    infoTile,
    TResult Function(double thickness)? divider,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TitleComponent value) title,
    required TResult Function(SpacerComponent value) spacer,
    required TResult Function(ImageBannerComponent value) imageBanner,
    required TResult Function(ButtonComponent value) button,
    required TResult Function(CardComponent value) card,
    required TResult Function(HorizontalListComponent value) horizontalList,
    required TResult Function(InfoTileComponent value) infoTile,
    required TResult Function(DividerComponent value) divider,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TitleComponent value)? title,
    TResult? Function(SpacerComponent value)? spacer,
    TResult? Function(ImageBannerComponent value)? imageBanner,
    TResult? Function(ButtonComponent value)? button,
    TResult? Function(CardComponent value)? card,
    TResult? Function(HorizontalListComponent value)? horizontalList,
    TResult? Function(InfoTileComponent value)? infoTile,
    TResult? Function(DividerComponent value)? divider,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TitleComponent value)? title,
    TResult Function(SpacerComponent value)? spacer,
    TResult Function(ImageBannerComponent value)? imageBanner,
    TResult Function(ButtonComponent value)? button,
    TResult Function(CardComponent value)? card,
    TResult Function(HorizontalListComponent value)? horizontalList,
    TResult Function(InfoTileComponent value)? infoTile,
    TResult Function(DividerComponent value)? divider,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Serializes this ComponentModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComponentModelCopyWith<$Res> {
  factory $ComponentModelCopyWith(
    ComponentModel value,
    $Res Function(ComponentModel) then,
  ) = _$ComponentModelCopyWithImpl<$Res, ComponentModel>;
}

/// @nodoc
class _$ComponentModelCopyWithImpl<$Res, $Val extends ComponentModel>
    implements $ComponentModelCopyWith<$Res> {
  _$ComponentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ComponentModel
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TitleComponentImplCopyWith<$Res> {
  factory _$$TitleComponentImplCopyWith(
    _$TitleComponentImpl value,
    $Res Function(_$TitleComponentImpl) then,
  ) = __$$TitleComponentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, String? subtitle});
}

/// @nodoc
class __$$TitleComponentImplCopyWithImpl<$Res>
    extends _$ComponentModelCopyWithImpl<$Res, _$TitleComponentImpl>
    implements _$$TitleComponentImplCopyWith<$Res> {
  __$$TitleComponentImplCopyWithImpl(
    _$TitleComponentImpl _value,
    $Res Function(_$TitleComponentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ComponentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? title = null, Object? subtitle = freezed}) {
    return _then(
      _$TitleComponentImpl(
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        subtitle: freezed == subtitle
            ? _value.subtitle
            : subtitle // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TitleComponentImpl implements TitleComponent {
  const _$TitleComponentImpl({
    required this.title,
    this.subtitle,
    final String? $type,
  }) : $type = $type ?? 'title';

  factory _$TitleComponentImpl.fromJson(Map<String, dynamic> json) =>
      _$$TitleComponentImplFromJson(json);

  @override
  final String title;
  @override
  final String? subtitle;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ComponentModel.title(title: $title, subtitle: $subtitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TitleComponentImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, subtitle);

  /// Create a copy of ComponentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TitleComponentImplCopyWith<_$TitleComponentImpl> get copyWith =>
      __$$TitleComponentImplCopyWithImpl<_$TitleComponentImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String? subtitle) title,
    required TResult Function(double height) spacer,
    required TResult Function(String imageUrl, double height) imageBanner,
    required TResult Function(String label, ActionModel action, bool isPrimary)
    button,
    required TResult Function(
      String title,
      String? subtitle,
      String? imageUrl,
      ActionModel? action,
    )
    card,
    required TResult Function(List<ComponentModel> items, double height)
    horizontalList,
    required TResult Function(
      String title,
      String? subtitle,
      String? avatarUrl,
      String? leadingIcon,
      ActionModel? action,
    )
    infoTile,
    required TResult Function(double thickness) divider,
  }) {
    return title(this.title, subtitle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String? subtitle)? title,
    TResult? Function(double height)? spacer,
    TResult? Function(String imageUrl, double height)? imageBanner,
    TResult? Function(String label, ActionModel action, bool isPrimary)? button,
    TResult? Function(
      String title,
      String? subtitle,
      String? imageUrl,
      ActionModel? action,
    )?
    card,
    TResult? Function(List<ComponentModel> items, double height)?
    horizontalList,
    TResult? Function(
      String title,
      String? subtitle,
      String? avatarUrl,
      String? leadingIcon,
      ActionModel? action,
    )?
    infoTile,
    TResult? Function(double thickness)? divider,
  }) {
    return title?.call(this.title, subtitle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String? subtitle)? title,
    TResult Function(double height)? spacer,
    TResult Function(String imageUrl, double height)? imageBanner,
    TResult Function(String label, ActionModel action, bool isPrimary)? button,
    TResult Function(
      String title,
      String? subtitle,
      String? imageUrl,
      ActionModel? action,
    )?
    card,
    TResult Function(List<ComponentModel> items, double height)? horizontalList,
    TResult Function(
      String title,
      String? subtitle,
      String? avatarUrl,
      String? leadingIcon,
      ActionModel? action,
    )?
    infoTile,
    TResult Function(double thickness)? divider,
    required TResult orElse(),
  }) {
    if (title != null) {
      return title(this.title, subtitle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TitleComponent value) title,
    required TResult Function(SpacerComponent value) spacer,
    required TResult Function(ImageBannerComponent value) imageBanner,
    required TResult Function(ButtonComponent value) button,
    required TResult Function(CardComponent value) card,
    required TResult Function(HorizontalListComponent value) horizontalList,
    required TResult Function(InfoTileComponent value) infoTile,
    required TResult Function(DividerComponent value) divider,
  }) {
    return title(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TitleComponent value)? title,
    TResult? Function(SpacerComponent value)? spacer,
    TResult? Function(ImageBannerComponent value)? imageBanner,
    TResult? Function(ButtonComponent value)? button,
    TResult? Function(CardComponent value)? card,
    TResult? Function(HorizontalListComponent value)? horizontalList,
    TResult? Function(InfoTileComponent value)? infoTile,
    TResult? Function(DividerComponent value)? divider,
  }) {
    return title?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TitleComponent value)? title,
    TResult Function(SpacerComponent value)? spacer,
    TResult Function(ImageBannerComponent value)? imageBanner,
    TResult Function(ButtonComponent value)? button,
    TResult Function(CardComponent value)? card,
    TResult Function(HorizontalListComponent value)? horizontalList,
    TResult Function(InfoTileComponent value)? infoTile,
    TResult Function(DividerComponent value)? divider,
    required TResult orElse(),
  }) {
    if (title != null) {
      return title(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TitleComponentImplToJson(this);
  }
}

abstract class TitleComponent implements ComponentModel {
  const factory TitleComponent({
    required final String title,
    final String? subtitle,
  }) = _$TitleComponentImpl;

  factory TitleComponent.fromJson(Map<String, dynamic> json) =
      _$TitleComponentImpl.fromJson;

  String get title;
  String? get subtitle;

  /// Create a copy of ComponentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TitleComponentImplCopyWith<_$TitleComponentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SpacerComponentImplCopyWith<$Res> {
  factory _$$SpacerComponentImplCopyWith(
    _$SpacerComponentImpl value,
    $Res Function(_$SpacerComponentImpl) then,
  ) = __$$SpacerComponentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double height});
}

/// @nodoc
class __$$SpacerComponentImplCopyWithImpl<$Res>
    extends _$ComponentModelCopyWithImpl<$Res, _$SpacerComponentImpl>
    implements _$$SpacerComponentImplCopyWith<$Res> {
  __$$SpacerComponentImplCopyWithImpl(
    _$SpacerComponentImpl _value,
    $Res Function(_$SpacerComponentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ComponentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? height = null}) {
    return _then(
      _$SpacerComponentImpl(
        height: null == height
            ? _value.height
            : height // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SpacerComponentImpl implements SpacerComponent {
  const _$SpacerComponentImpl({this.height = 16.0, final String? $type})
    : $type = $type ?? 'spacer';

  factory _$SpacerComponentImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpacerComponentImplFromJson(json);

  @override
  @JsonKey()
  final double height;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ComponentModel.spacer(height: $height)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpacerComponentImpl &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, height);

  /// Create a copy of ComponentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpacerComponentImplCopyWith<_$SpacerComponentImpl> get copyWith =>
      __$$SpacerComponentImplCopyWithImpl<_$SpacerComponentImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String? subtitle) title,
    required TResult Function(double height) spacer,
    required TResult Function(String imageUrl, double height) imageBanner,
    required TResult Function(String label, ActionModel action, bool isPrimary)
    button,
    required TResult Function(
      String title,
      String? subtitle,
      String? imageUrl,
      ActionModel? action,
    )
    card,
    required TResult Function(List<ComponentModel> items, double height)
    horizontalList,
    required TResult Function(
      String title,
      String? subtitle,
      String? avatarUrl,
      String? leadingIcon,
      ActionModel? action,
    )
    infoTile,
    required TResult Function(double thickness) divider,
  }) {
    return spacer(height);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String? subtitle)? title,
    TResult? Function(double height)? spacer,
    TResult? Function(String imageUrl, double height)? imageBanner,
    TResult? Function(String label, ActionModel action, bool isPrimary)? button,
    TResult? Function(
      String title,
      String? subtitle,
      String? imageUrl,
      ActionModel? action,
    )?
    card,
    TResult? Function(List<ComponentModel> items, double height)?
    horizontalList,
    TResult? Function(
      String title,
      String? subtitle,
      String? avatarUrl,
      String? leadingIcon,
      ActionModel? action,
    )?
    infoTile,
    TResult? Function(double thickness)? divider,
  }) {
    return spacer?.call(height);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String? subtitle)? title,
    TResult Function(double height)? spacer,
    TResult Function(String imageUrl, double height)? imageBanner,
    TResult Function(String label, ActionModel action, bool isPrimary)? button,
    TResult Function(
      String title,
      String? subtitle,
      String? imageUrl,
      ActionModel? action,
    )?
    card,
    TResult Function(List<ComponentModel> items, double height)? horizontalList,
    TResult Function(
      String title,
      String? subtitle,
      String? avatarUrl,
      String? leadingIcon,
      ActionModel? action,
    )?
    infoTile,
    TResult Function(double thickness)? divider,
    required TResult orElse(),
  }) {
    if (spacer != null) {
      return spacer(height);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TitleComponent value) title,
    required TResult Function(SpacerComponent value) spacer,
    required TResult Function(ImageBannerComponent value) imageBanner,
    required TResult Function(ButtonComponent value) button,
    required TResult Function(CardComponent value) card,
    required TResult Function(HorizontalListComponent value) horizontalList,
    required TResult Function(InfoTileComponent value) infoTile,
    required TResult Function(DividerComponent value) divider,
  }) {
    return spacer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TitleComponent value)? title,
    TResult? Function(SpacerComponent value)? spacer,
    TResult? Function(ImageBannerComponent value)? imageBanner,
    TResult? Function(ButtonComponent value)? button,
    TResult? Function(CardComponent value)? card,
    TResult? Function(HorizontalListComponent value)? horizontalList,
    TResult? Function(InfoTileComponent value)? infoTile,
    TResult? Function(DividerComponent value)? divider,
  }) {
    return spacer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TitleComponent value)? title,
    TResult Function(SpacerComponent value)? spacer,
    TResult Function(ImageBannerComponent value)? imageBanner,
    TResult Function(ButtonComponent value)? button,
    TResult Function(CardComponent value)? card,
    TResult Function(HorizontalListComponent value)? horizontalList,
    TResult Function(InfoTileComponent value)? infoTile,
    TResult Function(DividerComponent value)? divider,
    required TResult orElse(),
  }) {
    if (spacer != null) {
      return spacer(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SpacerComponentImplToJson(this);
  }
}

abstract class SpacerComponent implements ComponentModel {
  const factory SpacerComponent({final double height}) = _$SpacerComponentImpl;

  factory SpacerComponent.fromJson(Map<String, dynamic> json) =
      _$SpacerComponentImpl.fromJson;

  double get height;

  /// Create a copy of ComponentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpacerComponentImplCopyWith<_$SpacerComponentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageBannerComponentImplCopyWith<$Res> {
  factory _$$ImageBannerComponentImplCopyWith(
    _$ImageBannerComponentImpl value,
    $Res Function(_$ImageBannerComponentImpl) then,
  ) = __$$ImageBannerComponentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String imageUrl, double height});
}

/// @nodoc
class __$$ImageBannerComponentImplCopyWithImpl<$Res>
    extends _$ComponentModelCopyWithImpl<$Res, _$ImageBannerComponentImpl>
    implements _$$ImageBannerComponentImplCopyWith<$Res> {
  __$$ImageBannerComponentImplCopyWithImpl(
    _$ImageBannerComponentImpl _value,
    $Res Function(_$ImageBannerComponentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ComponentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? imageUrl = null, Object? height = null}) {
    return _then(
      _$ImageBannerComponentImpl(
        imageUrl: null == imageUrl
            ? _value.imageUrl
            : imageUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        height: null == height
            ? _value.height
            : height // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageBannerComponentImpl implements ImageBannerComponent {
  const _$ImageBannerComponentImpl({
    required this.imageUrl,
    this.height = 200.0,
    final String? $type,
  }) : $type = $type ?? 'imageBanner';

  factory _$ImageBannerComponentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageBannerComponentImplFromJson(json);

  @override
  final String imageUrl;
  @override
  @JsonKey()
  final double height;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ComponentModel.imageBanner(imageUrl: $imageUrl, height: $height)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageBannerComponentImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, imageUrl, height);

  /// Create a copy of ComponentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageBannerComponentImplCopyWith<_$ImageBannerComponentImpl>
  get copyWith =>
      __$$ImageBannerComponentImplCopyWithImpl<_$ImageBannerComponentImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String? subtitle) title,
    required TResult Function(double height) spacer,
    required TResult Function(String imageUrl, double height) imageBanner,
    required TResult Function(String label, ActionModel action, bool isPrimary)
    button,
    required TResult Function(
      String title,
      String? subtitle,
      String? imageUrl,
      ActionModel? action,
    )
    card,
    required TResult Function(List<ComponentModel> items, double height)
    horizontalList,
    required TResult Function(
      String title,
      String? subtitle,
      String? avatarUrl,
      String? leadingIcon,
      ActionModel? action,
    )
    infoTile,
    required TResult Function(double thickness) divider,
  }) {
    return imageBanner(imageUrl, height);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String? subtitle)? title,
    TResult? Function(double height)? spacer,
    TResult? Function(String imageUrl, double height)? imageBanner,
    TResult? Function(String label, ActionModel action, bool isPrimary)? button,
    TResult? Function(
      String title,
      String? subtitle,
      String? imageUrl,
      ActionModel? action,
    )?
    card,
    TResult? Function(List<ComponentModel> items, double height)?
    horizontalList,
    TResult? Function(
      String title,
      String? subtitle,
      String? avatarUrl,
      String? leadingIcon,
      ActionModel? action,
    )?
    infoTile,
    TResult? Function(double thickness)? divider,
  }) {
    return imageBanner?.call(imageUrl, height);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String? subtitle)? title,
    TResult Function(double height)? spacer,
    TResult Function(String imageUrl, double height)? imageBanner,
    TResult Function(String label, ActionModel action, bool isPrimary)? button,
    TResult Function(
      String title,
      String? subtitle,
      String? imageUrl,
      ActionModel? action,
    )?
    card,
    TResult Function(List<ComponentModel> items, double height)? horizontalList,
    TResult Function(
      String title,
      String? subtitle,
      String? avatarUrl,
      String? leadingIcon,
      ActionModel? action,
    )?
    infoTile,
    TResult Function(double thickness)? divider,
    required TResult orElse(),
  }) {
    if (imageBanner != null) {
      return imageBanner(imageUrl, height);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TitleComponent value) title,
    required TResult Function(SpacerComponent value) spacer,
    required TResult Function(ImageBannerComponent value) imageBanner,
    required TResult Function(ButtonComponent value) button,
    required TResult Function(CardComponent value) card,
    required TResult Function(HorizontalListComponent value) horizontalList,
    required TResult Function(InfoTileComponent value) infoTile,
    required TResult Function(DividerComponent value) divider,
  }) {
    return imageBanner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TitleComponent value)? title,
    TResult? Function(SpacerComponent value)? spacer,
    TResult? Function(ImageBannerComponent value)? imageBanner,
    TResult? Function(ButtonComponent value)? button,
    TResult? Function(CardComponent value)? card,
    TResult? Function(HorizontalListComponent value)? horizontalList,
    TResult? Function(InfoTileComponent value)? infoTile,
    TResult? Function(DividerComponent value)? divider,
  }) {
    return imageBanner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TitleComponent value)? title,
    TResult Function(SpacerComponent value)? spacer,
    TResult Function(ImageBannerComponent value)? imageBanner,
    TResult Function(ButtonComponent value)? button,
    TResult Function(CardComponent value)? card,
    TResult Function(HorizontalListComponent value)? horizontalList,
    TResult Function(InfoTileComponent value)? infoTile,
    TResult Function(DividerComponent value)? divider,
    required TResult orElse(),
  }) {
    if (imageBanner != null) {
      return imageBanner(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageBannerComponentImplToJson(this);
  }
}

abstract class ImageBannerComponent implements ComponentModel {
  const factory ImageBannerComponent({
    required final String imageUrl,
    final double height,
  }) = _$ImageBannerComponentImpl;

  factory ImageBannerComponent.fromJson(Map<String, dynamic> json) =
      _$ImageBannerComponentImpl.fromJson;

  String get imageUrl;
  double get height;

  /// Create a copy of ComponentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageBannerComponentImplCopyWith<_$ImageBannerComponentImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ButtonComponentImplCopyWith<$Res> {
  factory _$$ButtonComponentImplCopyWith(
    _$ButtonComponentImpl value,
    $Res Function(_$ButtonComponentImpl) then,
  ) = __$$ButtonComponentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String label, ActionModel action, bool isPrimary});

  $ActionModelCopyWith<$Res> get action;
}

/// @nodoc
class __$$ButtonComponentImplCopyWithImpl<$Res>
    extends _$ComponentModelCopyWithImpl<$Res, _$ButtonComponentImpl>
    implements _$$ButtonComponentImplCopyWith<$Res> {
  __$$ButtonComponentImplCopyWithImpl(
    _$ButtonComponentImpl _value,
    $Res Function(_$ButtonComponentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ComponentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? action = null,
    Object? isPrimary = null,
  }) {
    return _then(
      _$ButtonComponentImpl(
        label: null == label
            ? _value.label
            : label // ignore: cast_nullable_to_non_nullable
                  as String,
        action: null == action
            ? _value.action
            : action // ignore: cast_nullable_to_non_nullable
                  as ActionModel,
        isPrimary: null == isPrimary
            ? _value.isPrimary
            : isPrimary // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }

  /// Create a copy of ComponentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ActionModelCopyWith<$Res> get action {
    return $ActionModelCopyWith<$Res>(_value.action, (value) {
      return _then(_value.copyWith(action: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ButtonComponentImpl implements ButtonComponent {
  const _$ButtonComponentImpl({
    required this.label,
    required this.action,
    this.isPrimary = false,
    final String? $type,
  }) : $type = $type ?? 'button';

  factory _$ButtonComponentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ButtonComponentImplFromJson(json);

  @override
  final String label;
  @override
  final ActionModel action;
  @override
  @JsonKey()
  final bool isPrimary;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ComponentModel.button(label: $label, action: $action, isPrimary: $isPrimary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ButtonComponentImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.isPrimary, isPrimary) ||
                other.isPrimary == isPrimary));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, label, action, isPrimary);

  /// Create a copy of ComponentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ButtonComponentImplCopyWith<_$ButtonComponentImpl> get copyWith =>
      __$$ButtonComponentImplCopyWithImpl<_$ButtonComponentImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String? subtitle) title,
    required TResult Function(double height) spacer,
    required TResult Function(String imageUrl, double height) imageBanner,
    required TResult Function(String label, ActionModel action, bool isPrimary)
    button,
    required TResult Function(
      String title,
      String? subtitle,
      String? imageUrl,
      ActionModel? action,
    )
    card,
    required TResult Function(List<ComponentModel> items, double height)
    horizontalList,
    required TResult Function(
      String title,
      String? subtitle,
      String? avatarUrl,
      String? leadingIcon,
      ActionModel? action,
    )
    infoTile,
    required TResult Function(double thickness) divider,
  }) {
    return button(label, action, isPrimary);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String? subtitle)? title,
    TResult? Function(double height)? spacer,
    TResult? Function(String imageUrl, double height)? imageBanner,
    TResult? Function(String label, ActionModel action, bool isPrimary)? button,
    TResult? Function(
      String title,
      String? subtitle,
      String? imageUrl,
      ActionModel? action,
    )?
    card,
    TResult? Function(List<ComponentModel> items, double height)?
    horizontalList,
    TResult? Function(
      String title,
      String? subtitle,
      String? avatarUrl,
      String? leadingIcon,
      ActionModel? action,
    )?
    infoTile,
    TResult? Function(double thickness)? divider,
  }) {
    return button?.call(label, action, isPrimary);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String? subtitle)? title,
    TResult Function(double height)? spacer,
    TResult Function(String imageUrl, double height)? imageBanner,
    TResult Function(String label, ActionModel action, bool isPrimary)? button,
    TResult Function(
      String title,
      String? subtitle,
      String? imageUrl,
      ActionModel? action,
    )?
    card,
    TResult Function(List<ComponentModel> items, double height)? horizontalList,
    TResult Function(
      String title,
      String? subtitle,
      String? avatarUrl,
      String? leadingIcon,
      ActionModel? action,
    )?
    infoTile,
    TResult Function(double thickness)? divider,
    required TResult orElse(),
  }) {
    if (button != null) {
      return button(label, action, isPrimary);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TitleComponent value) title,
    required TResult Function(SpacerComponent value) spacer,
    required TResult Function(ImageBannerComponent value) imageBanner,
    required TResult Function(ButtonComponent value) button,
    required TResult Function(CardComponent value) card,
    required TResult Function(HorizontalListComponent value) horizontalList,
    required TResult Function(InfoTileComponent value) infoTile,
    required TResult Function(DividerComponent value) divider,
  }) {
    return button(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TitleComponent value)? title,
    TResult? Function(SpacerComponent value)? spacer,
    TResult? Function(ImageBannerComponent value)? imageBanner,
    TResult? Function(ButtonComponent value)? button,
    TResult? Function(CardComponent value)? card,
    TResult? Function(HorizontalListComponent value)? horizontalList,
    TResult? Function(InfoTileComponent value)? infoTile,
    TResult? Function(DividerComponent value)? divider,
  }) {
    return button?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TitleComponent value)? title,
    TResult Function(SpacerComponent value)? spacer,
    TResult Function(ImageBannerComponent value)? imageBanner,
    TResult Function(ButtonComponent value)? button,
    TResult Function(CardComponent value)? card,
    TResult Function(HorizontalListComponent value)? horizontalList,
    TResult Function(InfoTileComponent value)? infoTile,
    TResult Function(DividerComponent value)? divider,
    required TResult orElse(),
  }) {
    if (button != null) {
      return button(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ButtonComponentImplToJson(this);
  }
}

abstract class ButtonComponent implements ComponentModel {
  const factory ButtonComponent({
    required final String label,
    required final ActionModel action,
    final bool isPrimary,
  }) = _$ButtonComponentImpl;

  factory ButtonComponent.fromJson(Map<String, dynamic> json) =
      _$ButtonComponentImpl.fromJson;

  String get label;
  ActionModel get action;
  bool get isPrimary;

  /// Create a copy of ComponentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ButtonComponentImplCopyWith<_$ButtonComponentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CardComponentImplCopyWith<$Res> {
  factory _$$CardComponentImplCopyWith(
    _$CardComponentImpl value,
    $Res Function(_$CardComponentImpl) then,
  ) = __$$CardComponentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    String title,
    String? subtitle,
    String? imageUrl,
    ActionModel? action,
  });

  $ActionModelCopyWith<$Res>? get action;
}

/// @nodoc
class __$$CardComponentImplCopyWithImpl<$Res>
    extends _$ComponentModelCopyWithImpl<$Res, _$CardComponentImpl>
    implements _$$CardComponentImplCopyWith<$Res> {
  __$$CardComponentImplCopyWithImpl(
    _$CardComponentImpl _value,
    $Res Function(_$CardComponentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ComponentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subtitle = freezed,
    Object? imageUrl = freezed,
    Object? action = freezed,
  }) {
    return _then(
      _$CardComponentImpl(
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        subtitle: freezed == subtitle
            ? _value.subtitle
            : subtitle // ignore: cast_nullable_to_non_nullable
                  as String?,
        imageUrl: freezed == imageUrl
            ? _value.imageUrl
            : imageUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        action: freezed == action
            ? _value.action
            : action // ignore: cast_nullable_to_non_nullable
                  as ActionModel?,
      ),
    );
  }

  /// Create a copy of ComponentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ActionModelCopyWith<$Res>? get action {
    if (_value.action == null) {
      return null;
    }

    return $ActionModelCopyWith<$Res>(_value.action!, (value) {
      return _then(_value.copyWith(action: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$CardComponentImpl implements CardComponent {
  const _$CardComponentImpl({
    required this.title,
    this.subtitle,
    this.imageUrl,
    this.action,
    final String? $type,
  }) : $type = $type ?? 'card';

  factory _$CardComponentImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardComponentImplFromJson(json);

  @override
  final String title;
  @override
  final String? subtitle;
  @override
  final String? imageUrl;
  @override
  final ActionModel? action;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ComponentModel.card(title: $title, subtitle: $subtitle, imageUrl: $imageUrl, action: $action)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardComponentImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.action, action) || other.action == action));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, subtitle, imageUrl, action);

  /// Create a copy of ComponentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CardComponentImplCopyWith<_$CardComponentImpl> get copyWith =>
      __$$CardComponentImplCopyWithImpl<_$CardComponentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String? subtitle) title,
    required TResult Function(double height) spacer,
    required TResult Function(String imageUrl, double height) imageBanner,
    required TResult Function(String label, ActionModel action, bool isPrimary)
    button,
    required TResult Function(
      String title,
      String? subtitle,
      String? imageUrl,
      ActionModel? action,
    )
    card,
    required TResult Function(List<ComponentModel> items, double height)
    horizontalList,
    required TResult Function(
      String title,
      String? subtitle,
      String? avatarUrl,
      String? leadingIcon,
      ActionModel? action,
    )
    infoTile,
    required TResult Function(double thickness) divider,
  }) {
    return card(this.title, subtitle, imageUrl, action);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String? subtitle)? title,
    TResult? Function(double height)? spacer,
    TResult? Function(String imageUrl, double height)? imageBanner,
    TResult? Function(String label, ActionModel action, bool isPrimary)? button,
    TResult? Function(
      String title,
      String? subtitle,
      String? imageUrl,
      ActionModel? action,
    )?
    card,
    TResult? Function(List<ComponentModel> items, double height)?
    horizontalList,
    TResult? Function(
      String title,
      String? subtitle,
      String? avatarUrl,
      String? leadingIcon,
      ActionModel? action,
    )?
    infoTile,
    TResult? Function(double thickness)? divider,
  }) {
    return card?.call(this.title, subtitle, imageUrl, action);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String? subtitle)? title,
    TResult Function(double height)? spacer,
    TResult Function(String imageUrl, double height)? imageBanner,
    TResult Function(String label, ActionModel action, bool isPrimary)? button,
    TResult Function(
      String title,
      String? subtitle,
      String? imageUrl,
      ActionModel? action,
    )?
    card,
    TResult Function(List<ComponentModel> items, double height)? horizontalList,
    TResult Function(
      String title,
      String? subtitle,
      String? avatarUrl,
      String? leadingIcon,
      ActionModel? action,
    )?
    infoTile,
    TResult Function(double thickness)? divider,
    required TResult orElse(),
  }) {
    if (card != null) {
      return card(this.title, subtitle, imageUrl, action);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TitleComponent value) title,
    required TResult Function(SpacerComponent value) spacer,
    required TResult Function(ImageBannerComponent value) imageBanner,
    required TResult Function(ButtonComponent value) button,
    required TResult Function(CardComponent value) card,
    required TResult Function(HorizontalListComponent value) horizontalList,
    required TResult Function(InfoTileComponent value) infoTile,
    required TResult Function(DividerComponent value) divider,
  }) {
    return card(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TitleComponent value)? title,
    TResult? Function(SpacerComponent value)? spacer,
    TResult? Function(ImageBannerComponent value)? imageBanner,
    TResult? Function(ButtonComponent value)? button,
    TResult? Function(CardComponent value)? card,
    TResult? Function(HorizontalListComponent value)? horizontalList,
    TResult? Function(InfoTileComponent value)? infoTile,
    TResult? Function(DividerComponent value)? divider,
  }) {
    return card?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TitleComponent value)? title,
    TResult Function(SpacerComponent value)? spacer,
    TResult Function(ImageBannerComponent value)? imageBanner,
    TResult Function(ButtonComponent value)? button,
    TResult Function(CardComponent value)? card,
    TResult Function(HorizontalListComponent value)? horizontalList,
    TResult Function(InfoTileComponent value)? infoTile,
    TResult Function(DividerComponent value)? divider,
    required TResult orElse(),
  }) {
    if (card != null) {
      return card(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CardComponentImplToJson(this);
  }
}

abstract class CardComponent implements ComponentModel {
  const factory CardComponent({
    required final String title,
    final String? subtitle,
    final String? imageUrl,
    final ActionModel? action,
  }) = _$CardComponentImpl;

  factory CardComponent.fromJson(Map<String, dynamic> json) =
      _$CardComponentImpl.fromJson;

  String get title;
  String? get subtitle;
  String? get imageUrl;
  ActionModel? get action;

  /// Create a copy of ComponentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CardComponentImplCopyWith<_$CardComponentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HorizontalListComponentImplCopyWith<$Res> {
  factory _$$HorizontalListComponentImplCopyWith(
    _$HorizontalListComponentImpl value,
    $Res Function(_$HorizontalListComponentImpl) then,
  ) = __$$HorizontalListComponentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ComponentModel> items, double height});
}

/// @nodoc
class __$$HorizontalListComponentImplCopyWithImpl<$Res>
    extends _$ComponentModelCopyWithImpl<$Res, _$HorizontalListComponentImpl>
    implements _$$HorizontalListComponentImplCopyWith<$Res> {
  __$$HorizontalListComponentImplCopyWithImpl(
    _$HorizontalListComponentImpl _value,
    $Res Function(_$HorizontalListComponentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ComponentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null, Object? height = null}) {
    return _then(
      _$HorizontalListComponentImpl(
        items: null == items
            ? _value._items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<ComponentModel>,
        height: null == height
            ? _value.height
            : height // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HorizontalListComponentImpl implements HorizontalListComponent {
  const _$HorizontalListComponentImpl({
    required final List<ComponentModel> items,
    this.height = 120.0,
    final String? $type,
  }) : _items = items,
       $type = $type ?? 'horizontalList';

  factory _$HorizontalListComponentImpl.fromJson(Map<String, dynamic> json) =>
      _$$HorizontalListComponentImplFromJson(json);

  final List<ComponentModel> _items;
  @override
  List<ComponentModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey()
  final double height;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ComponentModel.horizontalList(items: $items, height: $height)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HorizontalListComponentImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_items),
    height,
  );

  /// Create a copy of ComponentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HorizontalListComponentImplCopyWith<_$HorizontalListComponentImpl>
  get copyWith =>
      __$$HorizontalListComponentImplCopyWithImpl<
        _$HorizontalListComponentImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String? subtitle) title,
    required TResult Function(double height) spacer,
    required TResult Function(String imageUrl, double height) imageBanner,
    required TResult Function(String label, ActionModel action, bool isPrimary)
    button,
    required TResult Function(
      String title,
      String? subtitle,
      String? imageUrl,
      ActionModel? action,
    )
    card,
    required TResult Function(List<ComponentModel> items, double height)
    horizontalList,
    required TResult Function(
      String title,
      String? subtitle,
      String? avatarUrl,
      String? leadingIcon,
      ActionModel? action,
    )
    infoTile,
    required TResult Function(double thickness) divider,
  }) {
    return horizontalList(items, height);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String? subtitle)? title,
    TResult? Function(double height)? spacer,
    TResult? Function(String imageUrl, double height)? imageBanner,
    TResult? Function(String label, ActionModel action, bool isPrimary)? button,
    TResult? Function(
      String title,
      String? subtitle,
      String? imageUrl,
      ActionModel? action,
    )?
    card,
    TResult? Function(List<ComponentModel> items, double height)?
    horizontalList,
    TResult? Function(
      String title,
      String? subtitle,
      String? avatarUrl,
      String? leadingIcon,
      ActionModel? action,
    )?
    infoTile,
    TResult? Function(double thickness)? divider,
  }) {
    return horizontalList?.call(items, height);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String? subtitle)? title,
    TResult Function(double height)? spacer,
    TResult Function(String imageUrl, double height)? imageBanner,
    TResult Function(String label, ActionModel action, bool isPrimary)? button,
    TResult Function(
      String title,
      String? subtitle,
      String? imageUrl,
      ActionModel? action,
    )?
    card,
    TResult Function(List<ComponentModel> items, double height)? horizontalList,
    TResult Function(
      String title,
      String? subtitle,
      String? avatarUrl,
      String? leadingIcon,
      ActionModel? action,
    )?
    infoTile,
    TResult Function(double thickness)? divider,
    required TResult orElse(),
  }) {
    if (horizontalList != null) {
      return horizontalList(items, height);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TitleComponent value) title,
    required TResult Function(SpacerComponent value) spacer,
    required TResult Function(ImageBannerComponent value) imageBanner,
    required TResult Function(ButtonComponent value) button,
    required TResult Function(CardComponent value) card,
    required TResult Function(HorizontalListComponent value) horizontalList,
    required TResult Function(InfoTileComponent value) infoTile,
    required TResult Function(DividerComponent value) divider,
  }) {
    return horizontalList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TitleComponent value)? title,
    TResult? Function(SpacerComponent value)? spacer,
    TResult? Function(ImageBannerComponent value)? imageBanner,
    TResult? Function(ButtonComponent value)? button,
    TResult? Function(CardComponent value)? card,
    TResult? Function(HorizontalListComponent value)? horizontalList,
    TResult? Function(InfoTileComponent value)? infoTile,
    TResult? Function(DividerComponent value)? divider,
  }) {
    return horizontalList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TitleComponent value)? title,
    TResult Function(SpacerComponent value)? spacer,
    TResult Function(ImageBannerComponent value)? imageBanner,
    TResult Function(ButtonComponent value)? button,
    TResult Function(CardComponent value)? card,
    TResult Function(HorizontalListComponent value)? horizontalList,
    TResult Function(InfoTileComponent value)? infoTile,
    TResult Function(DividerComponent value)? divider,
    required TResult orElse(),
  }) {
    if (horizontalList != null) {
      return horizontalList(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$HorizontalListComponentImplToJson(this);
  }
}

abstract class HorizontalListComponent implements ComponentModel {
  const factory HorizontalListComponent({
    required final List<ComponentModel> items,
    final double height,
  }) = _$HorizontalListComponentImpl;

  factory HorizontalListComponent.fromJson(Map<String, dynamic> json) =
      _$HorizontalListComponentImpl.fromJson;

  List<ComponentModel> get items;
  double get height;

  /// Create a copy of ComponentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HorizontalListComponentImplCopyWith<_$HorizontalListComponentImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InfoTileComponentImplCopyWith<$Res> {
  factory _$$InfoTileComponentImplCopyWith(
    _$InfoTileComponentImpl value,
    $Res Function(_$InfoTileComponentImpl) then,
  ) = __$$InfoTileComponentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    String title,
    String? subtitle,
    String? avatarUrl,
    String? leadingIcon,
    ActionModel? action,
  });

  $ActionModelCopyWith<$Res>? get action;
}

/// @nodoc
class __$$InfoTileComponentImplCopyWithImpl<$Res>
    extends _$ComponentModelCopyWithImpl<$Res, _$InfoTileComponentImpl>
    implements _$$InfoTileComponentImplCopyWith<$Res> {
  __$$InfoTileComponentImplCopyWithImpl(
    _$InfoTileComponentImpl _value,
    $Res Function(_$InfoTileComponentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ComponentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subtitle = freezed,
    Object? avatarUrl = freezed,
    Object? leadingIcon = freezed,
    Object? action = freezed,
  }) {
    return _then(
      _$InfoTileComponentImpl(
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        subtitle: freezed == subtitle
            ? _value.subtitle
            : subtitle // ignore: cast_nullable_to_non_nullable
                  as String?,
        avatarUrl: freezed == avatarUrl
            ? _value.avatarUrl
            : avatarUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        leadingIcon: freezed == leadingIcon
            ? _value.leadingIcon
            : leadingIcon // ignore: cast_nullable_to_non_nullable
                  as String?,
        action: freezed == action
            ? _value.action
            : action // ignore: cast_nullable_to_non_nullable
                  as ActionModel?,
      ),
    );
  }

  /// Create a copy of ComponentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ActionModelCopyWith<$Res>? get action {
    if (_value.action == null) {
      return null;
    }

    return $ActionModelCopyWith<$Res>(_value.action!, (value) {
      return _then(_value.copyWith(action: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$InfoTileComponentImpl implements InfoTileComponent {
  const _$InfoTileComponentImpl({
    required this.title,
    this.subtitle,
    this.avatarUrl,
    this.leadingIcon,
    this.action,
    final String? $type,
  }) : $type = $type ?? 'infoTile';

  factory _$InfoTileComponentImpl.fromJson(Map<String, dynamic> json) =>
      _$$InfoTileComponentImplFromJson(json);

  @override
  final String title;
  @override
  final String? subtitle;
  @override
  final String? avatarUrl;
  @override
  final String? leadingIcon;
  @override
  final ActionModel? action;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ComponentModel.infoTile(title: $title, subtitle: $subtitle, avatarUrl: $avatarUrl, leadingIcon: $leadingIcon, action: $action)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InfoTileComponentImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.leadingIcon, leadingIcon) ||
                other.leadingIcon == leadingIcon) &&
            (identical(other.action, action) || other.action == action));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, subtitle, avatarUrl, leadingIcon, action);

  /// Create a copy of ComponentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InfoTileComponentImplCopyWith<_$InfoTileComponentImpl> get copyWith =>
      __$$InfoTileComponentImplCopyWithImpl<_$InfoTileComponentImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String? subtitle) title,
    required TResult Function(double height) spacer,
    required TResult Function(String imageUrl, double height) imageBanner,
    required TResult Function(String label, ActionModel action, bool isPrimary)
    button,
    required TResult Function(
      String title,
      String? subtitle,
      String? imageUrl,
      ActionModel? action,
    )
    card,
    required TResult Function(List<ComponentModel> items, double height)
    horizontalList,
    required TResult Function(
      String title,
      String? subtitle,
      String? avatarUrl,
      String? leadingIcon,
      ActionModel? action,
    )
    infoTile,
    required TResult Function(double thickness) divider,
  }) {
    return infoTile(this.title, subtitle, avatarUrl, leadingIcon, action);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String? subtitle)? title,
    TResult? Function(double height)? spacer,
    TResult? Function(String imageUrl, double height)? imageBanner,
    TResult? Function(String label, ActionModel action, bool isPrimary)? button,
    TResult? Function(
      String title,
      String? subtitle,
      String? imageUrl,
      ActionModel? action,
    )?
    card,
    TResult? Function(List<ComponentModel> items, double height)?
    horizontalList,
    TResult? Function(
      String title,
      String? subtitle,
      String? avatarUrl,
      String? leadingIcon,
      ActionModel? action,
    )?
    infoTile,
    TResult? Function(double thickness)? divider,
  }) {
    return infoTile?.call(this.title, subtitle, avatarUrl, leadingIcon, action);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String? subtitle)? title,
    TResult Function(double height)? spacer,
    TResult Function(String imageUrl, double height)? imageBanner,
    TResult Function(String label, ActionModel action, bool isPrimary)? button,
    TResult Function(
      String title,
      String? subtitle,
      String? imageUrl,
      ActionModel? action,
    )?
    card,
    TResult Function(List<ComponentModel> items, double height)? horizontalList,
    TResult Function(
      String title,
      String? subtitle,
      String? avatarUrl,
      String? leadingIcon,
      ActionModel? action,
    )?
    infoTile,
    TResult Function(double thickness)? divider,
    required TResult orElse(),
  }) {
    if (infoTile != null) {
      return infoTile(this.title, subtitle, avatarUrl, leadingIcon, action);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TitleComponent value) title,
    required TResult Function(SpacerComponent value) spacer,
    required TResult Function(ImageBannerComponent value) imageBanner,
    required TResult Function(ButtonComponent value) button,
    required TResult Function(CardComponent value) card,
    required TResult Function(HorizontalListComponent value) horizontalList,
    required TResult Function(InfoTileComponent value) infoTile,
    required TResult Function(DividerComponent value) divider,
  }) {
    return infoTile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TitleComponent value)? title,
    TResult? Function(SpacerComponent value)? spacer,
    TResult? Function(ImageBannerComponent value)? imageBanner,
    TResult? Function(ButtonComponent value)? button,
    TResult? Function(CardComponent value)? card,
    TResult? Function(HorizontalListComponent value)? horizontalList,
    TResult? Function(InfoTileComponent value)? infoTile,
    TResult? Function(DividerComponent value)? divider,
  }) {
    return infoTile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TitleComponent value)? title,
    TResult Function(SpacerComponent value)? spacer,
    TResult Function(ImageBannerComponent value)? imageBanner,
    TResult Function(ButtonComponent value)? button,
    TResult Function(CardComponent value)? card,
    TResult Function(HorizontalListComponent value)? horizontalList,
    TResult Function(InfoTileComponent value)? infoTile,
    TResult Function(DividerComponent value)? divider,
    required TResult orElse(),
  }) {
    if (infoTile != null) {
      return infoTile(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InfoTileComponentImplToJson(this);
  }
}

abstract class InfoTileComponent implements ComponentModel {
  const factory InfoTileComponent({
    required final String title,
    final String? subtitle,
    final String? avatarUrl,
    final String? leadingIcon,
    final ActionModel? action,
  }) = _$InfoTileComponentImpl;

  factory InfoTileComponent.fromJson(Map<String, dynamic> json) =
      _$InfoTileComponentImpl.fromJson;

  String get title;
  String? get subtitle;
  String? get avatarUrl;
  String? get leadingIcon;
  ActionModel? get action;

  /// Create a copy of ComponentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InfoTileComponentImplCopyWith<_$InfoTileComponentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DividerComponentImplCopyWith<$Res> {
  factory _$$DividerComponentImplCopyWith(
    _$DividerComponentImpl value,
    $Res Function(_$DividerComponentImpl) then,
  ) = __$$DividerComponentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double thickness});
}

/// @nodoc
class __$$DividerComponentImplCopyWithImpl<$Res>
    extends _$ComponentModelCopyWithImpl<$Res, _$DividerComponentImpl>
    implements _$$DividerComponentImplCopyWith<$Res> {
  __$$DividerComponentImplCopyWithImpl(
    _$DividerComponentImpl _value,
    $Res Function(_$DividerComponentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ComponentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? thickness = null}) {
    return _then(
      _$DividerComponentImpl(
        thickness: null == thickness
            ? _value.thickness
            : thickness // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DividerComponentImpl implements DividerComponent {
  const _$DividerComponentImpl({this.thickness = 1.0, final String? $type})
    : $type = $type ?? 'divider';

  factory _$DividerComponentImpl.fromJson(Map<String, dynamic> json) =>
      _$$DividerComponentImplFromJson(json);

  @override
  @JsonKey()
  final double thickness;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ComponentModel.divider(thickness: $thickness)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DividerComponentImpl &&
            (identical(other.thickness, thickness) ||
                other.thickness == thickness));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, thickness);

  /// Create a copy of ComponentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DividerComponentImplCopyWith<_$DividerComponentImpl> get copyWith =>
      __$$DividerComponentImplCopyWithImpl<_$DividerComponentImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String? subtitle) title,
    required TResult Function(double height) spacer,
    required TResult Function(String imageUrl, double height) imageBanner,
    required TResult Function(String label, ActionModel action, bool isPrimary)
    button,
    required TResult Function(
      String title,
      String? subtitle,
      String? imageUrl,
      ActionModel? action,
    )
    card,
    required TResult Function(List<ComponentModel> items, double height)
    horizontalList,
    required TResult Function(
      String title,
      String? subtitle,
      String? avatarUrl,
      String? leadingIcon,
      ActionModel? action,
    )
    infoTile,
    required TResult Function(double thickness) divider,
  }) {
    return divider(thickness);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String? subtitle)? title,
    TResult? Function(double height)? spacer,
    TResult? Function(String imageUrl, double height)? imageBanner,
    TResult? Function(String label, ActionModel action, bool isPrimary)? button,
    TResult? Function(
      String title,
      String? subtitle,
      String? imageUrl,
      ActionModel? action,
    )?
    card,
    TResult? Function(List<ComponentModel> items, double height)?
    horizontalList,
    TResult? Function(
      String title,
      String? subtitle,
      String? avatarUrl,
      String? leadingIcon,
      ActionModel? action,
    )?
    infoTile,
    TResult? Function(double thickness)? divider,
  }) {
    return divider?.call(thickness);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String? subtitle)? title,
    TResult Function(double height)? spacer,
    TResult Function(String imageUrl, double height)? imageBanner,
    TResult Function(String label, ActionModel action, bool isPrimary)? button,
    TResult Function(
      String title,
      String? subtitle,
      String? imageUrl,
      ActionModel? action,
    )?
    card,
    TResult Function(List<ComponentModel> items, double height)? horizontalList,
    TResult Function(
      String title,
      String? subtitle,
      String? avatarUrl,
      String? leadingIcon,
      ActionModel? action,
    )?
    infoTile,
    TResult Function(double thickness)? divider,
    required TResult orElse(),
  }) {
    if (divider != null) {
      return divider(thickness);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TitleComponent value) title,
    required TResult Function(SpacerComponent value) spacer,
    required TResult Function(ImageBannerComponent value) imageBanner,
    required TResult Function(ButtonComponent value) button,
    required TResult Function(CardComponent value) card,
    required TResult Function(HorizontalListComponent value) horizontalList,
    required TResult Function(InfoTileComponent value) infoTile,
    required TResult Function(DividerComponent value) divider,
  }) {
    return divider(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TitleComponent value)? title,
    TResult? Function(SpacerComponent value)? spacer,
    TResult? Function(ImageBannerComponent value)? imageBanner,
    TResult? Function(ButtonComponent value)? button,
    TResult? Function(CardComponent value)? card,
    TResult? Function(HorizontalListComponent value)? horizontalList,
    TResult? Function(InfoTileComponent value)? infoTile,
    TResult? Function(DividerComponent value)? divider,
  }) {
    return divider?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TitleComponent value)? title,
    TResult Function(SpacerComponent value)? spacer,
    TResult Function(ImageBannerComponent value)? imageBanner,
    TResult Function(ButtonComponent value)? button,
    TResult Function(CardComponent value)? card,
    TResult Function(HorizontalListComponent value)? horizontalList,
    TResult Function(InfoTileComponent value)? infoTile,
    TResult Function(DividerComponent value)? divider,
    required TResult orElse(),
  }) {
    if (divider != null) {
      return divider(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DividerComponentImplToJson(this);
  }
}

abstract class DividerComponent implements ComponentModel {
  const factory DividerComponent({final double thickness}) =
      _$DividerComponentImpl;

  factory DividerComponent.fromJson(Map<String, dynamic> json) =
      _$DividerComponentImpl.fromJson;

  double get thickness;

  /// Create a copy of ComponentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DividerComponentImplCopyWith<_$DividerComponentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
