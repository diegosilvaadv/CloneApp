import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  PagamentosStruct _PagRed = PagamentosStruct();
  PagamentosStruct get PagRed => _PagRed;
  set PagRed(PagamentosStruct value) {
    _PagRed = value;
  }

  void updatePagRedStruct(Function(PagamentosStruct) updateFn) {
    updateFn(_PagRed);
  }

  int _cahveAlea = 0;
  int get cahveAlea => _cahveAlea;
  set cahveAlea(int value) {
    _cahveAlea = value;
  }

  FormasdepagStruct _FormasdePagRef = FormasdepagStruct.fromSerializableMap(
      jsonDecode('{"pix":"pix","cardaodecredito":"cartao"}'));
  FormasdepagStruct get FormasdePagRef => _FormasdePagRef;
  set FormasdePagRef(FormasdepagStruct value) {
    _FormasdePagRef = value;
  }

  void updateFormasdePagRefStruct(Function(FormasdepagStruct) updateFn) {
    updateFn(_FormasdePagRef);
  }

  String _FormadePag = 'nada';
  String get FormadePag => _FormadePag;
  set FormadePag(String value) {
    _FormadePag = value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
