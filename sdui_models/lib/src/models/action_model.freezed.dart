// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'action_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ActionModel _$ActionModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'navigate':
      return NavigateAction.fromJson(json);
    case 'goBack':
      return GoBackAction.fromJson(json);
    case 'showSnackbar':
      return ShowSnackbarAction.fromJson(json);
    case 'openUrl':
      return OpenUrlAction.fromJson(json);
    case 'logEvent':
      return LogEventAction.fromJson(json);

    default:
      throw CheckedFromJsonException(
        json,
        'runtimeType',
        'ActionModel',
        'Invalid union type "${json['runtimeType']}"!',
      );
  }
}

/// @nodoc
mixin _$ActionModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String destination) navigate,
    required TResult Function() goBack,
    required TResult Function(String message) showSnackbar,
    required TResult Function(String url) openUrl,
    required TResult Function(String eventName, Map<String, dynamic>? params)
    logEvent,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String destination)? navigate,
    TResult? Function()? goBack,
    TResult? Function(String message)? showSnackbar,
    TResult? Function(String url)? openUrl,
    TResult? Function(String eventName, Map<String, dynamic>? params)? logEvent,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String destination)? navigate,
    TResult Function()? goBack,
    TResult Function(String message)? showSnackbar,
    TResult Function(String url)? openUrl,
    TResult Function(String eventName, Map<String, dynamic>? params)? logEvent,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateAction value) navigate,
    required TResult Function(GoBackAction value) goBack,
    required TResult Function(ShowSnackbarAction value) showSnackbar,
    required TResult Function(OpenUrlAction value) openUrl,
    required TResult Function(LogEventAction value) logEvent,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavigateAction value)? navigate,
    TResult? Function(GoBackAction value)? goBack,
    TResult? Function(ShowSnackbarAction value)? showSnackbar,
    TResult? Function(OpenUrlAction value)? openUrl,
    TResult? Function(LogEventAction value)? logEvent,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateAction value)? navigate,
    TResult Function(GoBackAction value)? goBack,
    TResult Function(ShowSnackbarAction value)? showSnackbar,
    TResult Function(OpenUrlAction value)? openUrl,
    TResult Function(LogEventAction value)? logEvent,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Serializes this ActionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActionModelCopyWith<$Res> {
  factory $ActionModelCopyWith(
    ActionModel value,
    $Res Function(ActionModel) then,
  ) = _$ActionModelCopyWithImpl<$Res, ActionModel>;
}

/// @nodoc
class _$ActionModelCopyWithImpl<$Res, $Val extends ActionModel>
    implements $ActionModelCopyWith<$Res> {
  _$ActionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActionModel
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NavigateActionImplCopyWith<$Res> {
  factory _$$NavigateActionImplCopyWith(
    _$NavigateActionImpl value,
    $Res Function(_$NavigateActionImpl) then,
  ) = __$$NavigateActionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String destination});
}

