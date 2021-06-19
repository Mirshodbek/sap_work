// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vacancy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Vacancy _$VacancyFromJson(Map<String, dynamic> json) {
  return Vacancy(
    json['id'] as int,
    json['name'] as String,
    json['city'] as String,
    json['lang'] as String,
    json['grade'] as String,
    json['stage'] as String,
    json['schedule'] as String,
    json['category'] as int,
    json['body'] as String,
    json['views'] as int,
    json['company_id'] as int,
    json['active'] as int,
    json['salary'] as String,
    json['type'] as String,
    json['created_at'] as String,
    json['updated_at'] as String,
    json['company'] == null
        ? null
        : Company.fromJson(json['company'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$VacancyToJson(Vacancy instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'city': instance.city,
      'lang': instance.lang,
      'grade': instance.grade,
      'stage': instance.stage,
      'schedule': instance.schedule,
      'category': instance.category,
      'body': instance.body,
      'views': instance.views,
      'company_id': instance.company_id,
      'active': instance.active,
      'salary': instance.salary,
      'type': instance.type,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'company': instance.company,
    };

Company _$CompanyFromJson(Map<String, dynamic> json) {
  return Company(
    json['id'] as int,
    json['name'] as String,
    json['address'] as String,
    json['bin'] as String,
    json['bik'] as String,
    json['inn'] as String,
    json['phone'] as String,
    json['created_at'] as String,
    json['updated_at'] as String,
  );
}

Map<String, dynamic> _$CompanyToJson(Company instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'bin': instance.bin,
      'bik': instance.bik,
      'inn': instance.inn,
      'phone': instance.phone,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
