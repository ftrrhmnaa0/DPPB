import 'package:dio/dio.dart';

class DioClient {
  static final DioClient _instance = DioClient._internal();
  factory DioClient() => _instance;

  late Dio dio;

  DioClient._internal() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'http://10.0.2.2:8000/api',
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          print('REQUEST → ${options.method} ${options.path}');
          return handler.next(options);
        },
        onResponse: (response, handler) {
          print('RESPONSE → ${response.statusCode}');
          return handler.next(response);
        },
        onError: (DioException e, handler) {
          print('ERROR → ${e.message}');
          return handler.next(e);
        },
      ),
    );
  }
}
