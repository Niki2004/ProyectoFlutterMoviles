import 'package:flutter/material.dart';

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

  bool _Buscar = false;
  bool get Buscar => _Buscar;
  set Buscar(bool value) {
    _Buscar = value;
  }

  bool _invseacrhactive = false;
  bool get invseacrhactive => _invseacrhactive;
  set invseacrhactive(bool value) {
    _invseacrhactive = value;
  }

  bool _searchExpediente = false;
  bool get searchExpediente => _searchExpediente;
  set searchExpediente(bool value) {
    _searchExpediente = value;
  }

  bool _buscarempleado = false;
  bool get buscarempleado => _buscarempleado;
  set buscarempleado(bool value) {
    _buscarempleado = value;
  }

  bool _searchMedicos = false;
  bool get searchMedicos => _searchMedicos;
  set searchMedicos(bool value) {
    _searchMedicos = value;
  }
}