/// @nodoc
class __$$NavigateActionImplCopyWithImpl<$Res>
    extends _$ActionModelCopyWithImpl<$Res, _$NavigateActionImpl>
    implements _$$NavigateActionImplCopyWith<$Res> {
  __$$NavigateActionImplCopyWithImpl(
    _$NavigateActionImpl _value,
    $Res Function(_$NavigateActionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ActionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? destination = null}) {
    return _then(
      _$NavigateActionImpl(
        destination: null == destination
            ? _value.destination
            : destination // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$NavigateActionImpl implements NavigateAction {
  const _$NavigateActionImpl({required this.destination, final String? $type})
    : $type = $type ?? 'navigate';

  factory _$NavigateActionImpl.fromJson(Map<String, dynamic> json) =>
      _$$NavigateActionImplFromJson(json);

  @override
  final String destination;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ActionModel.navigate(destination: $destination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigateActionImpl &&
            (identical(other.destination, destination) ||
                other.destination == destination));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, destination);

  /// Create a copy of ActionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigateActionImplCopyWith<_$NavigateActionImpl> get copyWith =>
      __$$NavigateActionImplCopyWithImpl<_$NavigateActionImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String destination) navigate,
    required TResult Function() goBack,
    required TResult Function(String message) showSnackbar,
    required TResult Function(String url) openUrl,
    required TResult Function(String eventName, Map<String, dynamic>? params)
    logEvent,
  }) {
    return navigate(destination);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String destination)? navigate,
    TResult? Function()? goBack,
    TResult? Function(String message)? showSnackbar,
    TResult? Function(String url)? openUrl,
    TResult? Function(String eventName, Map<String, dynamic>? params)? logEvent,
  }) {
    return navigate?.call(destination);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String destination)? navigate,
    TResult Function()? goBack,
    TResult Function(String message)? showSnackbar,
    TResult Function(String url)? openUrl,
    TResult Function(String eventName, Map<String, dynamic>? params)? logEvent,
    required TResult orElse(),
  }) {
    if (navigate != null) {
      return navigate(destination);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateAction value) navigate,
    required TResult Function(GoBackAction value) goBack,
    required TResult Function(ShowSnackbarAction value) showSnackbar,
    required TResult Function(OpenUrlAction value) openUrl,
    required TResult Function(LogEventAction value) logEvent,
  }) {
    return navigate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavigateAction value)? navigate,
    TResult? Function(GoBackAction value)? goBack,
    TResult? Function(ShowSnackbarAction value)? showSnackbar,
    TResult? Function(OpenUrlAction value)? openUrl,
    TResult? Function(LogEventAction value)? logEvent,
  }) {
    return navigate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateAction value)? navigate,
    TResult Function(GoBackAction value)? goBack,
    TResult Function(ShowSnackbarAction value)? showSnackbar,
    TResult Function(OpenUrlAction value)? openUrl,
    TResult Function(LogEventAction value)? logEvent,
    required TResult orElse(),
  }) {
    if (navigate != null) {
      return navigate(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NavigateActionImplToJson(this);
  }
}

abstract class NavigateAction implements ActionModel {
  const factory NavigateAction({required final String destination}) =
      _$NavigateActionImpl;

  factory NavigateAction.fromJson(Map<String, dynamic> json) =
      _$NavigateActionImpl.fromJson;

  String get destination;

  /// Create a copy of ActionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NavigateActionImplCopyWith<_$NavigateActionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GoBackActionImplCopyWith<$Res> {
  factory _$$GoBackActionImplCopyWith(
    _$GoBackActionImpl value,
    $Res Function(_$GoBackActionImpl) then,
  ) = __$$GoBackActionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoBackActionImplCopyWithImpl<$Res>
    extends _$ActionModelCopyWithImpl<$Res, _$GoBackActionImpl>
    implements _$$GoBackActionImplCopyWith<$Res> {
  __$$GoBackActionImplCopyWithImpl(
    _$GoBackActionImpl _value,
    $Res Function(_$GoBackActionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ActionModel
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$GoBackActionImpl implements GoBackAction {
  const _$GoBackActionImpl({final String? $type}) : $type = $type ?? 'goBack';

  factory _$GoBackActionImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoBackActionImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ActionModel.goBack()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GoBackActionImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String destination) navigate,
    required TResult Function() goBack,
    required TResult Function(String message) showSnackbar,
    required TResult Function(String url) openUrl,
    required TResult Function(String eventName, Map<String, dynamic>? params)
    logEvent,
  }) {
    return goBack();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String destination)? navigate,
    TResult? Function()? goBack,
    TResult? Function(String message)? showSnackbar,
    TResult? Function(String url)? openUrl,
    TResult? Function(String eventName, Map<String, dynamic>? params)? logEvent,
  }) {
    return goBack?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String destination)? navigate,
    TResult Function()? goBack,
    TResult Function(String message)? showSnackbar,
    TResult Function(String url)? openUrl,
    TResult Function(String eventName, Map<String, dynamic>? params)? logEvent,
    required TResult orElse(),
  }) {
    if (goBack != null) {
      return goBack();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateAction value) navigate,
    required TResult Function(GoBackAction value) goBack,
    required TResult Function(ShowSnackbarAction value) showSnackbar,
    required TResult Function(OpenUrlAction value) openUrl,
    required TResult Function(LogEventAction value) logEvent,
  }) {
    return goBack(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavigateAction value)? navigate,
    TResult? Function(GoBackAction value)? goBack,
    TResult? Function(ShowSnackbarAction value)? showSnackbar,
    TResult? Function(OpenUrlAction value)? openUrl,
    TResult? Function(LogEventAction value)? logEvent,
  }) {
    return goBack?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateAction value)? navigate,
    TResult Function(GoBackAction value)? goBack,
    TResult Function(ShowSnackbarAction value)? showSnackbar,
    TResult Function(OpenUrlAction value)? openUrl,
    TResult Function(LogEventAction value)? logEvent,
    required TResult orElse(),
  }) {
    if (goBack != null) {
      return goBack(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$GoBackActionImplToJson(this);
  }
}

abstract class GoBackAction implements ActionModel {
  const factory GoBackAction() = _$GoBackActionImpl;

  factory GoBackAction.fromJson(Map<String, dynamic> json) =
      _$GoBackActionImpl.fromJson;
}

/// @nodoc
abstract class _$$ShowSnackbarActionImplCopyWith<$Res> {
  factory _$$ShowSnackbarActionImplCopyWith(
    _$ShowSnackbarActionImpl value,
    $Res Function(_$ShowSnackbarActionImpl) then,
  ) = __$$ShowSnackbarActionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ShowSnackbarActionImplCopyWithImpl<$Res>
    extends _$ActionModelCopyWithImpl<$Res, _$ShowSnackbarActionImpl>
    implements _$$ShowSnackbarActionImplCopyWith<$Res> {
  __$$ShowSnackbarActionImplCopyWithImpl(
    _$ShowSnackbarActionImpl _value,
    $Res Function(_$ShowSnackbarActionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ActionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$ShowSnackbarActionImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ShowSnackbarActionImpl implements ShowSnackbarAction {
  const _$ShowSnackbarActionImpl({required this.message, final String? $type})
    : $type = $type ?? 'showSnackbar';

  factory _$ShowSnackbarActionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShowSnackbarActionImplFromJson(json);

  @override
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ActionModel.showSnackbar(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowSnackbarActionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ActionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowSnackbarActionImplCopyWith<_$ShowSnackbarActionImpl> get copyWith =>
      __$$ShowSnackbarActionImplCopyWithImpl<_$ShowSnackbarActionImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String destination) navigate,
    required TResult Function() goBack,
    required TResult Function(String message) showSnackbar,
    required TResult Function(String url) openUrl,
    required TResult Function(String eventName, Map<String, dynamic>? params)
    logEvent,
  }) {
    return showSnackbar(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String destination)? navigate,
    TResult? Function()? goBack,
    TResult? Function(String message)? showSnackbar,
    TResult? Function(String url)? openUrl,
    TResult? Function(String eventName, Map<String, dynamic>? params)? logEvent,
  }) {
    return showSnackbar?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String destination)? navigate,
    TResult Function()? goBack,
    TResult Function(String message)? showSnackbar,
    TResult Function(String url)? openUrl,
    TResult Function(String eventName, Map<String, dynamic>? params)? logEvent,
    required TResult orElse(),
  }) {
    if (showSnackbar != null) {
      return showSnackbar(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateAction value) navigate,
    required TResult Function(GoBackAction value) goBack,
    required TResult Function(ShowSnackbarAction value) showSnackbar,
    required TResult Function(OpenUrlAction value) openUrl,
    required TResult Function(LogEventAction value) logEvent,
  }) {
    return showSnackbar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavigateAction value)? navigate,
    TResult? Function(GoBackAction value)? goBack,
    TResult? Function(ShowSnackbarAction value)? showSnackbar,
    TResult? Function(OpenUrlAction value)? openUrl,
    TResult? Function(LogEventAction value)? logEvent,
  }) {
    return showSnackbar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateAction value)? navigate,
    TResult Function(GoBackAction value)? goBack,
    TResult Function(ShowSnackbarAction value)? showSnackbar,
    TResult Function(OpenUrlAction value)? openUrl,
    TResult Function(LogEventAction value)? logEvent,
    required TResult orElse(),
  }) {
    if (showSnackbar != null) {
      return showSnackbar(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ShowSnackbarActionImplToJson(this);
  }
}

abstract class ShowSnackbarAction implements ActionModel {
  const factory ShowSnackbarAction({required final String message}) =
      _$ShowSnackbarActionImpl;

  factory ShowSnackbarAction.fromJson(Map<String, dynamic> json) =
      _$ShowSnackbarActionImpl.fromJson;

  String get message;

  /// Create a copy of ActionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShowSnackbarActionImplCopyWith<_$ShowSnackbarActionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OpenUrlActionImplCopyWith<$Res> {
  factory _$$OpenUrlActionImplCopyWith(
    _$OpenUrlActionImpl value,
    $Res Function(_$OpenUrlActionImpl) then,
  ) = __$$OpenUrlActionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$OpenUrlActionImplCopyWithImpl<$Res>
    extends _$ActionModelCopyWithImpl<$Res, _$OpenUrlActionImpl>
    implements _$$OpenUrlActionImplCopyWith<$Res> {
  __$$OpenUrlActionImplCopyWithImpl(
    _$OpenUrlActionImpl _value,
    $Res Function(_$OpenUrlActionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ActionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? url = null}) {
    return _then(
      _$OpenUrlActionImpl(
        url: null == url
            ? _value.url
            : url // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OpenUrlActionImpl implements OpenUrlAction {
  const _$OpenUrlActionImpl({required this.url, final String? $type})
    : $type = $type ?? 'openUrl';

  factory _$OpenUrlActionImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenUrlActionImplFromJson(json);

  @override
  final String url;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ActionModel.openUrl(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenUrlActionImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  /// Create a copy of ActionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenUrlActionImplCopyWith<_$OpenUrlActionImpl> get copyWith =>
      __$$OpenUrlActionImplCopyWithImpl<_$OpenUrlActionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String destination) navigate,
    required TResult Function() goBack,
    required TResult Function(String message) showSnackbar,
    required TResult Function(String url) openUrl,
    required TResult Function(String eventName, Map<String, dynamic>? params)
    logEvent,
  }) {
    return openUrl(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String destination)? navigate,
    TResult? Function()? goBack,
    TResult? Function(String message)? showSnackbar,
    TResult? Function(String url)? openUrl,
    TResult? Function(String eventName, Map<String, dynamic>? params)? logEvent,
  }) {
    return openUrl?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String destination)? navigate,
    TResult Function()? goBack,
    TResult Function(String message)? showSnackbar,
    TResult Function(String url)? openUrl,
    TResult Function(String eventName, Map<String, dynamic>? params)? logEvent,
    required TResult orElse(),
  }) {
    if (openUrl != null) {
      return openUrl(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateAction value) navigate,
    required TResult Function(GoBackAction value) goBack,
    required TResult Function(ShowSnackbarAction value) showSnackbar,
    required TResult Function(OpenUrlAction value) openUrl,
    required TResult Function(LogEventAction value) logEvent,
  }) {
    return openUrl(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavigateAction value)? navigate,
    TResult? Function(GoBackAction value)? goBack,
    TResult? Function(ShowSnackbarAction value)? showSnackbar,
    TResult? Function(OpenUrlAction value)? openUrl,
    TResult? Function(LogEventAction value)? logEvent,
  }) {
    return openUrl?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateAction value)? navigate,
    TResult Function(GoBackAction value)? goBack,
    TResult Function(ShowSnackbarAction value)? showSnackbar,
    TResult Function(OpenUrlAction value)? openUrl,
    TResult Function(LogEventAction value)? logEvent,
    required TResult orElse(),
  }) {
    if (openUrl != null) {
      return openUrl(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenUrlActionImplToJson(this);
  }
}

abstract class OpenUrlAction implements ActionModel {
  const factory OpenUrlAction({required final String url}) =
      _$OpenUrlActionImpl;

  factory OpenUrlAction.fromJson(Map<String, dynamic> json) =
      _$OpenUrlActionImpl.fromJson;

  String get url;

  /// Create a copy of ActionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OpenUrlActionImplCopyWith<_$OpenUrlActionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogEventActionImplCopyWith<$Res> {
  factory _$$LogEventActionImplCopyWith(
    _$LogEventActionImpl value,
    $Res Function(_$LogEventActionImpl) then,
  ) = __$$LogEventActionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String eventName, Map<String, dynamic>? params});
}

