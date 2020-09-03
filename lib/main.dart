import 'package:disko_app/screens/event_screen.dart';
import 'package:disko_app/screens/main_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => MainScreen(),
        '/event': (context) => EventScreen(),
      },
    ),
  );
}
