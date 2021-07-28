// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TypeProfileCompany _$TypeProfileCompanyFromJson(Map<String, dynamic> json) {
  return TypeProfileCompany(
    json['type'] as String,
    ProfileCompany.fromJson(json['profile'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TypeProfileCompanyToJson(TypeProfileCompany instance) =>
    <String, dynamic>{
      'type': instance.type,
      'profile': instance.profile,
    };

ProfileCompany _$ProfileCompanyFromJson(Map<String, dynamic> json) {
  return ProfileCompany(
    json['id'] as int,
    json['name'] as String,
    json['address'] as String,
    (json['urls'] as List<dynamic>?)
        ?.map((e) => ContactProfile.fromJson(e as Map<String, dynamic>))
        .toList(),
    json['avatar'] as String,
    json['bin'] as String,
    json['bik'] as String,
    json['inn'] as String,
    json['phone'] as String,
  );
}

Map<String, dynamic> _$ProfileCompanyToJson(ProfileCompany instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'avatar': instance.avatar,
      'bin': instance.bin,
      'bik': instance.bik,
      'inn': instance.inn,
      'phone': instance.phone,
      'urls': instance.urls,
    };
