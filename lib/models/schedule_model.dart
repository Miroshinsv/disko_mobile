import 'package:disko_app/models/type_model.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

//"ID": 10,
//"CreatedAt": "2020-07-26T19:52:30.799Z",
//"UpdatedAt": "0001-01-01T00:00:00Z",
//"DeletedAt": null,
//"Type": {
//"ID": 10,
//"CreatedAt": "2020-07-24T20:35:18.222Z",
//"UpdatedAt": "0001-01-01T00:00:00Z",
//"DeletedAt": null,
//"EventsTypeName": "Дискотека",
//"DayOfWeek": 3,
//"IsRepeatable": true
//},
//"Name": "Дискотека на тульской",
//"Days": null,
//"IsActive": true

@JsonSerializable()
class Schedule {
  int id;
  DateTime createdAt;
  DateTime updatedAt;
  DateTime deletedAt;
  TypeModel type;
  String name;
  int days;
  bool isActive;
  String description;
  int price;
  TimeOfDay startTime;

  Schedule({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.type,
    this.name,
    this.days,
    this.isActive,
    this.description,
    this.price,
    this.startTime,
  });

  factory Schedule.fromJson(Map<String, dynamic> json) =>
      _$ScheduleFromJson(json);

  Map<String, dynamic> toJson() => _$ScheduleToJson(this);
}

Schedule _$ScheduleFromJson(Map<String, dynamic> json) {
  var hour = json["StartTime"].toString().split(":")[0];
  var minute = json["StartTime"].toString().split(":")[1];
  return Schedule(
    id: json['ID'] as int,
    createdAt: DateTime.parse(json['CreatedAt']),
    updatedAt: DateTime.parse(json['UpdatedAt']),
    deletedAt:
        json['DeletedAt'] == null ? null : DateTime.parse(json['DeletedAt']),
    type: TypeModel.fromJson(json["Type"]),
    name: json['Name'] as String,
    days: json['Days'] as int,
    isActive: json['IsActive'] as bool,
    description: json['Description'] as String,
    price: json['Price'] as int,
    startTime: TimeOfDay(hour: int.parse(hour), minute: int.parse(minute)),
  );
}

Map<String, dynamic> _$ScheduleToJson(Schedule instance) => <String, dynamic>{
      'id': instance.id,
      'CreatedAt': instance.createdAt,
      'UpdatedAt': instance.updatedAt,
      'DeletedAt': instance.deletedAt,
      'Name': instance.name,
      'Days': instance.days,
      'IsActive': instance.isActive,
      'Description': instance.description,
      'Price': instance.price,
      'StartTime': instance.startTime,
    };
