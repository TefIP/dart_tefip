// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'display_text_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DisplayTextRequestModel _$DisplayTextRequestModelFromJson(
  Map<String, dynamic> json,
) => _DisplayTextRequestModel(
  content: (json['content'] as List<dynamic>)
      .map((e) => e as Map<String, dynamic>)
      .toList(),
  backgroundColor: json['backgroundColor'] as String,
  showCloseButton: json['showCloseButton'] as bool?,
);

Map<String, dynamic> _$DisplayTextRequestModelToJson(
  _DisplayTextRequestModel instance,
) => <String, dynamic>{
  'content': instance.content,
  'backgroundColor': instance.backgroundColor,
  'showCloseButton': instance.showCloseButton,
};
