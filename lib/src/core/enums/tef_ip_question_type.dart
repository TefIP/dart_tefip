import 'package:json_annotation/json_annotation.dart';

enum TefIPQuestionType {
  @JsonValue('LIST')
  list,
  @JsonValue('BUTTON')
  button,
  @JsonValue('TEXT')
  text,
  @JsonValue('PHONE')
  phone,
  @JsonValue('NUMBER')
  number,
  @JsonValue('CPF')
  cpf,
  @JsonValue('CNPJ')
  cnpj,
  @JsonValue('CPFORCNPJ')
  cpfOrcnpj,
  @JsonValue('EMAIL')
  email,
  @JsonValue('CEP')
  cep,
  @JsonValue('DATE')
  date,
  @JsonValue('TIME')
  time,
  @JsonValue('MONEY')
  money,
  @JsonValue('REGEX')
  regex,
}
