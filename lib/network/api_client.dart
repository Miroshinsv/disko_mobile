import 'dart:async';

import 'package:dio/dio.dart';
import 'package:disko_app/entities/schedule/schedule_entity.dart';
import 'package:disko_app/entities/xtoken/XTokenEntity.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:retrofit/retrofit.dart';


part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {

  factory ApiClient(Dio dio, {String? baseUrl}) =>_ApiClient(dio, baseUrl: baseUrl ?? dotenv.env['BASE_URI']);

  // Token
  @GET('/auth/refresh/')
  Future<XTokenEntity> getRefreshToken(@Query('refresh') String refreshToken);

  // Schedule
  @GET('/schedule/today/')
  Future<List<ScheduleEntity?>> getScheduleToday();

  @GET('/schedule/period/?from={from}&to={to}')
  Future<Map<String, List<ScheduleEntity?>>> getSchedulePeriod(@Path() String from, @Path() String to);
}
