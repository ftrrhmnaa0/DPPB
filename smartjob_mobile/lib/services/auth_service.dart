import 'package:dio/dio.dart';
import '../core/dio_client.dart';

class AuthService {
  final Dio _dio = DioClient().dio;

  Future<bool> login(String email, String password) async {
    try {
      final response = await _dio.post(
        '/login',
        data: {
          'email': email,
          'password': password,
        },
      );

      if (response.statusCode == 200) {
        return true;
      }
      return false;
    } catch (e) {
      return false;
    }
  }
}
