import 'package:dio/dio.dart';
import 'package:disko_app/models/schedule_model.dart';
import 'package:disko_app/models/user_model.dart';
import 'package:retrofit/retrofit.dart';

part 'network_service.g.dart';

Dio _dio = Dio();
RestClient restClient = RestClient(_dio);

@RestApi(baseUrl: "http://mighty-beach-02870.herokuapp.com")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/user/get/all/")
  Future<List<User>> getAllUsers();

  @GET("/user/get/{id}/")
  Future<List<User>> getUserById(@Path("id") int id);

  @GET("/schedule/today/")
  Future<List<Schedule>> getScheduleToday();

  @GET("/events/get/{id}")
  Future<Schedule> getEventById(@Path("id") int id);
}
