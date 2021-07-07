// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vacancy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ParamsVacancy _$ParamsVacancyFromJson(Map<String, dynamic> json) {
  return ParamsVacancy(
    name: json['name'],
    city: json['city'],
    grade: json['grade'],
    stage: json['stage'],
    schedule: json['schedule'],
    body: json['body'],
    minsalary: json['minsalary'],
    maxsalary: json['maxsalary'],
    type: json['type'],
    abilities: json['abilities'],
    category: json['category'],
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
