// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FormasdepagStruct extends BaseStruct {
  FormasdepagStruct({
    String? pix,
    String? cardaodecredito,
  })  : _pix = pix,
        _cardaodecredito = cardaodecredito;

  // "pix" field.
  String? _pix;
  String get pix => _pix ?? '';
  set pix(String? val) => _pix = val;
  bool hasPix() => _pix != null;

  // "cardaodecredito" field.
  String? _cardaodecredito;
  String get cardaodecredito => _cardaodecredito ?? '';
  set cardaodecredito(String? val) => _cardaodecredito = val;
  bool hasCardaodecredito() => _cardaodecredito != null;

  static FormasdepagStruct fromMap(Map<String, dynamic> data) =>
      FormasdepagStruct(
        pix: data['pix'] as String?,
        cardaodecredito: data['cardaodecredito'] as String?,
      );

  static FormasdepagStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? FormasdepagStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'pix': _pix,
        'cardaodecredito': _cardaodecredito,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'pix': serializeParam(
          _pix,
          ParamType.String,
        ),
        'cardaodecredito': serializeParam(
          _cardaodecredito,
          ParamType.String,
        ),
      }.withoutNulls;

  static FormasdepagStruct fromSerializableMap(Map<String, dynamic> data) =>
      FormasdepagStruct(
        pix: deserializeParam(
          data['pix'],
          ParamType.String,
          false,
        ),
        cardaodecredito: deserializeParam(
          data['cardaodecredito'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'FormasdepagStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FormasdepagStruct &&
        pix == other.pix &&
        cardaodecredito == other.cardaodecredito;
  }

  @override
  int get hashCode => const ListEquality().hash([pix, cardaodecredito]);
}

FormasdepagStruct createFormasdepagStruct({
  String? pix,
  String? cardaodecredito,
}) =>
    FormasdepagStruct(
      pix: pix,
      cardaodecredito: cardaodecredito,
    );
