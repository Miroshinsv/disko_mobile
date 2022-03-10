import 'package:disko_app/entities/schedule/schedule_entity.dart';
import 'package:disko_app/services/api_services.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ScheduleServices extends GetxService {
  final ApiService _apiService = Get.find<ApiService>();
  final DateFormat _dateFormat = DateFormat('yyyy-MM-dd');

  Future<List<ScheduleEntity?>> getScheduleToday() async {
    return await _apiService.getApiClient().getScheduleToday();
  }

  Future<Map<DateTime, List<ScheduleEntity?>>> getScheduleWeek() async {
    DateTime dateTime = DateTime.now();
    dateTime.add(Duration(days: 6));
    final Map<String, List<ScheduleEntity?>> week =
        await _apiService.getApiClient().getSchedulePeriod(
              _dateFormat.format(
                dateTime.add(
                  Duration(days: 1),
                ),
              ),
              _dateFormat.format(
                dateTime.add(
                  Duration(days: 6),
                ),
              ),
            );
    return week.map((key, value) => MapEntry(DateTime.parse(key), value));
  }
}
