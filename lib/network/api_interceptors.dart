import 'package:dio/dio.dart';
import 'package:disko_app/entities/xtoken/XTokenEntity.dart';
import 'package:disko_app/services/auth_services.dart';
import 'package:get/get.dart' as getLib;

class ApiInterceptors extends InterceptorsWrapper {
  final AuthorizeService _authorizeService = getLib.Get.find();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final XTokenEntity? xTokenEntity = _authorizeService.getXTokenEntity;
    if (xTokenEntity != null) {
      options.headers['x-token'] = xTokenEntity.auth;
    }
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);
  }
}
