// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vacancy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FavoriteVacancy _$FavoriteVacancyFromJson(Map<String, dynamic> json) {
  return FavoriteVacancy(
    Vacancy.fromJson(json['vacancy'] as Map<String, dynamic>),
    json['isFavorite'] as bool,
    json['isFeedback'] as bool,
    DateTime.parse(json['dateTime'] as String),
  );
}

Map<String, dynamic> _$FavoriteVacancyToJson(FavoriteVacancy instance) =>
    <String, dynamic>{
      'vacancy': instance.vacancy,
      'isFavorite': instance.isFavorite,
      'isFeedback': instance.isFeedback,
      'dateTime': instance.dateTime.toIso8601String(),
    };

Vacancy _$VacancyFromJson(Map<String, dynamic> json) {
  return Vacancy(
    json['id'] as int,
    json['name'] as String,
    json['city'] as String,
    json['grade'] as String,
    json['stage'] as String,
    json['schedule'] as String,
    Category.fromJson(json['category'] as Map<String, dynamic>),
    json['body'] as String,
    json['views'] as int,
    json['company_id'] as int,
    json['active'] as int,
    json['minsalary'] as String,
    json['maxsalary'] as String,
    json['type'] as String,
    json['abilities'] as String,
    json['created_at'] as String,
    json['updated_at'] as String,
    ProfileCompany.fromJson(json['company'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$VacancyToJson(Vacancy instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'city': instance.city,
      'grade': instance.grade,
      'stage': instance.stage,
      'schedule': instance.schedule,
      'category': instance.category,
      'body': instance.body,
      'views': instance.views,
      'company_id': instance.company_id,
      'active': instance.active,
      'minsalary': instance.minsalary,
      'maxsalary': instance.maxsalary,
      'type': instance.type,
      'abilities': instance.abilities,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'company': instance.company,
    };
