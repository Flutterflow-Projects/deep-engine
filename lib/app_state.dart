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

  String _oryFlowId = '';
  String get oryFlowId => _oryFlowId;
  set oryFlowId(String value) {
    _oryFlowId = value;
  }

  String _oryCsrfToken = '';
  String get oryCsrfToken => _oryCsrfToken;
  set oryCsrfToken(String value) {
    _oryCsrfToken = value;
  }

  String _oryPasskeyCreateData = '';
  String get oryPasskeyCreateData => _oryPasskeyCreateData;
  set oryPasskeyCreateData(String value) {
    _oryPasskeyCreateData = value;
  }
}
