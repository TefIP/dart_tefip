import 'dart:convert';
import 'package:dart_tefip/dart_tefip.dart';
import '../shared/image_mock.dart';

final kDisplayCarouselRequest = DisplayCarouselRequestModel(
  images: [base64Encode(kImage)],
  intervalMs: 3000,
  transition: TefIPCarouselTransition.fade,
  backgroundColor: 'white',
  showCloseButton: false,
);
