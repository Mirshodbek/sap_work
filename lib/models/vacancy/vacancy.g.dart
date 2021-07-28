// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vacancy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginationVacancy _$PaginationVacancyFromJson(Map<String, dynamic> json) {
  return PaginationVacancy(
    json['current_page'] as int,
    (json['data'] as List<dynamic>)
        .map((e) => Vacancy.fromJson(e as Map<String, dynamic>))
        .toList(),
    json['first_page_url'] as String,
    json['last_page_url'] as String,
    json['next_page_url'] as String?,
    json['prev_page_url'] as String?,
    json['path'] as String,
    json['from'] as int?,
    json['to'] as int?,
    json['total'] as int,
    json['last_page'] as int,
    json['per_page'] as int,
    (json['links'] as List<dynamic>)
        .map((e) => LinksPagination.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$PaginationVacancyToJson(PaginationVacancy instance) =>
    <String, dynamic>{
      'current_page': instance.current_page,
      'data': instance.data,
      'first_page_url': instance.first_page_url,
      'last_page_url': instance.last_page_url,
      'next_page_url': instance.next_page_url,
      'prev_page_url': instance.prev_page_url,
      'path': instance.path,
      'from': instance.from,
      'to': instance.to,
      'total': instance.total,
      'last_page': instance.last_page,
      'per_page': instance.per_page,
      'links': instance.links,
    };

Vacancy _$VacancyFromJson(Map<String, dynamic> json) {
  return Vacancy(
    json['id'] as int,
    json['name'] as String,
    json['city'] as String,
    json['grade'] as String,
    json['stage'] as String,
    json['schedule'] as String,
    Feature.fromJson(json['category'] as Map<String, dynamic>),
    json['body'] as String,
    json['views'] as int,
    json['company_id'] as int,
    json['active'] as int,
    json['sphere_id'] as int?,
    json['minsalary'] as String,
    json['maxsalary'] as String,
    json['type'] as String,
    json['pivot'] == null
        ? null
        : Pivot.fromJson(json['pivot'] as Map<String, dynamic>),
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
      'sphere_id': instance.sphere_id,
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
      'pivot': instance.pivot,
    };

Pivot _$PivotFromJson(Map<String, dynamic> json) {
  return Pivot(
    json['user_id'] as int,
    json['vacancy_id'] as int,
  );
}

Map<String, dynamic> _$PivotToJson(Pivot instance) => <String, dynamic>{
      'user_id': instance.user_id,
      'vacancy_id': instance.vacancy_id,
    };
