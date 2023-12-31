import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
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

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _nomeUser = prefs.getString('ff_nomeUser') ?? _nomeUser;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  PagamentosStruct _PagRed = PagamentosStruct();
  PagamentosStruct get PagRed => _PagRed;
  set PagRed(PagamentosStruct _value) {
    _PagRed = _value;
  }

  void updatePagRedStruct(Function(PagamentosStruct) updateFn) {
    updateFn(_PagRed);
  }

  int _cahveAlea = 0;
  int get cahveAlea => _cahveAlea;
  set cahveAlea(int _value) {
    _cahveAlea = _value;
  }

  FormasdepagStruct _FormasdePagRef = FormasdepagStruct.fromSerializableMap(
      jsonDecode('{\"pix\":\"pix\",\"cardaodecredito\":\"cartao\"}'));
  FormasdepagStruct get FormasdePagRef => _FormasdePagRef;
  set FormasdePagRef(FormasdepagStruct _value) {
    _FormasdePagRef = _value;
  }

  void updateFormasdePagRefStruct(Function(FormasdepagStruct) updateFn) {
    updateFn(_FormasdePagRef);
  }

  String _FormadePag = 'nada';
  String get FormadePag => _FormadePag;
  set FormadePag(String _value) {
    _FormadePag = _value;
  }

  String _GerarUUID = '';
  String get GerarUUID => _GerarUUID;
  set GerarUUID(String _value) {
    _GerarUUID = _value;
  }

  int _deDoubleToInteger = 0;
  int get deDoubleToInteger => _deDoubleToInteger;
  set deDoubleToInteger(int _value) {
    _deDoubleToInteger = _value;
  }

  String _AppBar = 'home';
  String get AppBar => _AppBar;
  set AppBar(String _value) {
    _AppBar = _value;
  }

  String _nomeUser = '';
  String get nomeUser => _nomeUser;
  set nomeUser(String _value) {
    _nomeUser = _value;
    prefs.setString('ff_nomeUser', _value);
  }

  String _statusCartaodeCredito = '';
  String get statusCartaodeCredito => _statusCartaodeCredito;
  set statusCartaodeCredito(String _value) {
    _statusCartaodeCredito = _value;
  }

  String _UsarCartaoSalvo = '0';
  String get UsarCartaoSalvo => _UsarCartaoSalvo;
  set UsarCartaoSalvo(String _value) {
    _UsarCartaoSalvo = _value;
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
