import 'package:dart_tefip/dart_tefip.dart';

final kDisplayTextRequest = DisplayTextRequestModel(
  content: [
    {
      'line': {
        'customization': {
          'font_style': {
            'bold': true,
            'italic': false,
          },
          'font_size': 24,
          'alignment': 1,
        },
        'content': 'CAIXA LIVRE',
      },
    },
  ],
  backgroundColor: 'white',
  showCloseButton: false,
);
