// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeedbackVacancy _$FeedbackVacancyFromJson(Map<String, dynamic> json) {
  return FeedbackVacancy(
    json['id'] as int,
    json['vacancy_id'] as int,
    json['expires_at'] as String?,
    json['answer'] as String?,
    json['created_at'] as String,
    json['updated_at'] as String,
    json['user'] as String,
    Resume.fromJson(json['resume'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$FeedbackVacancyToJson(FeedbackVacancy instance) =>
    <String, dynamic>{
      'id': instance.id,
      'vacancy_id': instance.vacancy_id,
      'expires_at': instance.expires_at,
      'answer': instance.answer,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'user': instance.user,
      'resume': instance.resume,
    };