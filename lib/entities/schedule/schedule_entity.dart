import 'package:json_annotation/json_annotation.dart';

part 'schedule_entity.g.dart';

@JsonSerializable()
class ScheduleEntity {
  @JsonKey(name: 'ID')
  final int id;
  @JsonKey(name: 'Type')
  final Type type;
  @JsonKey(name: 'Polls')
  final List<Polls> polls;
  final String name;
  final String days;
  @JsonKey(name: 'is_active')
  final bool isActive;
  final String description;
  final String price;
  @JsonKey(name: 'start_time')
  final String startTime;
  final String logo;
  final double lat;
  final double lng;
  @JsonKey(name: 'City')
  final City city;

  ScheduleEntity({
    required this.id,
    required this.type,
    required this.polls,
    required this.name,
    required this.days,
    required this.isActive,
    required this.description,
    required this.price,
    required this.startTime,
    required this.logo,
    required this.lat,
    required this.lng,
    required this.city,
  });

  factory ScheduleEntity.fromJson(Map<String, dynamic> json) =>
      _$ScheduleEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ScheduleEntityToJson(this);

  @override
  String toString() {
    return 'ScheduleEntity{id: $id, type: $type, polls: $polls, name: $name, days: $days, isActive: $isActive, description: $description, price: $price, startTime: $startTime, logo: $logo, lat: $lat, lng: $lng, city: $city}';
  }
}

@JsonSerializable()
class City {
  @JsonKey(name: 'ID')
  final int id;
  @JsonKey(name: 'city_name')
  final String cityName;
  final String country;

  City({
    required this.id,
    required this.cityName,
    required this.country,
  });

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);

  Map<String, dynamic> toJson() => _$CityToJson(this);

  @override
  String toString() {
    return 'City{id: $id, cityName: $cityName, country: $country}';
  }
}

@JsonSerializable()
class Polls {
  @JsonKey(name: 'ID')
  final int id;
  final String? name;
  final String? subject;
  @JsonKey(name: 'IsHidden')
  final bool isHidden;
  @JsonKey(name: 'DueDate')
  final DateTime dueDate;

  Polls({
    required this.id,
    this.name,
    this.subject,
    required this.isHidden,
    required this.dueDate,
  });

  factory Polls.fromJson(Map<String, dynamic> json) => _$PollsFromJson(json);

  Map<String, dynamic> toJson() => _$PollsToJson(this);

  @override
  String toString() {
    return 'Polls{id: $id, name: $name, subject: $subject, isHidden: $isHidden, dueDate: $dueDate}';
  }
}

@JsonSerializable()
class Type {
  @JsonKey(name: 'ID')
  final int id;
  @JsonKey(name: 'EventsTypeName')
  final String eventsTypeName;
  @JsonKey(name: 'IsRepeatable')
  final bool isRepeatable;

  Type({
    required this.id,
    required this.eventsTypeName,
    required this.isRepeatable,
  });

  factory Type.fromJson(Map<String, dynamic> json) => _$TypeFromJson(json);

  Map<String, dynamic> toJson() => _$TypeToJson(this);

  @override
  String toString() {
    return 'Type{id: $id, eventsTypeName: $eventsTypeName, isRepeatable: $isRepeatable}';
  }
}
