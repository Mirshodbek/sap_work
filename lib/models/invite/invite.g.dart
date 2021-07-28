// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invite.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Invite _$InviteFromJson(Map<String, dynamic> json) {
  return Invite(
    json['id'] as int,
    json['vacancy_id'] as int,
    json['resume_id'] as int,
    json['date'] as String?,
    json['contact_type'] as String?,
    json['contact'] as String?,
    json['expires_at'] as String,
    json['answer'] as String,
    json['accepted'] as int?,
    json['created_at'] as String,
    json['updated_at'] as String,
    VacancyInvite.fromJson(json['vacancy'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$InviteToJson(Invite instance) => <String, dynamic>{
      'id': instance.id,
      'vacancy_id': instance.vacancy_id,
      'resume_id': instance.resume_id,
      'date': instance.date,
      'contact_type': instance.contact_type,
      'contact': instance.contact,
      'expires_at': instance.expires_at,
      'answer': instance.answer,
      'accepted': instance.accepted,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'vacancy': instance.vacancy,
    };

VacancyInvite _$VacancyInviteFromJson(Map<String, dynamic> json) {
  return VacancyInvite(
    json['id'] as int,
    json['name'] as String,
    json['city'] as String,
    json['grade'] as String,
    json['stage'] as String,
    json['schedule'] as String,
    json['minsalary'] as String,
    json['maxsalary'] as String,
    json['type'] as String,
    json['abilities'] as String,
    json['category'] as int,
    json['sphere_id'] as int?,
    json['body'] as String,
    json['views'] as int,
    json['company_id'] as int,
    json['active'] as int,
    json['created_at'] as String,
    json['updated_at'] as String,
  );
}

Map<String, dynamic> _$VacancyInviteToJson(VacancyInvite instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'city': instance.city,
      'grade': instance.grade,
      'stage': instance.stage,
      'schedule': instance.schedule,
      'minsalary': instance.minsalary,
      'maxsalary': instance.maxsalary,
      'type': instance.type,
      'abilities': instance.abilities,
      'category': instance.category,
      'sphere_id': instance.sphere_id,
      'body': instance.body,
      'views': instance.views,
      'company_id': instance.company_id,
      'active': instance.active,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
