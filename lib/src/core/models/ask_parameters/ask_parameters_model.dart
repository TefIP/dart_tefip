import 'package:freezed_annotation/freezed_annotation.dart';

part 'ask_parameters_model.freezed.dart';
part 'ask_parameters_model.g.dart';

/// Global parameters shared across all questions in an Ask request.
///
/// Controls UI behavior common to the entire interaction, such as
/// button labels, success feedback, and answer confirmation flow.
///
/// Fields:
/// - [buttonText]: Label for the primary confirmation button.
///   Default: `'Confirmar'`.
/// - [showCancelButton]: Whether a cancel button is shown.
///   Default: `false`.
/// - [buttonCancelText]: Label for the cancel button.
///   Default: `'Cancelar'`.
/// - [showSuccessMessage]: Whether a success screen is shown after confirmation.
///   Default: `false`.
/// - [successMessage]: Custom success message text. If `null`, a default is used.
/// - [successMessageInterval]: Duration (ms) the success message remains visible.
///   Default: `3000`.
/// - [confirmAnswer]: Whether the user must confirm their answer before submitting.
///   Default: `false`.
@freezed
abstract class AskParametersModel with _$AskParametersModel {
  const factory AskParametersModel({
    @Default('Confirmar') String buttonText,
    @Default(false) bool showCancelButton,
    @Default('Cancelar') String buttonCancelText,
    @Default(false) bool showSuccessMessage,
    String? successMessage,
    @Default(3000) int successMessageInterval,
    @Default(false) bool confirmAnswer,
  }) = _AskParametersModel;

  factory AskParametersModel.fromJson(Map<String, dynamic> json) =>
      _$AskParametersModelFromJson(json);
}
