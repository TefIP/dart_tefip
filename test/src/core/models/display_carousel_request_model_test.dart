import 'package:dart_tefip/src/core/enums/tef_ip_carousel_transition.dart';
import 'package:dart_tefip/src/core/models/display_carousel_request/display_carousel_request_model.dart';
import 'package:test/test.dart';

void main() {
  group('DisplayCarouselRequestModel', () {
    group('defaults', () {
      test('intervalMs, transition and showCloseButton have correct defaults', () {
        final model = DisplayCarouselRequestModel(
          images: ['img1'],
          backgroundColor: 'white',
        );

        expect(model.intervalMs, equals(3000));
        expect(model.transition, equals(TefIPCarouselTransition.fade));
        expect(model.showCloseButton, isFalse);
      });
    });

    group('fromJson', () {
      test('parses flat list of images', () {
        final model = DisplayCarouselRequestModel.fromJson({
          'images': ['base64img1', 'base64img2'],
          'intervalMs': 3000,
          'transition': 'fade',
          'backgroundColor': 'black',
          'showCloseButton': false,
        });

        expect(model.images, equals(['base64img1', 'base64img2']));
        expect(model.backgroundColor, equals('black'));
      });

      test('parses nested list of images', () {
        final model = DisplayCarouselRequestModel.fromJson({
          'images': [
            ['base64img1', 'base64img2'],
          ],
          'intervalMs': 3000,
          'transition': 'fade',
          'backgroundColor': 'white',
          'showCloseButton': false,
        });

        expect(model.images, equals(['base64img1', 'base64img2']));
      });

      test('parses all fields correctly', () {
        final model = DisplayCarouselRequestModel.fromJson({
          'images': ['img1'],
          'intervalMs': 5000,
          'transition': 'slide',
          'backgroundColor': '#FF0000',
          'showCloseButton': true,
        });

        expect(model.intervalMs, equals(5000));
        expect(model.transition, equals(TefIPCarouselTransition.slide));
        expect(model.backgroundColor, equals('#FF0000'));
        expect(model.showCloseButton, isTrue);
      });
    });

    group('toJson', () {
      test('serializes images as flat list', () {
        final model = DisplayCarouselRequestModel(
          images: ['img1', 'img2'],
          backgroundColor: 'white',
        );
        final json = model.toJson();

        expect(json['images'], equals(['img1', 'img2']));
      });

      test('round-trip preserves data', () {
        final model = DisplayCarouselRequestModel(
          images: ['imgA', 'imgB'],
          intervalMs: 4000,
          transition: TefIPCarouselTransition.none,
          backgroundColor: 'blue',
          showCloseButton: true,
        );
        final restored =
            DisplayCarouselRequestModel.fromJson(model.toJson());

        expect(restored, equals(model));
      });
    });

    group('equality', () {
      test('two identical models are equal', () {
        final a = DisplayCarouselRequestModel(
          images: ['img1'],
          backgroundColor: 'white',
        );
        final b = DisplayCarouselRequestModel(
          images: ['img1'],
          backgroundColor: 'white',
        );
        expect(a, equals(b));
      });

      test('models with different images are not equal', () {
        final a = DisplayCarouselRequestModel(
          images: ['img1'],
          backgroundColor: 'white',
        );
        final b = DisplayCarouselRequestModel(
          images: ['img2'],
          backgroundColor: 'white',
        );
        expect(a, isNot(equals(b)));
      });
    });
  });
}
