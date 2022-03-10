import 'package:disko_app/entities/schedule/schedule_entity.dart';
import 'package:disko_app/routes/routes_config.dart';
import 'package:disko_app/services/schedule_services.dart';
import 'package:get/get.dart';

class InitialScreenController extends GetxController {
  late List<ScheduleEntity?> _sheduleToday;
  late Map<DateTime, List<ScheduleEntity?>> _shedulePeriodToday;
  final ScheduleServices _scheduleServices = Get.find();
  RxBool isLoadingData = true.obs;

  void initialData() async {
    _sheduleToday = await _scheduleServices.getScheduleToday();
    _shedulePeriodToday = await _scheduleServices.getScheduleWeek();
    isLoadingData.value = false;
  }

  void moveToMainPage() {
    Future.delayed(Duration.zero).whenComplete(
      () => Get.toNamed(
        RouteConfig.MAIN_SCREEN,
        arguments: {
          'today': _sheduleToday,
          'week': _shedulePeriodToday,
        },
      ),
    );
  }
}
