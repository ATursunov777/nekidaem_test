import 'package:dio/dio.dart';
import 'package:nekidaem_test/data/server_api/models/user_model.dart';

import 'error_handler.dart';

// class DioSettings {
//   String? token = UserApp.token;
//   DioSettings(token) {
//     initialSettings(token);
//   }

//   static final mainServer = 'https://trello.backend.tests.nekidaem.ru/api/v1';
//   final _errorHandler = ErrorHandler();

//   Dio dio = Dio(
//     BaseOptions(
//       baseUrl: mainServer,
//       connectTimeout: 10000,
//       receiveTimeout: 10000,
//     ),
//   );

//   void initialSettings(String? authToken) {
//     Interceptors interceptors = dio.interceptors;

//     interceptors.requestLock.lock();

//     interceptors.clear();

//     if (authToken != null && authToken.isNotEmpty)
//       dio.options.headers["Authorization"] = "Bearer $authToken";
//     interceptors.add(
//       InterceptorsWrapper(
//         onRequest: (options, handler) {
//           // Do something before request is sent
//           return handler.next(options); //continue
//           // If you want to resolve the request with some custom data，
//           // you can resolve a `Response` object eg: return `dio.resolve(response)`.
//           // If you want to reject the request with a error message,
//           // you can reject a `DioError` object eg: return `dio.reject(dioError)`
//         },
//         onResponse: (response, handler) {
//           // Do something with response data

//           return handler.next(response); // continue
//           // If you want to reject the request with a error message,
//           // you can reject a `DioError` object eg: return `dio.reject(dioError)`
//         },
//         onError: (DioError error, handler) {
//           if (error.type == DioErrorType.connectTimeout) {
//             return handler.next(
//               DioError(
//                 error: 'Server do not answer',
//                 response: Response(
//                   statusCode: 400,
//                   statusMessage: 'Server do not answer',
//                   requestOptions: error.requestOptions,
//                 ),
//                 requestOptions: error.requestOptions,
//               ),
//             );
//           } else if (error.message.contains('SocketException:')) {
//             return handler.next(
//               DioError(
//                 error: 'Server do not answer',
//                 response: Response(
//                   statusCode: 400,
//                   statusMessage: 'Server do not answer',
//                   requestOptions: error.requestOptions,
//                 ),
//                 requestOptions: error.requestOptions,
//               ),
//             );
//           } else if (error.response!.statusCode == 401) {
//             _errorHandler.showError(
//               DioError(
//                 error: ErrorHandlerType.auth,
//                 requestOptions: error.requestOptions,
//               ),
//             );
//           }
//           return handler.next(
//             DioError(
//               error: jsonDecode(error.response!.data)['message'],
//               response: Response(
//                 statusCode: error.response!.statusCode,
//                 statusMessage: error.response!.statusMessage,
//                 requestOptions: error.requestOptions,
//               ),
//               requestOptions: error.requestOptions,
//             ),
//           ); //continue
//           // If you want to resolve the request with some custom data，
//           // you can resolve a `Response` object eg: return `dio.resolve(response)`.
//         },
//       ),
//     );
//     // dio.options.headers["app_language"] = appLanguage;
//     interceptors.requestLock.unlock();
//   }
// }

class DioSettings {
  DioSettings() {
    initialSettings();
  }

  static final mainServer = "https://trello.backend.tests.nekidaem.ru/api/v1";

  Dio dio = Dio(BaseOptions(
    baseUrl: mainServer,
    connectTimeout: 10000,
    receiveTimeout: 10000,
  ));

  void initialSettings() {
    Interceptors interceptors = dio.interceptors;

    interceptors.requestLock.lock();

    interceptors.clear();
    if (UserApp.token != null)
      dio.options.headers["Authorization"] = "JWT ${UserApp.token}";
    interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          // Do something before request is sent
          return handler.next(options); //continue
          // If you want to resolve the request with some custom data，
          // you can resolve a `Response` object eg: return `dio.resolve(response)`.
          // If you want to reject the request with a error message,
          // you can reject a `DioError` object eg: return `dio.reject(dioError)`
        },
        onResponse: (response, handler) {
          // Do something with response data

          return handler.next(response); // continue
          // If you want to reject the request with a error message,
          // you can reject a `DioError` object eg: return `dio.reject(dioError)`
        },
        onError: (DioError error, handler) {
          if (error.type == DioErrorType.connectTimeout) {
            return handler.next(
              DioError(
                error: 'Server do not answer',
                response: Response(
                  statusCode: 400,
                  statusMessage: 'Server do not answer',
                  requestOptions: error.requestOptions,
                ),
                requestOptions: error.requestOptions,
              ),
            );
          } else if (error.message.contains('SocketException:')) {
            return handler.next(
              DioError(
                error: 'Server do not answer',
                response: Response(
                  statusCode: 400,
                  statusMessage: 'Server do not answer',
                  requestOptions: error.requestOptions,
                ),
                requestOptions: error.requestOptions,
              ),
            );
          } else if (error.response!.statusCode == 401) {
            ErrorHandler().showError(
              DioError(
                error: ErrorHandlerType.auth,
                requestOptions: error.requestOptions,
              ),
            );
          }
          print(error.requestOptions.path);
          return handler.next(error); //continue
          // If you want to resolve the request with some custom data，
          // you can resolve a `Response` object eg: return `dio.resolve(response)`.
        },
      ),
    );

    interceptors.add(LogInterceptor(
      request: true,
      requestBody: true,
      requestHeader: true,
      responseBody: true,
      responseHeader: true,
    ));

    interceptors.requestLock.unlock();
  }

  Future<void> initialAuthData(String? authToken) async {
    dio.options.headers["Authorization"] = "JWT ${UserApp.token}";
  }
}
