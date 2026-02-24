import 'package:dart_tefip/src/core/converters/tef_ip_images_converter.dart';
import 'package:dart_tefip/src/core/enums/tef_ip_carousel_transition.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'display_carousel_request_model.freezed.dart';
part 'display_carousel_request_model.g.dart';

@freezed
/// Request model responsible for configuring a carousel display on the terminal.
///
/// This model is serialized to JSON and sent to the display endpoint
/// responsible for rendering image carousels on the device screen.
///
/// Fields:
/// - [images]: List of images to be displayed in the carousel.
///   Uses [TefIPImagesConverter] to convert images to the expected format.
/// - [intervalMs]: Time interval in milliseconds between image transitions.
///   Default is `3000`.
/// - [transition]: Transition animation between images.
///   Default is [TefIPCarouselTransition.fade].
/// - [backgroundColor]: Background color applied to the carousel (hex string expected).
/// - [showCloseButton]: Defines whether a close button should be shown.
///   Default is `false`.
///
/// Generated:
/// - `fromJson` factory for deserialization.
/// - `toJson` method via Freezed/JsonSerializable.
abstract class DisplayCarouselRequestModel with _$DisplayCarouselRequestModel {
  const factory DisplayCarouselRequestModel({
    @TefIPImagesConverter() required List<String> images,
    @Default(3000) int intervalMs,
    @Default(TefIPCarouselTransition.fade) TefIPCarouselTransition transition,
    required String backgroundColor,
    @Default(false) bool showCloseButton,
  }) = _DisplayCarouselRequestModel;

  factory DisplayCarouselRequestModel.fromJson(
    Map<String, dynamic> json,
  ) => _$DisplayCarouselRequestModelFromJson(json);
}
