// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TypeProfileHunter _$TypeProfileHunterFromJson(Map<String, dynamic> json) {
  return TypeProfileHunter(
    json['type'] as String,
    ProfileHunter.fromJson(json['profile'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TypeProfileHunterToJson(TypeProfileHunter instance) =>
    <String, dynamic>{
      'type': instance.type,
      'profile': instance.profile,
    };

ProfileHunter _$ProfileHunterFromJson(Map<String, dynamic> json) {
  return ProfileHunter(
    json['phone'] as String,
    json['name'] as String,
    json['remember_token'] as String?,
    json['updated_at'] as String,
    json['created_at'] as String,
    json['id'] as int,
  );
}

Map<String, dynamic> _$ProfileHunterToJson(ProfileHunter instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'name': instance.name,
      'remember_token': instance.remember_token,
      'updated_at': instance.updated_at,
      'created_at': instance.created_at,
      'id': instance.id,
    };

ProfileEmployer _$ProfileEmployerFromJson(Map<String, dynamic> json) {
  return ProfileEmployer(
    json['name'] as String,
    json['phone'] as String,
    json['bin'] as String,
    json['bik'] as String,
    json['address'] as String,
    json['inn'] as String,
    json['updated_at'] as String,
    json['created_at'] as String,
    json['id'] as int,
  );
}

Map<String, dynamic> _$ProfileEmployerToJson(ProfileEmployer instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
      'bin': instance.bin,
      'bik': instance.bik,
      'address': instance.address,
      'inn': instance.inn,
      'updated_at': instance.updated_at,
      'created_at': instance.created_at,
      'id': instance.id,
    };
