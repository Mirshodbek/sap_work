// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeedbackResume _$FeedbackResumeFromJson(Map<String, dynamic> json) {
  return FeedbackResume(
    json['id'] as int,
    json['vacancy_id'] as int,
    json['resume_id'] as int,
    json['answer'] as String?,
    json['expires_at'] as String?,
    json['date'] as String?,
    json['contact'] as String?,
    json['accepted'] as String?,
    json['contact_type'] as String?,
    json['updated_at'] as String,
    json['created_at'] as String,
    Vacancy.fromJson(json['vacancy'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$FeedbackResumeToJson(FeedbackResume instance) =>
    <String, dynamic>{
      'id': instance.id,
      'vacancy_id': instance.vacancy_id,
      'resume_id': instance.resume_id,
      'answer': instance.answer,
      'expires_at': instance.expires_at,
      'date': instance.date,
      'contact': instance.contact,
      'accepted': instance.accepted,
      'contact_type': instance.contact_type,
      'updated_at': instance.updated_at,
      'created_at': instance.created_at,
      'vacancy': instance.vacancy,
    };
