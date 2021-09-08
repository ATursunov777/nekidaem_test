import 'package:dio/dio.dart';
import 'package:rxdart/rxdart.dart';

enum ErrorHandlerType { auth }

class ErrorHandler {
  static final ErrorHandler _instance = ErrorHandler._internal();

  late BehaviorSubject<DioError?> errorStreamController;

  late Stream<DioError?> errorResponse;

  void init() {
    errorStreamController = BehaviorSubject<DioError>();
    errorResponse = errorStreamController.stream;
  }

  void dispose() {
    try {
      errorStreamController.add(null);
    } catch (error) {
      print(error);
    }
  }

  factory ErrorHandler() => _instance;

  ErrorHandler._internal();

  void showError(DioError error) {
    errorStreamController.add(error);
  }
}