import 'package:disko_app/entities/schedule/schedule_entity.dart';
import 'package:get/get.dart';

class MainScreenController extends GetxController {
  late List<ScheduleEntity?> _scheduleToday;
  late Map<DateTime, List<ScheduleEntity?>> _schedulePeriodToday;

  List<ScheduleEntity?> get scheduleToday => _scheduleToday;

  Map<DateTime, List<ScheduleEntity?>> get schedulePeriodToday =>
      _schedulePeriodToday;

  @override
  void onInit() {
    _scheduleToday = Get.arguments['today'];
    _schedulePeriodToday = Get.arguments['week'];
    super.onInit();
  }
}
