import 'package:dio/dio.dart';
import 'package:disko_app/models/event_model.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

RestClient restClient = RestClient(Dio());

@RestApi(baseUrl: "https://mighty-beach-02870.herokuapp.com")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) {
    dio.options = BaseOptions(receiveTimeout: 15000, connectTimeout: 15000);
    return _RestClient(dio, baseUrl: baseUrl);
  }

  @GET("/events/get/all/")
  Future<List<EventModel>> getAllEvents();

  @GET("/schedule/today/")
  Future<List<EventModel>> getScheduleToday();
}
