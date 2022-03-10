import 'package:disko_app/entities/schedule/schedule_entity.dart';
import 'package:disko_app/screens/event_screen/event_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class EventScreen extends GetView<EventScreenController> {
  @override
  Widget build(BuildContext context) {
    ScheduleEntity entity = Get.arguments;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Center(
            child: Text(
              entity.name,
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: SizedBox(
            width: double.infinity,
            child: Card(
              child: Column(
                children: [
                  Text(
                    entity.price == '0' || entity.price == ''
                        ? 'undefine_price'.tr
                        : entity.price + 'currency'.tr,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    entity.startTime == ''
                        ? 'undefine_time'.tr
                        : entity.startTime,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  (entity.lat == 0 || entity.lng == 0)
                      ? SizedBox.shrink()
                      : Expanded(
                          child: YandexMap(
                            onMapCreated: (ycontroller) async {
                              await ycontroller.moveCamera(
                                CameraUpdate.newCameraPosition(
                                  CameraPosition(
                                    target: Point(
                                      longitude: entity.lng,
                                      latitude: entity.lat,
                                    ),
                                  ),
                                ),
                              );
                            },
                            mapObjects: [
                              Placemark(
                                mapId: MapObjectId("event_id_${entity.name}"),
                                point: Point(
                                  longitude: entity.lng,
                                  latitude: entity.lat,
                                ),
                                icon: PlacemarkIcon.single(
                                  PlacemarkIconStyle(
                                    image: BitmapDescriptor.fromAssetImage(
                                        'assets/images/img.png'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                  ExpansionTile(
                    title: Text("Who gonna"),
                    children: [
                      Wrap(
                        children: List.generate(
                          100,
                          (index) => Text(
                            index.toString(),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
