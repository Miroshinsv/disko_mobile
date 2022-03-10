import 'package:disko_app/screens/main_screen/main_screen_controller.dart';
import 'package:get/get.dart';

class MainScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainScreenController());
  }
}
