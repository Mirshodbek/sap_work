// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'block.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Block _$BlockFromJson(Map<String, dynamic> json) {
  return Block(
    json['title'] as String,
    json['hintText1'] as String,
    json['hintText2'] as String,
    json['hintText3'] as String,
    json['hintText4'] as String,
    json['id'] as int,
    json['text1'] as int,
    json['text2'] as int,
    json['text3'] as int,
    json['text4'] as int,
    isSelect: json['isSelect'] as bool,
  );
}

Map<String, dynamic> _$BlockToJson(Block instance) => <String, dynamic>{
      'title': instance.title,
      'hintText1': instance.hintText1,
      'hintText2': instance.hintText2,
      'hintText3': instance.hintText3,
      'hintText4': instance.hintText4,
      'isSelect': instance.isSelect,
      'id': instance.id,
      'text1': instance.text1,
      'text2': instance.text2,
      'text3': instance.text3,
      'text4': instance.text4,
    };
