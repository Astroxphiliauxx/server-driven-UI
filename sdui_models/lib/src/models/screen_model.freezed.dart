// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'screen_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ScreenModel _$ScreenModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'vertical':
      return VerticalScreenModel.fromJson(json);
    case 'error':
      return ErrorScreenModel.fromJson(json);

    default:
      throw CheckedFromJsonException(
        json,
        'runtimeType',
        'ScreenModel',
        'Invalid union type "${json['runtimeType']}"!',
      );
  }
}

/// @nodoc
mixin _$ScreenModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String screenTitle,
      List<ComponentModel> components,
    )
    vertical,
    required TResult Function(
      String errorMessage,
      String? errorCode,
      ActionModel? retryAction,
    )
    error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String screenTitle, List<ComponentModel> components)?
    vertical,
    TResult? Function(
      String errorMessage,
      String? errorCode,
      ActionModel? retryAction,
    )?
    error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String screenTitle, List<ComponentModel> components)?
    vertical,
    TResult Function(
      String errorMessage,
      String? errorCode,
      ActionModel? retryAction,
    )?
    error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerticalScreenModel value) vertical,
    required TResult Function(ErrorScreenModel value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VerticalScreenModel value)? vertical,
    TResult? Function(ErrorScreenModel value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerticalScreenModel value)? vertical,
    TResult Function(ErrorScreenModel value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Serializes this ScreenModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScreenModelCopyWith<$Res> {
  factory $ScreenModelCopyWith(
    ScreenModel value,
    $Res Function(ScreenModel) then,
  ) = _$ScreenModelCopyWithImpl<$Res, ScreenModel>;
}

/// @nodoc
class _$ScreenModelCopyWithImpl<$Res, $Val extends ScreenModel>
    implements $ScreenModelCopyWith<$Res> {
  _$ScreenModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScreenModel
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$VerticalScreenModelImplCopyWith<$Res> {
  factory _$$VerticalScreenModelImplCopyWith(
    _$VerticalScreenModelImpl value,
    $Res Function(_$VerticalScreenModelImpl) then,
  ) = __$$VerticalScreenModelImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String screenTitle, List<ComponentModel> components});
}

/// @nodoc
class __$$VerticalScreenModelImplCopyWithImpl<$Res>
    extends _$ScreenModelCopyWithImpl<$Res, _$VerticalScreenModelImpl>
    implements _$$VerticalScreenModelImplCopyWith<$Res> {
  __$$VerticalScreenModelImplCopyWithImpl(
    _$VerticalScreenModelImpl _value,
    $Res Function(_$VerticalScreenModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ScreenModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? screenTitle = null, Object? components = null}) {
    return _then(
      _$VerticalScreenModelImpl(
        screenTitle: null == screenTitle
            ? _value.screenTitle
            : screenTitle // ignore: cast_nullable_to_non_nullable
                  as String,
        components: null == components
            ? _value._components
            : components // ignore: cast_nullable_to_non_nullable
                  as List<ComponentModel>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$VerticalScreenModelImpl implements VerticalScreenModel {
  const _$VerticalScreenModelImpl({
    required this.screenTitle,
    required final List<ComponentModel> components,
    final String? $type,
  }) : _components = components,
       $type = $type ?? 'vertical';

  factory _$VerticalScreenModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerticalScreenModelImplFromJson(json);

  @override
  final String screenTitle;
  final List<ComponentModel> _components;
  @override
  List<ComponentModel> get components {
    if (_components is EqualUnmodifiableListView) return _components;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_components);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ScreenModel.vertical(screenTitle: $screenTitle, components: $components)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerticalScreenModelImpl &&
            (identical(other.screenTitle, screenTitle) ||
                other.screenTitle == screenTitle) &&
            const DeepCollectionEquality().equals(
              other._components,
              _components,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    screenTitle,
    const DeepCollectionEquality().hash(_components),
  );

  /// Create a copy of ScreenModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerticalScreenModelImplCopyWith<_$VerticalScreenModelImpl> get copyWith =>
      __$$VerticalScreenModelImplCopyWithImpl<_$VerticalScreenModelImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String screenTitle,
      List<ComponentModel> components,
    )
    vertical,
    required TResult Function(
      String errorMessage,
      String? errorCode,
      ActionModel? retryAction,
    )
    error,
  }) {
    return vertical(screenTitle, components);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String screenTitle, List<ComponentModel> components)?
    vertical,
    TResult? Function(
      String errorMessage,
      String? errorCode,
      ActionModel? retryAction,
    )?
    error,
  }) {
    return vertical?.call(screenTitle, components);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String screenTitle, List<ComponentModel> components)?
    vertical,
    TResult Function(
      String errorMessage,
      String? errorCode,
      ActionModel? retryAction,
    )?
    error,
    required TResult orElse(),
  }) {
    if (vertical != null) {
      return vertical(screenTitle, components);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerticalScreenModel value) vertical,
    required TResult Function(ErrorScreenModel value) error,
  }) {
    return vertical(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VerticalScreenModel value)? vertical,
    TResult? Function(ErrorScreenModel value)? error,
  }) {
    return vertical?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerticalScreenModel value)? vertical,
    TResult Function(ErrorScreenModel value)? error,
    required TResult orElse(),
  }) {
    if (vertical != null) {
      return vertical(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$VerticalScreenModelImplToJson(this);
  }
}

abstract class VerticalScreenModel implements ScreenModel {
  const factory VerticalScreenModel({
    required final String screenTitle,
    required final List<ComponentModel> components,
  }) = _$VerticalScreenModelImpl;

  factory VerticalScreenModel.fromJson(Map<String, dynamic> json) =
      _$VerticalScreenModelImpl.fromJson;

  String get screenTitle;
  List<ComponentModel> get components;

  /// Create a copy of ScreenModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerticalScreenModelImplCopyWith<_$VerticalScreenModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorScreenModelImplCopyWith<$Res> {
  factory _$$ErrorScreenModelImplCopyWith(
    _$ErrorScreenModelImpl value,
    $Res Function(_$ErrorScreenModelImpl) then,
  ) = __$$ErrorScreenModelImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage, String? errorCode, ActionModel? retryAction});

  $ActionModelCopyWith<$Res>? get retryAction;
}

