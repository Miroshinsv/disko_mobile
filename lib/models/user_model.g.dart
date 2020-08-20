part of 'user_model.dart';

//String id;
//String firstName;
//String sureName;
//String middleName;
//String email;
//String phone;

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    id: json['id'] as int,
    firstName: json['firstName'] as String,
    sureName: json['sureName'] as String,
    middleName: json['middleName'] as String,
    email: json['email'] as String,
    phone: json['email'] as String,
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'firstName': instance.firstName,
      'sureName': instance.sureName,
      'middleName': instance.middleName,
      'email': instance.email,
      'phone': instance.phone,
    };
