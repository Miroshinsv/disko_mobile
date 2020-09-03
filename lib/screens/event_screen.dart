import 'package:disko_app/models/event_model.dart';
import 'package:disko_app/widget/app_bar_widget.dart';
import 'package:disko_app/widget/map_widget.dart';
import 'package:disko_app/widget/text_widget.dart';
import 'package:flutter/material.dart';

class EventScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _State();
  }
}

class _State extends State<EventScreen> {
  @override
  Widget build(BuildContext context) {
    final EventModel eventModel =
        ModalRoute.of(context).settings.arguments as EventModel;
    return Scaffold(
      appBar: appBarMain(eventModel.name),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          width: double.infinity,
          child: Card(
            elevation: 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      eventScreenStartTime(eventModel.start_time),
                      eventScreenPrice(eventModel.price.toString()),
                    ],
                  ),
                  eventScreenAddress(eventModel.description),
                  SizedBox(height: 15),
                  eventModel.lng == 0
                      ? SizedBox.shrink()
                      : MapWidget(
                          eventModel: eventModel,
                        )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