/// @nodoc
class __$$ErrorScreenModelImplCopyWithImpl<$Res>
    extends _$ScreenModelCopyWithImpl<$Res, _$ErrorScreenModelImpl>
    implements _$$ErrorScreenModelImplCopyWith<$Res> {
  __$$ErrorScreenModelImplCopyWithImpl(
    _$ErrorScreenModelImpl _value,
    $Res Function(_$ErrorScreenModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ScreenModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
    Object? errorCode = freezed,
    Object? retryAction = freezed,
  }) {
    return _then(
      _$ErrorScreenModelImpl(
        errorMessage: null == errorMessage
            ? _value.errorMessage
            : errorMessage // ignore: cast_nullable_to_non_nullable
                  as String,
        errorCode: freezed == errorCode
            ? _value.errorCode
            : errorCode // ignore: cast_nullable_to_non_nullable
                  as String?,
        retryAction: freezed == retryAction
            ? _value.retryAction
            : retryAction // ignore: cast_nullable_to_non_nullable
                  as ActionModel?,
      ),
    );
  }

  /// Create a copy of ScreenModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ActionModelCopyWith<$Res>? get retryAction {
    if (_value.retryAction == null) {
      return null;
    }

    return $ActionModelCopyWith<$Res>(_value.retryAction!, (value) {
      return _then(_value.copyWith(retryAction: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorScreenModelImpl implements ErrorScreenModel {
  const _$ErrorScreenModelImpl({
    required this.errorMessage,
    this.errorCode,
    this.retryAction,
    final String? $type,
  }) : $type = $type ?? 'error';

  factory _$ErrorScreenModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorScreenModelImplFromJson(json);

  @override
  final String errorMessage;
  @override
  final String? errorCode;
  @override
  final ActionModel? retryAction;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ScreenModel.error(errorMessage: $errorMessage, errorCode: $errorCode, retryAction: $retryAction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorScreenModelImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.retryAction, retryAction) ||
                other.retryAction == retryAction));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, errorMessage, errorCode, retryAction);

  /// Create a copy of ScreenModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorScreenModelImplCopyWith<_$ErrorScreenModelImpl> get copyWith =>
      __$$ErrorScreenModelImplCopyWithImpl<_$ErrorScreenModelImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String screenTitle,
      List<ComponentModel> components,
    )
    vertical,
    required TResult Function(
      String errorMessage,
      String? errorCode,
      ActionModel? retryAction,
    )
    error,
  }) {
    return error(errorMessage, errorCode, retryAction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String screenTitle, List<ComponentModel> components)?
    vertical,
    TResult? Function(
      String errorMessage,
      String? errorCode,
      ActionModel? retryAction,
    )?
    error,
  }) {
    return error?.call(errorMessage, errorCode, retryAction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String screenTitle, List<ComponentModel> components)?
    vertical,
    TResult Function(
      String errorMessage,
      String? errorCode,
      ActionModel? retryAction,
    )?
    error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage, errorCode, retryAction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerticalScreenModel value) vertical,
    required TResult Function(ErrorScreenModel value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VerticalScreenModel value)? vertical,
    TResult? Function(ErrorScreenModel value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerticalScreenModel value)? vertical,
    TResult Function(ErrorScreenModel value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorScreenModelImplToJson(this);
  }
}

abstract class ErrorScreenModel implements ScreenModel {
  const factory ErrorScreenModel({
    required final String errorMessage,
    final String? errorCode,
    final ActionModel? retryAction,
  }) = _$ErrorScreenModelImpl;

  factory ErrorScreenModel.fromJson(Map<String, dynamic> json) =
      _$ErrorScreenModelImpl.fromJson;

  String get errorMessage;
  String? get errorCode;
  ActionModel? get retryAction;

  /// Create a copy of ScreenModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorScreenModelImplCopyWith<_$ErrorScreenModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
