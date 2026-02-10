import 'package:freezed_annotation/freezed_annotation.dart';

class TefIPImagesConverter implements JsonConverter<List<String>, dynamic> {
  const TefIPImagesConverter();

  @override
  List<String> fromJson(dynamic json) {
    if (json is! List) {
      throw FormatException('O campo "images" deve ser uma lista');
    }

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
      if (item is! String) {
        throw FormatException();
      }
      convertedImages.add(item);
    }

    return convertedImages;
  }

  @override
  dynamic toJson(List<String> object) => object;
}
