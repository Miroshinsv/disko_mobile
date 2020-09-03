import 'package:flutter/material.dart';

Text titleName(String text) {
  return Text(
    text,
    style: TextStyle(
        fontFamily: 'Montserrat', fontWeight: FontWeight.w700, fontSize: 29),
  );
}

Widget eventScreenPrice(String text) {
  return Text(
    "Цена: " + text,
    style: TextStyle(
      fontSize: 15,
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w700,
    ),
  );
}

Widget eventScreenAddress(String text) {
  return Text(
    "Адрес: " + text,
    style: TextStyle(
      fontSize: 15,
      fontFamily: "Montserrat",
    ),
  );
}

Widget eventScreenStartTime(String text) {
  return Text(
    "Начало в " + text,
    style: TextStyle(
        fontSize: 15, fontFamily: "Montserrat", fontWeight: FontWeight.w700),
  );
}

Widget eventAddressText(String text) {
  return Text(
    "Где: " + text,
    style:
        TextStyle(fontFamily: 'Montserrat', fontSize: 12, color: Colors.grey),
  );
}

Widget eventTitleName(String text) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 18.0,
      fontFamily: 'Montserrat',
    ),
  );
}

Text startTimeText(String text) {
  return Text(
    "Начало в " + text,
    style: TextStyle(
      fontSize: 12.0,
      fontFamily: 'Montserrat',
      color: Colors.grey,
    ),
  );
}
