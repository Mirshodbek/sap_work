// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'links.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LinksPagination _$LinksPaginationFromJson(Map<String, dynamic> json) {
  return LinksPagination(
    json['url'] as String?,
    json['label'] as String,
    json['active'] as bool,
  );
}

Map<String, dynamic> _$LinksPaginationToJson(LinksPagination instance) =>
    <String, dynamic>{
      'url': instance.url,
      'label': instance.label,
      'active': instance.active,
    };
