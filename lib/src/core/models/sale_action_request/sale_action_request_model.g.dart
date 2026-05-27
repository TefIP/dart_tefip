// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_action_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SaleActionRequestModel _$SaleActionRequestModelFromJson(
  Map<String, dynamic> json,
) => _SaleActionRequestModel(
  message: json['message'] as String?,
  showMessage: json['showMessage'] as bool? ?? true,
  showCloseButton: json['showCloseButton'] as bool? ?? true,
  buttonCloseText: json['buttonCloseText'] as String?,
  messageInterval: (json['messageInterval'] as num?)?.toInt() ?? 3000,
);

Map<String, dynamic> _$SaleActionRequestModelToJson(
  _SaleActionRequestModel instance,
) => <String, dynamic>{
  'message': instance.message,
  'showMessage': instance.showMessage,
  'showCloseButton': instance.showCloseButton,
  'buttonCloseText': instance.buttonCloseText,
  'messageInterval': instance.messageInterval,
};
