import 'package:dio/dio.dart';

class NetworkService {
  final Dio _dio = Dio(BaseOptions(
    baseUrl: 'https://api.example.com/',
    connectTimeout: const Duration(seconds: 10), // 10 seconds
    receiveTimeout: const Duration(seconds: 10), // 10 seconds
  ));

  Future<void> fetchData() async {
    try {
      Response response = await _dio.get('/data');
      
      if (response.statusCode == 200) {
        // Process the data
        print('Data fetched successfully: ${response.data}');
      } else {
        // Handle server errors
        print('Server error: ${response.statusCode}');
      }
    } on DioException catch (e) {
      // Handle Dio specific errors
      print('Failed to fetch data: ${e.message}');
    }
  }
}
