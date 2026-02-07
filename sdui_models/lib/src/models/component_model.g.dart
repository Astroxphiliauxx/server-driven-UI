// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'component_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TitleComponentImpl _$$TitleComponentImplFromJson(Map<String, dynamic> json) =>
    _$TitleComponentImpl(
      title: json['title'] as String,
      subtitle: json['subtitle'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TitleComponentImplToJson(
  _$TitleComponentImpl instance,
) => <String, dynamic>{
  'title': instance.title,
  'subtitle': instance.subtitle,
  'runtimeType': instance.$type,
};

_$SpacerComponentImpl _$$SpacerComponentImplFromJson(
  Map<String, dynamic> json,
) => _$SpacerComponentImpl(
  height: (json['height'] as num?)?.toDouble() ?? 16.0,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$$SpacerComponentImplToJson(
  _$SpacerComponentImpl instance,
) => <String, dynamic>{
  'height': instance.height,
  'runtimeType': instance.$type,
};

_$ImageBannerComponentImpl _$$ImageBannerComponentImplFromJson(
  Map<String, dynamic> json,
) => _$ImageBannerComponentImpl(
  imageUrl: json['imageUrl'] as String,
  height: (json['height'] as num?)?.toDouble() ?? 200.0,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$$ImageBannerComponentImplToJson(
  _$ImageBannerComponentImpl instance,
) => <String, dynamic>{
  'imageUrl': instance.imageUrl,
  'height': instance.height,
  'runtimeType': instance.$type,
};

_$ButtonComponentImpl _$$ButtonComponentImplFromJson(
  Map<String, dynamic> json,
) => _$ButtonComponentImpl(
  label: json['label'] as String,
  action: ActionModel.fromJson(json['action'] as Map<String, dynamic>),
  isPrimary: json['isPrimary'] as bool? ?? false,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$$ButtonComponentImplToJson(
  _$ButtonComponentImpl instance,
) => <String, dynamic>{
  'label': instance.label,
  'action': instance.action,
  'isPrimary': instance.isPrimary,
  'runtimeType': instance.$type,
};

_$CardComponentImpl _$$CardComponentImplFromJson(Map<String, dynamic> json) =>
    _$CardComponentImpl(
      title: json['title'] as String,
      subtitle: json['subtitle'] as String?,
      imageUrl: json['imageUrl'] as String?,
      action: json['action'] == null
          ? null
          : ActionModel.fromJson(json['action'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CardComponentImplToJson(_$CardComponentImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'subtitle': instance.subtitle,
      'imageUrl': instance.imageUrl,
      'action': instance.action,
      'runtimeType': instance.$type,
    };

_$HorizontalListComponentImpl _$$HorizontalListComponentImplFromJson(
  Map<String, dynamic> json,
) => _$HorizontalListComponentImpl(
  items: (json['items'] as List<dynamic>)
      .map((e) => ComponentModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  height: (json['height'] as num?)?.toDouble() ?? 120.0,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$$HorizontalListComponentImplToJson(
  _$HorizontalListComponentImpl instance,
) => <String, dynamic>{
  'items': instance.items,
  'height': instance.height,
  'runtimeType': instance.$type,
};

_$InfoTileComponentImpl _$$InfoTileComponentImplFromJson(
  Map<String, dynamic> json,
) => _$InfoTileComponentImpl(
  title: json['title'] as String,
  subtitle: json['subtitle'] as String?,
  avatarUrl: json['avatarUrl'] as String?,
  leadingIcon: json['leadingIcon'] as String?,
  action: json['action'] == null
      ? null
      : ActionModel.fromJson(json['action'] as Map<String, dynamic>),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$$InfoTileComponentImplToJson(
  _$InfoTileComponentImpl instance,
) => <String, dynamic>{
  'title': instance.title,
  'subtitle': instance.subtitle,
  'avatarUrl': instance.avatarUrl,
  'leadingIcon': instance.leadingIcon,
  'action': instance.action,
  'runtimeType': instance.$type,
};

_$DividerComponentImpl _$$DividerComponentImplFromJson(
  Map<String, dynamic> json,
) => _$DividerComponentImpl(
  thickness: (json['thickness'] as num?)?.toDouble() ?? 1.0,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$$DividerComponentImplToJson(
  _$DividerComponentImpl instance,
) => <String, dynamic>{
  'thickness': instance.thickness,
  'runtimeType': instance.$type,
};
