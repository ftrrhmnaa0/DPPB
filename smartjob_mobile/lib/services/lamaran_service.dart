import 'package:dio/dio.dart';
import '../core/dio_client.dart';

class LamaranService {
  final Dio _dio = DioClient().dio;

  Future<List<dynamic>> getLamaran() async {
    try {
      final response = await _dio.get('/lamaran');
      return response.data;
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout) {
        throw Exception('Koneksi timeout');
      } else {
        throw Exception('Terjadi kesalahan');
      }
    }
  }

  Future<void> tambahLamaran(Map<String, dynamic> data) async {
    await _dio.post('/lamaran', data: data);
  }

  Future<void> uploadCV(int lamaranId, String filePath) async {
    FormData formData = FormData.fromMap({
      'cv': await MultipartFile.fromFile(filePath),
    });

    await DioClient().dio.post(
      '/lamaran/$lamaranId/upload',
      data: formData,
    );
  }


  Future<void> updateLamaran(int id, Map<String, dynamic> data) async {
    await _dio.put('/lamaran/$id', data: data);
  }

  Future<void> hapusLamaran(int id) async {
    await _dio.delete('/lamaran/$id');
  }
}
