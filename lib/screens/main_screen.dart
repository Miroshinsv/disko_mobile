import 'package:disko_app/widget/app_bar_widget.dart';
import 'package:disko_app/widget/schedule_widget.dart';
import 'package:disko_app/widget/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _State();
  }
}

class _State extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMain("Дискотеки сегодня"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            titleName("Сегодня"),
            ScheduleToday(),
            titleName("Завтра"),
            ScheduleTomorrow(),
          ],
        ),
      ),
    );
  }
}
