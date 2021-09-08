import 'dart:convert';

import 'package:dio/dio.dart';

import 'dio/dio_settings.dart';
import 'models/card_model.dart';

class ServerApi {
  static ServerApi _instance = new ServerApi.internal();

  factory ServerApi() => _instance;

  ServerApi.internal() {
    _dioSettings = DioSettings();
    _dio = _dioSettings.dio;
  }

  late DioSettings _dioSettings;
  late Dio _dio;

  // late Map<String, dynamic> _request;
  Future<void> initialRequestData(String token)async{
    await _dioSettings.initialAuthData(token);
  }

  Future<String> login({
    required String username,
    required String password,
  }) async {
    try {
      final authResponse = await _dio.post(
        "/users/login/",
        data: {
          'username': username,
          "password": password,
        },
      );
      return authResponse.data['token'].toString();
    } catch (e) {
      throw e;
    }
  }

  Future<List<Cards>> getCars(String? row) async {
    try {
      Response<String> response;
      if (row != null){
       response = await _dio.get(
        "/cards/",
         queryParameters: {"row": row});
      }
      else{
        response = await _dio.get(
        "/cards/",);
      }
      return cardFromJson(response.toString());
    } catch (e) {
      throw e;
    }
  }
}