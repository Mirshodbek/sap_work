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
    json['body'] as String,
    json['abilities'] as String,
    json['updated_at'] as String,
    json['created_at'] as String,
    json['active'] as int,
    (json['grade'] as List<dynamic>?)
        ?.map((e) => Grade.fromJson(e as Map<String, dynamic>))
        .toList(),
    (json['stage'] as List<dynamic>?)
        ?.map((e) => Stage.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ResumeToJson(Resume instance) => <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
      'body': instance.body,
      'name': instance.name,
      'abilities': instance.abilities,
      'updated_at': instance.updated_at,
      'created_at': instance.created_at,
      'active': instance.active,
      'grade': instance.grade,
      'stage': instance.stage,
    };
