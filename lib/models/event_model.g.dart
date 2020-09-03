// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventModel _$EventModelFromJson(Map<String, dynamic> json) {
  return EventModel(
    id: json['id'] as int,
    createdAt: json['createdAt'] as String,
    updatedAt: json['updatedAt'] as String,
    deletedAt: json['deletedAt'] as String,
    type: json['type'] == null
        ? null
        : EventTypeModel.fromJson(json['type'] as Map<String, dynamic>),
    name: json['name'] as String,
    days: json['days'] as String,
    is_active: json['is_active'] as bool,
    description: json['description'] as String,
    price: json['price'] as int,
    start_time: json['start_time'] as String,
    logo: json['logo'] as String,
    lat: (json['lat'] as num)?.toDouble(),
    lng: (json['lng'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$EventModelToJson(EventModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'deletedAt': instance.deletedAt,
      'type': instance.type,
      'name': instance.name,
      'days': instance.days,
      'is_active': instance.is_active,
      'description': instance.description,
      'price': instance.price,
      'start_time': instance.start_time,
      'logo': instance.logo,
      'lat': instance.lat,
      'lng': instance.lng,
    };
