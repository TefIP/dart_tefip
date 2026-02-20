import 'package:freezed_annotation/freezed_annotation.dart';

/// Custom JSON converter used to normalize image list responses
/// returned by the TefIP API.
///
/// Some API responses may return images in different structures:
/// - A flat list of strings:
///   `["base64Image1", "base64Image2"]`
///
/// - A nested list:
///   `[["base64Image1", "base64Image2"]]`
///
/// This converter guarantees that the final deserialized value
/// is always a `List<String>`.
///
/// If the incoming structure is not a valid list of strings
/// (flat or nested), a [FormatException] is thrown.
class TefIPImagesConverter implements JsonConverter<List<String>, dynamic> {
  /// Creates a constant instance of [TefIPImagesConverter].
  const TefIPImagesConverter();

  /// Converts the incoming JSON payload into a `List<String>`.
  ///
  /// Supported formats:
  /// - `List<String>`
  /// - `List<List<String>>` (first element used as base list)
  ///
  /// Throws a [FormatException] if the structure does not match
  /// the expected formats.
  @override
  List<String> fromJson(dynamic json) {
    if (json is! List) throw FormatException();

    final images = json;

    List<dynamic> baseList;
    if (images.isNotEmpty && images[0] is String) {
      baseList = images;
    } else if (images.isNotEmpty && images[0] is List) {
      baseList = images[0] as List<dynamic>;
    } else {
      throw FormatException();
    }

    final List<String> convertedImages = [];

    for (var item in baseList) {
      if (item is! String) throw FormatException();

      convertedImages.add(item);
    }

    return convertedImages;
  }

  /// Serializes the list of images back to JSON format.
  ///
  /// The list is returned as-is.
  @override
  dynamic toJson(List<String> object) => object;
}
