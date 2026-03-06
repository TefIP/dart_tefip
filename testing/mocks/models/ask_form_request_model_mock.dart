import 'package:dart_tefip/src/core/models/ask_form_request/ask_form_request_model.dart';

import 'ask_parameters_model_mock.dart';
import 'ask_question_model_mock.dart';

final kAskFormRequest = AskFormRequestModel(
  parameters: kAskParameters,
  questions: [
    kAskQuestion,
  ],
);
