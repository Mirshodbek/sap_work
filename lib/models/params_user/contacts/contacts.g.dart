// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contacts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ParamsContacts _$ParamsContactsFromJson(Map<String, dynamic> json) {
  return ParamsContacts(
    json['name'] as String,
    json['url'] as String,
  );
}

Map<String, dynamic> _$ParamsContactsToJson(ParamsContacts instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
