import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:nekidaem_test/data/repository/repository.dart';

// UserApp userFromJson(String str) => UserApp.fromJson(json.decode(str));

String userToJson(UserApp data) => json.encode(data.toJson());

class UserApp extends ChangeNotifier {
  String? _userName;
  String? _email;
  String? _password;
  String? _errorUser;
  String? _errorPassword;
  bool _activeButton = false;
  bool _authSuccess = false;
  String? _serverError;

  static String? token;

  String? get getUserName => _userName;
  String? get getEmail => _email;
  String? get getPassword => _password;
  String? get errorUser => _errorUser;
  String? get errorPassword => _errorPassword;
  bool get activeButton => _activeButton;
  bool get authSuccess => _authSuccess;

  void setUserName(value) {
    if (value.length < 4) {
      _errorUser = "Minimum is 4 characters";
    } else {
      _errorUser = null;
      if (_password != null && _password!.length >= 8) {
        _activeButton = true;
      }
    }
  }

  void setPassword(value) {
    if (value.length < 8) {
      _errorPassword = "Minimum is 8 characters";
    } else {
      _errorPassword = null;
      if (_userName != null && _userName!.length >= 4) {
        _activeButton = true;
      }
    }
  }

  void changeData({String? userName, String? email, String? password}) {
    if (userName != null) {
      _userName = userName;
      setUserName(userName);
    }
    if (email != null) {
      _email = email;
    }
    if (password != null) {
      _password = password;
      setPassword(password);
    }
    notifyListeners();
  }

  Map<String, dynamic> toJson() => {
        "username": _userName,
        "password": _password,
      };

  Future<void> auth() async {
    final _repository = Repository();
    try {
      var data = await _repository.login(_userName!, _password!);
      UserApp.token = data;
      await _repository.initialRequestData(UserApp.token!);
      _activeButton = false;
      _authSuccess = true;
    } catch (e) {
      _serverError = "Auth ERROR";
      _activeButton = true;
    }
    notifyListeners();
  }
}
