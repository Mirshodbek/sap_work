// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resume.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginationResume _$PaginationResumeFromJson(Map<String, dynamic> json) {
  return PaginationResume(
    json['current_page'] as int?,
    (json['data'] as List<dynamic>)
        .map((e) => Resume.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$PaginationResumeToJson(PaginationResume instance) =>
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

Resume _$ResumeFromJson(Map<String, dynamic> json) {
  return Resume(
    json['id'] as int,
    json['user_id'] as int,
    json['name'] as String,
    json['user'] == null
        ? null
        : ProfileUser.fromJson(json['user'] as Map<String, dynamic>),
    json['category_id'] as int,
    json['sphere_id'] as int,
    json['body'] as String,
    json['abilities'] as String,
    json['updated_at'] as String,
    json['created_at'] as String,
    json['email'] as String,
    json['phone'] as String,
    json['active'] as int,
    json['city'] as String,
    (json['grades'] as List<dynamic>?)
        ?.map((e) => Grade.fromJson(e as Map<String, dynamic>))
        .toList(),
    (json['stages'] as List<dynamic>?)
        ?.map((e) => Stage.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ResumeToJson(Resume instance) => <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
      'category_id': instance.category_id,
      'sphere_id': instance.sphere_id,
      'body': instance.body,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'city': instance.city,
      'abilities': instance.abilities,
      'user': instance.user,
      'updated_at': instance.updated_at,
      'created_at': instance.created_at,
      'active': instance.active,
      'grades': instance.grades,
      'stages': instance.stages,
    };
