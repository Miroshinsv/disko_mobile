import 'package:disko_app/models/schedule_model.dart';
import 'package:flutter/material.dart';

Widget scheduleCardView(Schedule schedule) {
  return SizedBox(
    width: double.infinity,
    height: double.infinity,
    child: Padding(
      padding: EdgeInsets.all(10),
      child: Card(),
    ),
  );
}

Widget scheduleCardEmpty(String text) {
  return SizedBox(
    width: double.infinity,
    child: Card(
      margin: EdgeInsets.all(5),
      child: Padding(
        padding: EdgeInsets.all(5),
        child: Center(child: Text(text)),
      ),
    ),
  );
}

Widget scheduleCardList(Schedule schedule) {
  return SizedBox(
    width: double.infinity,
    child: Card(
      margin: EdgeInsets.all(5),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[Text(schedule.name), Text("DJ трололошка")],
            ),
            schedule.isActive
                ? Text(
                    "Сегодня будет",
                    style: TextStyle(color: Colors.green),
                  )
                : Text(
                    "Сегодня не будет",
                    style: TextStyle(color: Colors.red),
                  ),
          ],
        ),
      ),
    ),
  );
}
