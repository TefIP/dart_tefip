// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'display_carousel_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DisplayCarouselRequestModel _$DisplayCarouselRequestModelFromJson(
  Map<String, dynamic> json,
) => _DisplayCarouselRequestModel(
  images: const TefIPImagesConverter().fromJson(json['images']),
  intervalMs: (json['intervalMs'] as num?)?.toInt() ?? 3000,
  transition:
      $enumDecodeNullable(
        _$TefIPCarouselTransitionEnumMap,
        json['transition'],
      ) ??
      TefIPCarouselTransition.fade,
  backgroundColor: json['backgroundColor'] as String,
  showCloseButton: json['showCloseButton'] as bool? ?? false,
);

Map<String, dynamic> _$DisplayCarouselRequestModelToJson(
  _DisplayCarouselRequestModel instance,
) => <String, dynamic>{
  'images': const TefIPImagesConverter().toJson(instance.images),
  'intervalMs': instance.intervalMs,
  'transition': _$TefIPCarouselTransitionEnumMap[instance.transition]!,
  'backgroundColor': instance.backgroundColor,
  'showCloseButton': instance.showCloseButton,
};

const _$TefIPCarouselTransitionEnumMap = {
  TefIPCarouselTransition.fade: 'fade',
  TefIPCarouselTransition.slide: 'slide',
  TefIPCarouselTransition.none: 'none',
};
