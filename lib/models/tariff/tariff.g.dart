// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tariff.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tariffs _$TariffsFromJson(Map<String, dynamic> json) {
  return Tariffs(
    json['subscribe'] as String,
    json['price'] as String,
  );
}

Map<String, dynamic> _$TariffsToJson(Tariffs instance) => <String, dynamic>{
      'subscribe': instance.subscribe,
      'price': instance.price,
    };
