import 'package:disko_app/models/schedule_model.dart';
import 'package:disko_app/widget/appbars.dart';
import 'package:flutter/material.dart';

class EventScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Schedule schedule = ModalRoute.of(context).settings.arguments as Schedule;
    return MaterialApp(
      home: Scaffold(
        appBar: mainScreenAppBar(schedule.name),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 5,
                child: Column(
                  children: <Widget>[
                    Text(schedule.isActive
                        ? "Дискотека будет!"
                        : "Дискотека отменена!"),
                    schedule.price == 0
                        ? Text("Цена: уточняйте у организатора")
                        : Text("Цена: " + schedule.price.toString()),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
