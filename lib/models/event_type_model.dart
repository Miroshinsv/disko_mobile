import 'package:json_annotation/json_annotation.dart';

part 'event_type_model.g.dart';

@JsonSerializable()
class EventTypeModel {
  int id;
  String createdAt;
  String updatedAt;
  String deletedAt;
  String eventsTypeName;
  bool isRepeatable;

  EventTypeModel(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.eventsTypeName,
      this.isRepeatable});

  factory EventTypeModel.fromJson(Map<String, dynamic> json) =>
      _$EventTypeModelFromJson(json);

  Map<String, dynamic> toJson() => _$EventTypeModelToJson(this);
}
