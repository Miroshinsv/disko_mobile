import 'package:disko_app/entities/schedule/schedule_entity.dart';
import 'package:disko_app/routes/routes_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget scheduleCardWidget(ScheduleEntity entity) {
  return GestureDetector(
    onTap: () {
      Get.toNamed(
        RouteConfig.EVENT_SCREEN,
        arguments: entity,
      );
    },
    child: SizedBox(
      width: double.infinity,
      child: Card(
        child: Row(
          children: [
            ClipRRect(
              child: Image.asset(
                'assets/images/logo.png',
                height: 120,
                width: 120,
              ),
              borderRadius: BorderRadius.circular(18.0),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      entity.startTime == ''
                          ? 'undefine_time'.tr
                          : entity.startTime,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      entity.price == '0' || entity.price == ''
                          ? 'undefine_price'.tr
                          : entity.price + 'currency'.tr,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      entity.name,
                      style: TextStyle(fontSize: 18.0),
                    ),
                    SizedBox(height: 5),
                    Text(
                      entity.description,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
