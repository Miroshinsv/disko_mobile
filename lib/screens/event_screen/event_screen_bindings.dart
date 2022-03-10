import 'package:disko_app/screens/event_screen/event_screen_controller.dart';
import 'package:get/get.dart';

class EventScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EventScreenController());
  }
}
