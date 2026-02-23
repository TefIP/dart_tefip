import 'dart:convert';

import 'package:dart_tefip/dart_tefip.dart';

import '../shared/image_mock.dart';

final kDisplayCarouselRequestModel = DisplayCarouselRequestModel(
  images: [base64Encode(kMockImage)],
  intervalMs: 3000,
  transition: TefIPCarouselTransition.fade,
  backgroundColor: 'white',
  showCloseButton: false,
);
