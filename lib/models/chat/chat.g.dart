// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Chat _$ChatFromJson(Map<String, dynamic> json) {
  return Chat(
    json['user_id'] as int,
    json['company_id'] as int,
    json['from_user'] as int,
    json['body'] as String,
    json['updated_at'] as String,
    json['created_at'] as String,
    json['id'] as int,
  );
}

Map<String, dynamic> _$ChatToJson(Chat instance) => <String, dynamic>{
      'user_id': instance.user_id,
      'company_id': instance.company_id,
      'from_user': instance.from_user,
      'body': instance.body,
      'updated_at': instance.updated_at,
      'created_at': instance.created_at,
      'id': instance.id,
    };

AllChats _$AllChatsFromJson(Map<String, dynamic> json) {
  return AllChats(
    json['id'] as int,
    json['name'] as String,
    json['lastmsg'] as String,
  );
}

Map<String, dynamic> _$AllChatsToJson(AllChats instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'lastmsg': instance.lastmsg,
    };
