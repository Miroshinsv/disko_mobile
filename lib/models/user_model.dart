import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class User {
  int id;
  String firstName;
  String sureName;
  String middleName;
  String email;
  String phone;

  User({this.id, this.firstName, this.sureName, this.middleName, this.email, this.phone});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}