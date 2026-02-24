import 'package:dart_tefip/dart_tefip.dart';
import 'package:dart_tefip/src/core/builders/headers/tef_ip_headers_builder.dart';
import 'package:dart_tefip/src/instance/ask/tef_ip_ask.dart';
import 'package:dart_tefip/src/instance/configs/tefip_configs.dart';
import 'package:dart_tefip/src/instance/display/tef_ip_display_carousel.dart';
import 'package:dart_tefip/src/instance/display/tef_ip_display_clear.dart';
import 'package:dart_tefip/src/instance/display/tef_ip_display_image.dart';
import 'package:dart_tefip/src/instance/display/tef_ip_display_text.dart';
import 'package:dart_tefip/src/instance/info/tef_ip_info.dart';
import 'package:dart_tefip/src/instance/print/tef_ip_print_image.dart';
import 'package:dart_tefip/src/instance/print/tef_ip_print_text.dart';
import 'package:dart_tefip/src/instance/print/tef_ip_print_xml.dart';
import 'package:dart_tefip/src/instance/restart/tef_ip_restart.dart';
import 'package:dart_tefip/src/instance/reversal/tef_ip_reversal.dart';
import 'package:dart_tefip/src/instance/status/tef_ip_status.dart';
import 'package:dart_tefip/src/instance/transaction/tef_ip_transaction.dart';
import 'package:test/test.dart';

import '../../../testing/mocks/shared/base_url_mock.dart';
import '../../../testing/mocks/shared/password_mock.dart';
import '../../../testing/mocks/shared/username_mock.dart';

void main() {
  group('TefIP', () {
    group('Singleton', () {
      test('should return the same instance', () {
        final instance1 = TefIP.instance;
        final instance2 = TefIP.instance;

        expect(instance1, same(instance2));
      });
    });

    group('Base configuration', () {
      test('should set baseUrl correctly', () {
        TefIP.baseUrl = kBaseUrl;

        expect(TefIP.baseUrl, equals(kBaseUrl));
        expect(TefIPConfigs.baseUrl, equals(kBaseUrl));
      });

      test('should set username correctly', () {
        TefIP.username = kUsername;

        expect(TefIP.username, equals(kUsername));
        expect(TefIPHeadersBuilder.username, equals(kUsername));
      });

      test('should set password correctly', () {
        TefIP.password = kPassword;

        expect(TefIP.password, equals(kPassword));
        expect(TefIPHeadersBuilder.password, equals(kPassword));
      });
    });

    group('Endpoints accessors', () {
      final tefip = TefIP.instance;

      test('should return TefIPAsk', () {
        expect(tefip.ask, isA<TefIPAsk>());
      });

      test('should return TefIPDisplayCarousel', () {
        expect(tefip.displayCarousel, isA<TefIPDisplayCarousel>());
      });

      test('should return TefIPDisplayClear', () {
        expect(tefip.displayClear, isA<TefIPDisplayClear>());
      });

      test('should return TefIPDisplayImage', () {
        expect(tefip.displayImage, isA<TefIPDisplayImage>());
      });

      test('should return TefIPDisplayText', () {
        expect(tefip.displayText, isA<TefIPDisplayText>());
      });

      test('should return TefIPInfo', () {
        expect(tefip.info, isA<TefIPInfo>());
      });

      test('should return TefIPPrintImage', () {
        expect(tefip.printImage, isA<TefIPPrintImage>());
      });

      test('should return TefIPPrintText', () {
        expect(tefip.printText, isA<TefIPPrintText>());
      });

      test('should return TefIPPrintXml', () {
        expect(tefip.printXml, isA<TefIPPrintXml>());
      });

      test('should return TefIPRestart', () {
        expect(tefip.restart, isA<TefIPRestart>());
      });

      test('should return TefIPReversal', () {
        expect(tefip.reversal, isA<TefIPReversal>());
      });

      test('should return TefIPStatus', () {
        expect(tefip.status, isA<TefIPStatus>());
      });

      test('should return TefIPTransaction', () {
        expect(tefip.transaction, isA<TefIPTransaction>());
      });
    });
  });
}
