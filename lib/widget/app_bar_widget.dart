import 'package:flutter/material.dart';

AppBar appBarMain(String appBarText) {
  return AppBar(
    elevation: 0,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(1),
            child: Text(
              appBarText,
              style: TextStyle(color: Colors.black, fontFamily: 'ALS Sector'),
            ),
          ),
        ),
        IconButton(
          icon: Icon(Icons.notifications),
          onPressed: null,
        )
      ],
    ),
    backgroundColor: Colors.white70,
  );
}
