import 'package:flutter/material.dart';

AppBar mainScreenAppBar(String appBarText) {
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: Colors.white30,
    elevation: 0,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          appBarText,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 25,
          ),
        ),
        IconButton(
          icon: Icon(Icons.notifications),
        ),
      ],
    ),
  );
}
