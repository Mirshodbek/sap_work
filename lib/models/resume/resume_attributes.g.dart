// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resume_attributes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Stage _$StageFromJson(Map<String, dynamic> json) {
  return Stage(
    json['id'] as int,
    json['company_name'] as String,
    json['position'] as String,
    json['description'] as String,
    json['period'] as String,
    json['updated_at'] as String,
    json['created_at'] as String,
  )..resume_id = json['resume_id'] as int;
}

Map<String, dynamic> _$StageToJson(Stage instance) => <String, dynamic>{
      'id': instance.id,
      'company_name': instance.company_name,
      'position': instance.position,
      'description': instance.description,
      'period': instance.period,
      'resume_id': instance.resume_id,
      'updated_at': instance.updated_at,
      'created_at': instance.created_at,
    };

Grade _$GradeFromJson(Map<String, dynamic> json) {
  return Grade(
    json['id'] as int,
    json['resume_id'] as int,
    json['university_name'] as String,
    json['grade'] as String,
    json['period'] as String,
    json['created_at'] as String,
    json['updated_at'] as String,
  );
}

Map<String, dynamic> _$GradeToJson(Grade instance) => <String, dynamic>{
      'id': instance.id,
      'university_name': instance.university_name,
      'grade': instance.grade,
      'period': instance.period,
      'resume_id': instance.resume_id,
      'updated_at': instance.updated_at,
      'created_at': instance.created_at,
    };
