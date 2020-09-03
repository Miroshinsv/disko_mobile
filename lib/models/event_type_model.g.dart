// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventTypeModel _$EventTypeModelFromJson(Map<String, dynamic> json) {
  return EventTypeModel(
    id: json['id'] as int,
    createdAt: json['createdAt'] as String,
    updatedAt: json['updatedAt'] as String,
    deletedAt: json['deletedAt'] as String,
    eventsTypeName: json['eventsTypeName'] as String,
    isRepeatable: json['isRepeatable'] as bool,
  );
}

Map<String, dynamic> _$EventTypeModelToJson(EventTypeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'deletedAt': instance.deletedAt,
      'eventsTypeName': instance.eventsTypeName,
      'isRepeatable': instance.isRepeatable,
    };
