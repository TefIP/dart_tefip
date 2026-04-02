// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_mutation_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SaleMutationResponseModel _$SaleMutationResponseModelFromJson(
        Map<String, dynamic> json) =>
    _SaleMutationResponseModel(
      message: json['message'] as String,
      itemId: json['itemId'] as String?,
      paymentId: json['paymentId'] as String?,
    );

Map<String, dynamic> _$SaleMutationResponseModelToJson(
        _SaleMutationResponseModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'itemId': instance.itemId,
      'paymentId': instance.paymentId,
    };
