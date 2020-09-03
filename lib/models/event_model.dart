import 'package:disko_app/models/event_type_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'event_model.g.dart';

@JsonSerializable()
class EventModel {
  int id;
  String createdAt;
  String updatedAt;
  String deletedAt;
  EventTypeModel type;
  String name;
  String days;
  bool is_active;
  String description;
  int price;
  String start_time;
  String logo;
  double lat;
  double lng;

  EventModel(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.type,
      this.name,
      this.days,
      // ignore: non_constant_identifier_names
      this.is_active,
      this.description,
      this.price,
      // ignore: non_constant_identifier_names
      this.start_time,
      this.logo,
      this.lat,
      this.lng});

  factory EventModel.fromJson(Map<String, dynamic> json) =>
      _$EventModelFromJson(json);

  Map<String, dynamic> toJson() => _$EventModelToJson(this);
}
