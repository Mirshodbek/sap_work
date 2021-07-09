import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vacancy.g.dart';


@JsonSerializable()
class LocalVacancyData extends Equatable {
  late final String name;
  late final int id;

  LocalVacancyData(this.name, this.id);

  factory LocalVacancyData.fromJson(Map<String, dynamic> json) =>
      _$LocalVacancyDataFromJson(json);

  Map<String, dynamic> toJson() => _$LocalVacancyDataToJson(this);

  static Map<String, dynamic> toMap(LocalVacancyData instance) =>
      <String, dynamic>{
        'name': instance.name,
        'id': instance.id,
      };

  static String encode(List<LocalVacancyData> vacancies) => json.encode(
        vacancies
            .map<Map<String, dynamic>>(
                (vacancy) => LocalVacancyData.toMap(vacancy))
            .toList(),
      );

  static List<LocalVacancyData> decode(String vacancies) =>
      (json.decode(vacancies) as List<dynamic>)
          .map<LocalVacancyData>((item) => LocalVacancyData.fromJson(item))
          .toList();

  @override
  List<Object?> get props => [name, id];
}
