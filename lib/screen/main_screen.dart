import 'package:disko_app/network/network_service.dart';
import 'package:disko_app/widget/appbars.dart';
import 'package:disko_app/widget/schedule_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<Widget> wlist = List();

class MainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _State();
  }
}

class _State extends State<MainScreen> {
  _State() {
    restClient
        .getScheduleToday()
        .then((value) => value.forEach((element) {
              wlist.add(GestureDetector(
                onTap: () {
                  restClient.getEventById(element.id).then((value) =>
                      Navigator.pushNamed(context, "/event", arguments: value));
                },
                child: scheduleCardList(element),
              ));
            }))
        .whenComplete(() => this.setState(() {
              wlist = wlist;
            }));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: mainScreenAppBar("Дискотеки сегодня"),
          body: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Сегодня",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.grey,
                      ),
                    )),
              ),
              Column(
                children: wlist.length > 0
                    ? wlist
                    : <Widget>[scheduleCardEmpty("Дискотек сегодня нет")],
              ),
              SizedBox(height: 10),
              Text("Дискотеки недели")
            ],
          )),
    );
  }
}
