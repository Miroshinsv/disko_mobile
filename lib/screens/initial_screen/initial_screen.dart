import 'package:disko_app/screens/initial_screen/initial_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InitialScreen extends GetView<InitialScreenController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                minRadius: 100,
                maxRadius: 160,
                backgroundImage: Image.asset("assets/images/logo.png").image,
              ),
              CircularProgressIndicator(),
              Obx(
                () {
                  if (controller.isLoadingData.isFalse) {
                    controller.moveToMainPage();
                    return SizedBox.shrink();
                  } else {
                    controller.initialData();
                    return Text('initial'.tr);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
