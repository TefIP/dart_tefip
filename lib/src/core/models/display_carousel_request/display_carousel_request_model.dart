import 'package:dart_tefip/src/core/converters/tef_ip_images_converter.dart';
import 'package:dart_tefip/src/core/enums/tef_ip_carousel_transition.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'display_carousel_request_model.freezed.dart';
part 'display_carousel_request_model.g.dart';

@freezed
abstract class DisplayCarouselRequestModel with _$DisplayCarouselRequestModel {
  const factory DisplayCarouselRequestModel({
    @TefIPImagesConverter() required List<String> images,
    @Default(3000) int intervalMs,
    @Default(TefIPCarouselTransition.fade) TefIPCarouselTransition transition,
    required String backgroundColor,
    @Default(false) bool showCloseButton,
  }) = _DisplayCarouselRequestModel;

  factory DisplayCarouselRequestModel.fromJson(Map<String, dynamic> json) =>
      _$DisplayCarouselRequestModelFromJson(json);
}
