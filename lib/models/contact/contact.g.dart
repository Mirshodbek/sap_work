// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactProfile _$ContactProfileFromJson(Map<String, dynamic> json) {
  return ContactProfile(
    json['name'] as String,
    json['url'] as String,
    json['user_id'] as int?,
    json['updated_at'] as String,
    json['created_at'] as String,
    json['id'] as int,
  );
}

Map<String, dynamic> _$ContactProfileToJson(ContactProfile instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
      'user_id': instance.user_id,
      'updated_at': instance.updated_at,
      'created_at': instance.created_at,
      'id': instance.id,
    };
