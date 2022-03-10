import 'package:disko_app/screens/initial_screen/initial_screen_controller.dart';

import 'package:get/get.dart';

class InitialScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(()=>InitialScreenController());
  }
}
