import 'package:json_annotation/json_annotation.dart';

//"ID": 10,
//"CreatedAt": "2020-07-24T20:35:18.222Z",
//"UpdatedAt": "0001-01-01T00:00:00Z",
//"DeletedAt": null,
//"EventsTypeName": "Дискотека",
//"DayOfWeek": 3,
//"IsRepeatable": true

@JsonSerializable()
class TypeModel {
  int id;
  DateTime createdAt;
  DateTime updatedAt;
  DateTime deletedAt;
  String eventsTypeName;
  int dayOfWeek;
  bool isRepeatable;

  TypeModel(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.eventsTypeName,
      this.dayOfWeek,
      this.isRepeatable});

  factory TypeModel.fromJson(Map<String, dynamic> json) => _$TypeFromJson(json);

  Map<String, dynamic> toJson() => _$TypeToJson(this);
}

TypeModel _$TypeFromJson(Map<String, dynamic> json) {
  return TypeModel(
    id: json['ID'] as int,
    createdAt: DateTime.parse(json['CreatedAt']),
    updatedAt: DateTime.parse(json['UpdatedAt']),
    deletedAt: json['DeletedAt'] == null ? null : DateTime.parse(json['DeletedAt']),
    eventsTypeName: json['EventsTypeName'] as String,
    dayOfWeek: json['DayOfWeek'] as int,
    isRepeatable: json['IsRepeatable'] as bool,
  );
}

Map<String, dynamic> _$TypeToJson(TypeModel instance) => <String, dynamic>{
      'id': instance.id,
      'CreatedAt': instance.createdAt,
      'UpdatedAt': instance.updatedAt,
      'DeletedAt': instance.deletedAt,
      'EventsTypeName': instance.eventsTypeName,
      'DayOfWeek': instance.dayOfWeek,
      'IsRepeatable': instance.isRepeatable,
    };