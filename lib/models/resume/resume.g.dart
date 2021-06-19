// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resume.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Resume _$ResumeFromJson(Map<String, dynamic> json) {
  return Resume(
    json['id'] as int,
    json['user_id'] as int,
    json['grade'] as String,
    json['stage'] as String,
    json['body'] as String,
    json['active'] as int,
    json['updated_at'] as String,
    json['created_at'] as String,
  );
}

Map<String, dynamic> _$ResumeToJson(Resume instance) => <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
      'grade': instance.grade,
      'stage': instance.stage,
      'body': instance.body,
      'active': instance.active,
      'updated_at': instance.updated_at,
      'created_at': instance.created_at,
    };
