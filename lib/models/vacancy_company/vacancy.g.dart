// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vacancy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VacancyCompany _$VacancyCompanyFromJson(Map<String, dynamic> json) {
  return VacancyCompany(
    json['id'] as int,
    json['name'] as String,
    json['city'] as String,
    json['grade'] as String,
    json['stage'] as String,
    json['schedule'] as String,
    json['minsalary'] as String,
    json['maxsalary'] as String,
    json['type'] as String,
    json['abilities'] as String,
    json['category'] as int,
    json['body'] as String,
    json['views'] as int,
    json['company_id'] as int,
    json['active'] as int,
  );
}

Map<String, dynamic> _$VacancyCompanyToJson(VacancyCompany instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'city': instance.city,
      'grade': instance.grade,
      'stage': instance.stage,
      'schedule': instance.schedule,
      'minsalary': instance.minsalary,
      'maxsalary': instance.maxsalary,
      'type': instance.type,
      'abilities': instance.abilities,
      'category': instance.category,
      'body': instance.body,
      'views': instance.views,
      'company_id': instance.company_id,
      'active': instance.active,
    };

LocalVacancyData _$LocalVacancyDataFromJson(Map<String, dynamic> json) {
  return LocalVacancyData(
    json['name'] as String,
    json['id'] as int,
  );
}

Map<String, dynamic> _$LocalVacancyDataToJson(LocalVacancyData instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
    };
