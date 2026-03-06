// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ask_parameters_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AskParametersModel _$AskParametersModelFromJson(Map<String, dynamic> json) =>
    _AskParametersModel(
      buttonText: json['buttonText'] as String? ?? 'Confirmar',
      showCancelButton: json['showCancelButton'] as bool? ?? false,
      buttonCancelText: json['buttonCancelText'] as String? ?? 'Cancelar',
      showSuccessMessage: json['showSuccessMessage'] as bool? ?? false,
      successMessage: json['successMessage'] as String?,
      successMessageInterval:
          (json['successMessageInterval'] as num?)?.toInt() ?? 3000,
      confirmAnswer: json['confirmAnswer'] as bool? ?? false,
    );

Map<String, dynamic> _$AskParametersModelToJson(_AskParametersModel instance) =>
    <String, dynamic>{
      'buttonText': instance.buttonText,
      'showCancelButton': instance.showCancelButton,
      'buttonCancelText': instance.buttonCancelText,
      'showSuccessMessage': instance.showSuccessMessage,
      'successMessage': instance.successMessage,
      'successMessageInterval': instance.successMessageInterval,
      'confirmAnswer': instance.confirmAnswer,
    };
