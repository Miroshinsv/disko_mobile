import 'package:disko_app/screens/main_screen/main_screen_controller.dart';
import 'package:disko_app/screens/main_screen/widgets/card_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class MainScreen extends GetView<MainScreenController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'today'.tr,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Column(
                  children: controller.scheduleToday.isEmpty
                      ? [
                          Text('schedule_empty'.tr),
                        ]
                      : controller.scheduleToday
                          .map((e) => scheduleCardWidget(e!))
                          .toList(),
                ),
                Card(
                  child: ExpansionTile(
                      title: Text('schedule_week'.tr),
                      children: controller.schedulePeriodToday.entries
                          .map(
                            (e) => Column(
                              children: [
                                e.value.isEmpty
                                    ? Text('schedule_empty'.tr)
                                    : Text(
                                        DateFormat('EEEE')
                                            .format(e.key)
                                            .toLowerCase()
                                            .tr,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                Column(
                                  children: e.value
                                      .map((e) => scheduleCardWidget(e!))
                                      .toList(),
                                ),
                              ],
                            ),
                          )
                          .toList()),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
