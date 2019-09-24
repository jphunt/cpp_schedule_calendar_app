import 'dart:core';

import 'package:cpp_schedule_calendar_app/core/enums/view_model.dart';
import 'package:flutter/material.dart';

class AppViewModel with ChangeNotifier {
  AppState _appState = AppState.NotInitialized;
  String _username;
  String _password;
  String _token;

  AppViewModel() {
    _init();
  }

  void _init() async {
//    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//    _token = sharedPreferences.get("token");
    _token = "aaa";
    _appState = _token == '' ? AppState.Authorized : AppState.NotAuthorized;
    notifyListeners();
  }

  String get token => _token;

  set token(String value) {
    _token = value;
  }

  String get password => _password;

  set password(String value) {
    _password = value;
  }

  String get username => _username;

  set username(String value) {
    _username = value;
  }

  AppState get appState => _appState;

  set appState(AppState value) {
    _appState = value;
  }
}
