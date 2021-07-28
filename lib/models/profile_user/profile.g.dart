// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TypeProfileUser _$TypeProfileUserFromJson(Map<String, dynamic> json) {
  return TypeProfileUser(
    json['type'] as String,
    ProfileUser.fromJson(json['profile'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TypeProfileUserToJson(TypeProfileUser instance) =>
    <String, dynamic>{
      'type': instance.type,
      'profile': instance.profile,
    };

ProfileUser _$ProfileUserFromJson(Map<String, dynamic> json) {
  return ProfileUser(
    json['phone'] as String,
    json['name'] as String,
    json['avatar'] as String,
    (json['urls'] as List<dynamic>?)
        ?.map((e) => ContactProfile.fromJson(e as Map<String, dynamic>))
        .toList(),
    json['remember_token'] as String?,
    json['updated_at'] as String,
    json['created_at'] as String,
    json['id'] as int,
  );
}

Map<String, dynamic> _$ProfileUserToJson(ProfileUser instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'name': instance.name,
      'avatar': instance.avatar,
      'remember_token': instance.remember_token,
      'updated_at': instance.updated_at,
      'created_at': instance.created_at,
      'id': instance.id,
      'urls': instance.urls,
    };
