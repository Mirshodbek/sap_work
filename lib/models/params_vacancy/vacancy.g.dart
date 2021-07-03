// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vacancy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ParamsVacancy _$ParamsVacancyFromJson(Map<String, dynamic> json) {
  return ParamsVacancy(
    name: json['name'] as String,
    city: json['city'] as String,
    grade: json['grade'] as String,
    stage: json['stage'] as String,
    schedule: json['schedule'] as String,
    body: json['body'] as String,
    minsalary: json['minsalary'] as String,
    maxsalary: json['maxsalary'] as String,
    type: json['type'] as String,
    abilities: json['abilities'] as String,
    category: json['category'] as int,
  );
}

Map<String, dynamic> _$ParamsVacancyToJson(ParamsVacancy instance) =>
    <String, dynamic>{
      'name': instance.name,
      'city': instance.city,
      'grade': instance.grade,
      'stage': instance.stage,
      'schedule': instance.schedule,
      'body': instance.body,
      'minsalary': instance.minsalary,
      'maxsalary': instance.maxsalary,
      'type': instance.type,
      'abilities': instance.abilities,
      'category': instance.category,
    };
