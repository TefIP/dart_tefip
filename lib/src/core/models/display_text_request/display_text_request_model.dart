import 'package:freezed_annotation/freezed_annotation.dart';

part 'display_text_request_model.freezed.dart';
part 'display_text_request_model.g.dart';

@freezed
/// Request model responsible for configuring a text display on the terminal.
///
/// This model is serialized to JSON and sent to the display endpoint
/// responsible for rendering formatted text content on the device screen.
///
/// Fields:
/// - [content]: Structured list describing the text elements to be rendered.
///   Each item is a `Map<String, dynamic>` containing formatting and text properties
///   (e.g., text value, size, weight, alignment).
/// - [backgroundColor]: Background color applied to the screen (hex string expected).
/// - [showCloseButton]: Indicates whether a close button should be displayed.
///   If `null`, the device default behavior is applied.
///
/// Generated:
/// - `fromJson` factory for deserialization.
/// - `toJson` method via Freezed/JsonSerializable.
abstract class DisplayTextRequestModel with _$DisplayTextRequestModel {
  const factory DisplayTextRequestModel({
    required List<Map<String, dynamic>> content,
    required String backgroundColor,
    bool? showCloseButton,
  }) = _DisplayTextRequestModel;

  factory DisplayTextRequestModel.fromJson(
    Map<String, dynamic> json,
  ) => _$DisplayTextRequestModelFromJson(json);
}
