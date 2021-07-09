// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resume.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Resume _$ResumeFromJson(Map<String, dynamic> json) {
  return Resume(
    json['id'] as int,
    json['user_id'] as int,
    json['name'] as String,
    json['category_id'] as int,
    json['body'] as String,
    json['abilities'] as String,
    json['updated_at'] as String,
    json['created_at'] as String,
    json['email'] as String,
    json['phone'] as String,
    json['active'] as int,
    (json['grades'] as List<dynamic>)
        .map((e) => Grade.fromJson(e as Map<String, dynamic>))
        .toList(),
    (json['stages'] as List<dynamic>)
        .map((e) => Stage.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ResumeToJson(Resume instance) => <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
      'category_id': instance.category_id,
      'body': instance.body,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'abilities': instance.abilities,
      'updated_at': instance.updated_at,
      'created_at': instance.created_at,
      'active': instance.active,
      'grades': instance.grades,
      'stages': instance.stages,
    };
