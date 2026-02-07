// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'screen_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerticalScreenModelImpl _$$VerticalScreenModelImplFromJson(
  Map<String, dynamic> json,
) => _$VerticalScreenModelImpl(
  screenTitle: json['screenTitle'] as String,
  components: (json['components'] as List<dynamic>)
      .map((e) => ComponentModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$$VerticalScreenModelImplToJson(
  _$VerticalScreenModelImpl instance,
) => <String, dynamic>{
  'screenTitle': instance.screenTitle,
  'components': instance.components,
  'runtimeType': instance.$type,
};

_$ErrorScreenModelImpl _$$ErrorScreenModelImplFromJson(
  Map<String, dynamic> json,
) => _$ErrorScreenModelImpl(
  errorMessage: json['errorMessage'] as String,
  errorCode: json['errorCode'] as String?,
  retryAction: json['retryAction'] == null
      ? null
      : ActionModel.fromJson(json['retryAction'] as Map<String, dynamic>),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$$ErrorScreenModelImplToJson(
  _$ErrorScreenModelImpl instance,
) => <String, dynamic>{
  'errorMessage': instance.errorMessage,
  'errorCode': instance.errorCode,
  'retryAction': instance.retryAction,
  'runtimeType': instance.$type,
};
