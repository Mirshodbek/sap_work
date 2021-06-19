import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'vacancy.g.dart';

@JsonSerializable()
class Vacancy {
  late final int id;
  late final String name;
  late final String city;
  late final String lang;
  late final String grade;
  late final String stage;
  late final String schedule;
  late final int category;
  late final String body;
  late final int views;

  // ignore: non_constant_identifier_names
  late final int company_id;
  late final int active;
  late final String salary;
  late final String type;

  // ignore: non_constant_identifier_names
  late final String created_at;

  // ignore: non_constant_identifier_names
  late final String updated_at;
  late final Company? company;

  Vacancy(
    this.id,
    this.name,
    this.city,
    this.lang,
    this.grade,
    this.stage,
    this.schedule,
    this.category,
    this.body,
    this.views,
    this.company_id,
    this.active,
    this.salary,
    this.type,
    this.created_at,
    this.updated_at,
    this.company,
  );

  factory Vacancy.fromJson(Map<String, dynamic> json) =>
      _$VacancyFromJson(json);

  Map<String, dynamic> toJson() => _$VacancyToJson(this);
}

@JsonSerializable()
class Company {
  late final int id;
  late final String name;
  late final String address;
  late final String bin;
  late final String bik;
  late final String inn;
  late final String phone;

  // ignore: non_constant_identifier_names
  late final String created_at;

  // ignore: non_constant_identifier_names
  late final String updated_at;

  Company(this.id, this.name, this.address, this.bin, this.bik, this.inn,
      this.phone, this.created_at, this.updated_at);

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyToJson(this);
}

@immutable
class FavoriteVacancy extends Equatable{
  final Vacancy vacancy;
  final bool isFavorite;

  FavoriteVacancy(this.vacancy, this.isFavorite);

  FavoriteVacancy copyWith({bool? isFavorite}) {
    return FavoriteVacancy(this.vacancy, isFavorite ?? this.isFavorite);
  }

  @override
  List<Object?> get props => [vacancy,isFavorite];

}
