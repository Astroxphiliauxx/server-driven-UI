// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NavigateActionImpl _$$NavigateActionImplFromJson(Map<String, dynamic> json) =>
    _$NavigateActionImpl(
      destination: json['destination'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NavigateActionImplToJson(
  _$NavigateActionImpl instance,
) => <String, dynamic>{
  'destination': instance.destination,
  'runtimeType': instance.$type,
};

_$GoBackActionImpl _$$GoBackActionImplFromJson(Map<String, dynamic> json) =>
    _$GoBackActionImpl($type: json['runtimeType'] as String?);

Map<String, dynamic> _$$GoBackActionImplToJson(_$GoBackActionImpl instance) =>
    <String, dynamic>{'runtimeType': instance.$type};

_$ShowSnackbarActionImpl _$$ShowSnackbarActionImplFromJson(
  Map<String, dynamic> json,
) => _$ShowSnackbarActionImpl(
  message: json['message'] as String,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$$ShowSnackbarActionImplToJson(
  _$ShowSnackbarActionImpl instance,
) => <String, dynamic>{
  'message': instance.message,
  'runtimeType': instance.$type,
};

_$OpenUrlActionImpl _$$OpenUrlActionImplFromJson(Map<String, dynamic> json) =>
    _$OpenUrlActionImpl(
      url: json['url'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$OpenUrlActionImplToJson(_$OpenUrlActionImpl instance) =>
    <String, dynamic>{'url': instance.url, 'runtimeType': instance.$type};

_$LogEventActionImpl _$$LogEventActionImplFromJson(Map<String, dynamic> json) =>
    _$LogEventActionImpl(
      eventName: json['eventName'] as String,
      params: json['params'] as Map<String, dynamic>?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LogEventActionImplToJson(
  _$LogEventActionImpl instance,
) => <String, dynamic>{
  'eventName': instance.eventName,
  'params': instance.params,
  'runtimeType': instance.$type,
};