/// @nodoc
class __$$LogEventActionImplCopyWithImpl<$Res>
    extends _$ActionModelCopyWithImpl<$Res, _$LogEventActionImpl>
    implements _$$LogEventActionImplCopyWith<$Res> {
  __$$LogEventActionImplCopyWithImpl(
    _$LogEventActionImpl _value,
    $Res Function(_$LogEventActionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ActionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? eventName = null, Object? params = freezed}) {
    return _then(
      _$LogEventActionImpl(
        eventName: null == eventName
            ? _value.eventName
            : eventName // ignore: cast_nullable_to_non_nullable
                  as String,
        params: freezed == params
            ? _value._params
            : params // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LogEventActionImpl implements LogEventAction {
  const _$LogEventActionImpl({
    required this.eventName,
    final Map<String, dynamic>? params,
    final String? $type,
  }) : _params = params,
       $type = $type ?? 'logEvent';

  factory _$LogEventActionImpl.fromJson(Map<String, dynamic> json) =>
      _$$LogEventActionImplFromJson(json);

  @override
  final String eventName;
  final Map<String, dynamic>? _params;
  @override
  Map<String, dynamic>? get params {
    final value = _params;
    if (value == null) return null;
    if (_params is EqualUnmodifiableMapView) return _params;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ActionModel.logEvent(eventName: $eventName, params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogEventActionImpl &&
            (identical(other.eventName, eventName) ||
                other.eventName == eventName) &&
            const DeepCollectionEquality().equals(other._params, _params));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    eventName,
    const DeepCollectionEquality().hash(_params),
  );

  /// Create a copy of ActionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LogEventActionImplCopyWith<_$LogEventActionImpl> get copyWith =>
      __$$LogEventActionImplCopyWithImpl<_$LogEventActionImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String destination) navigate,
    required TResult Function() goBack,
    required TResult Function(String message) showSnackbar,
    required TResult Function(String url) openUrl,
    required TResult Function(String eventName, Map<String, dynamic>? params)
    logEvent,
  }) {
    return logEvent(eventName, params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String destination)? navigate,
    TResult? Function()? goBack,
    TResult? Function(String message)? showSnackbar,
    TResult? Function(String url)? openUrl,
    TResult? Function(String eventName, Map<String, dynamic>? params)? logEvent,
  }) {
    return logEvent?.call(eventName, params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String destination)? navigate,
    TResult Function()? goBack,
    TResult Function(String message)? showSnackbar,
    TResult Function(String url)? openUrl,
    TResult Function(String eventName, Map<String, dynamic>? params)? logEvent,
    required TResult orElse(),
  }) {
    if (logEvent != null) {
      return logEvent(eventName, params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateAction value) navigate,
    required TResult Function(GoBackAction value) goBack,
    required TResult Function(ShowSnackbarAction value) showSnackbar,
    required TResult Function(OpenUrlAction value) openUrl,
    required TResult Function(LogEventAction value) logEvent,
  }) {
    return logEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavigateAction value)? navigate,
    TResult? Function(GoBackAction value)? goBack,
    TResult? Function(ShowSnackbarAction value)? showSnackbar,
    TResult? Function(OpenUrlAction value)? openUrl,
    TResult? Function(LogEventAction value)? logEvent,
  }) {
    return logEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateAction value)? navigate,
    TResult Function(GoBackAction value)? goBack,
    TResult Function(ShowSnackbarAction value)? showSnackbar,
    TResult Function(OpenUrlAction value)? openUrl,
    TResult Function(LogEventAction value)? logEvent,
    required TResult orElse(),
  }) {
    if (logEvent != null) {
      return logEvent(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LogEventActionImplToJson(this);
  }
}

abstract class LogEventAction implements ActionModel {
  const factory LogEventAction({
    required final String eventName,
    final Map<String, dynamic>? params,
  }) = _$LogEventActionImpl;

  factory LogEventAction.fromJson(Map<String, dynamic> json) =
      _$LogEventActionImpl.fromJson;

  String get eventName;
  Map<String, dynamic>? get params;

  /// Create a copy of ActionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LogEventActionImplCopyWith<_$LogEventActionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
