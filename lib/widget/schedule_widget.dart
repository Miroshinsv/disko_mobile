import 'package:disko_app/models/event_model.dart';
import 'package:disko_app/network/rest_client.dart';
import 'package:disko_app/utils/date.dart';
import 'package:disko_app/widget/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScheduleTomorrow extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateTomorrow();
  }
}

class _StateTomorrow extends State<ScheduleTomorrow> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: FutureBuilder<List<EventModel>>(
        future: restClient.getAllEvents(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: Text('Loading...'));
          } else {
            if (snapshot.hasError)
              return Center(child: Text('Error: ${snapshot.error}'));
            else {
              return SingleChildScrollView(
                child: Row(
                  children: snapshot.data
                      .where((element) => element.days == getTomorrowName())
                      .map((e) => GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, "/event",
                                  arguments: e);
                            },
                            child: _scheduleCardTomorrow(e),
                          ))
                      .toList(),
                ),
              );
            }
          }
        },
      ),
    );
  }
}

class ScheduleToday extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateToday();
  }
}

class _StateToday extends State<ScheduleToday> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<EventModel>>(
      future: restClient.getScheduleToday(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: Text('Loading...'));
        } else {
          if (snapshot.hasError)
            return Center(child: Text('Error: ${snapshot.error}'));
          else {
            return SingleChildScrollView(
              child: Column(
                children: snapshot.data
                    .map((e) => GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "/event",
                                arguments: e);
                          },
                          child: _scheduleCard(e),
                        ))
                    .toList(),
              ),
            );
          }
        }
      },
    );
  }
}

Widget _scheduleCardTomorrow(EventModel model) {
  return Padding(
    padding: EdgeInsets.all(5),
    child: Container(
      height: 150,
      width: 420,
      child: Card(
        elevation: 3,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            model.logo == ""
                ? SizedBox.shrink()
                : Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    margin: EdgeInsets.all(8.0),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Image.network(
                      model.logo,
                      height: 120,
                      width: 120,
                      fit: BoxFit.fill,
                    ),
                  ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    startTimeText(model.start_time),
                    SizedBox(height: 1),
                    eventTitleName(model.name),
                    SizedBox(height: 3),
                    eventAddressText(model.description),
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

Widget _scheduleCard(EventModel model) {
  return Padding(
    padding: EdgeInsets.all(5),
    child: Container(
      width: double.infinity,
      child: Card(
        elevation: 3,
        child: Wrap(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                model.logo == ""
                    ? SizedBox.shrink()
                    : Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        margin: EdgeInsets.all(8.0),
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Image.network(
                          model.logo,
                          height: 120,
                          width: 120,
                          fit: BoxFit.fill,
                        ),
                      ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        startTimeText(model.start_time),
                        SizedBox(height: 1),
                        eventTitleName(model.name),
                        SizedBox(height: 3),
                        eventAddressText(model.description),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
