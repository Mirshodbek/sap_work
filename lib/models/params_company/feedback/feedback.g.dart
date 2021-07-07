// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ParamsFeedback _$ParamsFeedbackFromJson(Map<String, dynamic> json) {
  return ParamsFeedback(
    json['date'] as String,
    json['contact_type'] as String,
    json['contact'] as String,
    json['answer'] as String,
    json['resume'] as int,
    json['vacancy'] as int,
  );
}

Map<String, dynamic> _$ParamsFeedbackToJson(ParamsFeedback instance) =>
    <String, dynamic>{
      'date': instance.date,
      'contact_type': instance.contact_type,
      'contact': instance.contact,
      'answer': instance.answer,
      'resume': instance.resume,
      'vacancy': instance.vacancy,
    };
