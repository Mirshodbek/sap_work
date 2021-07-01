// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Message _$MessageFromJson(Map<String, dynamic> json) {
  return Message(
    json['user_id'] as int,
    json['company_id'] as int,
    json['from_user'] as int,
    json['body'] as String,
    json['updated_at'] as String,
    json['created_at'] as String,
    json['id'] as int,
  );
}

Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{
      'user_id': instance.user_id,
      'company_id': instance.company_id,
      'from_user': instance.from_user,
      'body': instance.body,
      'updated_at': instance.updated_at,
      'created_at': instance.created_at,
      'id': instance.id,
    };
