// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resume.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ParamsResume _$ParamsResumeFromJson(Map<String, dynamic> json) {
  return ParamsResume(
    body: json['body'],
    abilities: json['abilities'],
    name: json['name'],
    phone: json['phone'],
    email: json['email'],
    city: json['city'],
    category: json['category'],
    stages: json['stages'],
    grades: json['grades'],
  );
}

Map<String, dynamic> _$ParamsResumeToJson(ParamsResume instance) =>
    <String, dynamic>{
      'body': instance.body,
      'abilities': instance.abilities,
      'name': instance.name,
      'phone': instance.phone,
      'email': instance.email,
      'city': instance.city,
      'category': instance.category,
      'stages': instance.stages,
      'grades': instance.grades,
    };
