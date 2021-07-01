import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:sap_work/models/category/category.dart';
import 'package:sap_work/models/profile_company/profile.dart';

part 'vacancy.g.dart';

@JsonSerializable()
class FavoriteVacancy extends Equatable {
  final Vacancy vacancy;
  final bool isFavorite;
  final bool isFeedback;
  final DateTime dateTime;

  FavoriteVacancy(
      this.vacancy, this.isFavorite, this.isFeedback, this.dateTime);

  FavoriteVacancy copyWith({bool? isFavorite, bool? isFeedback}) {
    return FavoriteVacancy(
      this.vacancy,
      isFavorite ?? this.isFavorite,
      isFeedback ?? this.isFeedback,
      this.dateTime,
    );
  }

  factory FavoriteVacancy.fromJson(Map<String, dynamic> json) =>
      _$FavoriteVacancyFromJson(json);

  static Map<String, dynamic> toJson(FavoriteVacancy vacancy) =>
      _$FavoriteVacancyToJson(vacancy);

  static String encode(List<FavoriteVacancy> vacancies) => json.encode(
        vacancies
            .map<Map<String, dynamic>>(
                (vacancy) => FavoriteVacancy.toJson(vacancy))
            .toList(),
      );

  static List<FavoriteVacancy> decode(String vacancies) =>
      (json.decode(vacancies) as List<dynamic>)
          .map<FavoriteVacancy>((item) => FavoriteVacancy.fromJson(item))
          .toList();

  @override
  List<Object?> get props => [vacancy, isFavorite, isFeedback, dateTime];
}

@JsonSerializable()
class Vacancy extends Equatable {
  late final int id;
  late final String name;
  late final String city;
  late final String grade;
  late final String stage;
  late final String schedule;
  late final Category category;
  late final String body;
  late final int views;

  // ignore: non_constant_identifier_names
  late final int company_id;
  late final int active;
  late final String minsalary;
  late final String maxsalary;
  late final String type;
  late final String abilities;

  // ignore: non_constant_identifier_names
  late final String created_at;

  // ignore: non_constant_identifier_names
  late final String updated_at;
  late final ProfileCompany company;

  Vacancy(
    this.id,
    this.name,
    this.city,
    this.grade,
    this.stage,
    this.schedule,
    this.category,
    this.body,
    this.views,
    this.company_id,
    this.active,
    this.minsalary,
    this.maxsalary,
    this.type,
    this.abilities,
    this.created_at,
    this.updated_at,
    this.company,
  );

  factory Vacancy.fromJson(Map<String, dynamic> json) =>
      _$VacancyFromJson(json);

  Map<String, dynamic> toJson() => _$VacancyToJson(this);

  static Map<String, dynamic> toMap(Vacancy vacancy) =>
      {"id": vacancy.id, 'name': vacancy.name};

  static String encode(List<Vacancy> vacancies) => json.encode(
        vacancies
            .map<Map<String, dynamic>>((vacancy) => Vacancy.toMap(vacancy))
            .toList(),
      );

  static List<Vacancy> decode(String vacancies) =>
      (json.decode(vacancies) as List<dynamic>)
          .map<Vacancy>((item) => Vacancy.fromJson(item))
          .toList();

  @override
  List<Object?> get props => [
        id,
        name,
        city,
        grade,
        stage,
        schedule,
        category,
        body,
        views,
        company_id,
        active,
        minsalary,
        maxsalary,
        type,
        abilities,
        created_at,
        updated_at,
        company,
      ];
}
