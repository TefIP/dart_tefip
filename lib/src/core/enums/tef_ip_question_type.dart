import 'package:json_annotation/json_annotation.dart';

/// Defines the supported input types for questions
/// requested by the TefIP Ask endpoint.
///
/// Each enum value is mapped to a specific string representation
/// using [JsonValue], ensuring correct serialization and
/// deserialization when communicating with the API.
///
/// These types control how input is validated or presented
/// on the terminal interface.
enum TefIPQuestionType {
  /// Displays a selectable list of options.
  @JsonValue('LIST')
  list,

  /// Displays selectable buttons.
  @JsonValue('BUTTON')
  button,

  /// Free text input.
  @JsonValue('TEXT')
  text,

  /// Phone number input.
  @JsonValue('PHONE')
  phone,

  /// Numeric-only input.
  @JsonValue('NUMBER')
  number,

  /// Brazilian CPF input validation.
  @JsonValue('CPF')
  cpf,

  /// Brazilian CNPJ input validation.
  @JsonValue('CNPJ')
  cnpj,

  /// Accepts either CPF or CNPJ.
  @JsonValue('CPFORCNPJ')
  cpfOrcnpj,

  /// Email input validation.
  @JsonValue('EMAIL')
  email,

  /// Brazilian postal code (CEP) validation.
  @JsonValue('CEP')
  cep,

  /// Date input.
  @JsonValue('DATE')
  date,

  /// Time input.
  @JsonValue('TIME')
  time,

  /// Monetary value input.
  @JsonValue('MONEY')
  money,

  /// Custom validation using a regular expression.
  @JsonValue('REGEX')
  regex,
}