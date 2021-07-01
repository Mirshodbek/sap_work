import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vacancy.g.dart';

@JsonSerializable()
class VacancyCompany extends Equatable {
  late final int id;
  late final String name;
  late final String city;
  late final String grade;
  late final String stage;
  late final String schedule;
  late final String minsalary;
  late final String maxsalary;
  late final String type;
  late final String abilities;
  late final int category;
  late final String body;
  late final int views;

  // ignore: non_constant_identifier_names
  late final int company_id;
  late final int active;

  VacancyCompany(
    this.id,
    this.name,
    this.city,
    this.grade,
    this.stage,
    this.schedule,
    this.minsalary,
    this.maxsalary,
    this.type,
    this.abilities,
    this.category,
    this.body,
    this.views,
    this.company_id,
    this.active,
  );

  factory VacancyCompany.fromJson(Map<String, dynamic> json) =>
      _$VacancyCompanyFromJson(json);

  Map<String, dynamic> toJson() => _$VacancyCompanyToJson(this);

  static Map<String, dynamic> toMap(VacancyCompany instance) =>
      <String, dynamic>{
        'id': instance.id,
        'name': instance.name,
        'city': instance.city,
        'grade': instance.grade,
        'stage': instance.stage,
        'schedule': instance.schedule,
        'minsalary': instance.minsalary,
        'maxsalary': instance.maxsalary,
        'type': instance.type,
        'abilities': instance.abilities,
        'category': instance.category,
        'body': instance.body,
        'views': instance.views,
        'company_id': instance.company_id,
        'active': instance.active,
      };

  static String encode(List<VacancyCompany> vacancies) => json.encode(
        vacancies
            .map<Map<String, dynamic>>(
                (vacancy) => VacancyCompany.toMap(vacancy))
            .toList(),
      );

  static List<VacancyCompany> decode(String vacancies) =>
      (json.decode(vacancies) as List<dynamic>)
          .map<VacancyCompany>((item) => VacancyCompany.fromJson(item))
          .toList();

  @override
  List<Object?> get props => [
        id,
        name,
        city,
        grade,
        stage,
        schedule,
        minsalary,
        maxsalary,
        type,
        abilities,
        category,
        body,
        views,
        company_id,
        active,
      ];
}

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
