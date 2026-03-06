import 'package:freezed_annotation/freezed_annotation.dart';

part 'ask_parameters_model.freezed.dart';
part 'ask_parameters_model.g.dart';

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
