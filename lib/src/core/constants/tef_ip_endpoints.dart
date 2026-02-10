import 'package:meta/meta.dart';

@Immutable()
abstract final class TefIPEndpoints {
  static final String ask = '/ask';

  static final String displayImage = '/display/image';

  static final String displayText = '/display/text';

  static final String displayCarousel = '/display/carousel';

  static final String displayClear = '/display/clear';

  static final String transaction = '/transaction';

  static String reversal(String? referenceId) =>
      '/transaction/$referenceId/reversal';

  static final String printImage = '/print/image';

  static final String printText = '/print/text';

  static final String printXml = '/print/xml';

  static final String info = '/info';

  static final String status = '/status';
}
