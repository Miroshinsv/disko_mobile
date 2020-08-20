import 'package:disko_app/screen/event_screen.dart';
import 'package:disko_app/screen/main_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MainScreen(),
        '/event': (context) => EventScreen(),
      },
    ),
  );
}
