import 'package:dio/dio.dart';
import 'package:disko_app/network/api_client.dart';
import 'package:disko_app/network/api_interceptors.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';

class ApiService extends GetxService {
  static late Dio _dio;
  static late ApiClient _apiClient;


  Future<ApiService> init() async{
    await dotenv.load(fileName: ".env");
    _dio = Dio();
    _dio.options.connectTimeout = 18000;
    _dio.interceptors.add(ApiInterceptors());
    _apiClient = ApiClient(_dio, baseUrl: dotenv.env['BASE_URI']);
    return this;
  }


  ApiClient getApiClient() {
    return _apiClient;
  }
}
