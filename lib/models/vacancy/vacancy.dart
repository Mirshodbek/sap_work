
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:sap_work/models/feature/feature.dart';
import 'package:sap_work/models/links/links.dart';
import 'package:sap_work/models/profile_company/profile.dart';

part 'vacancy.g.dart';

@JsonSerializable()
class PaginationVacancy extends Equatable {
  // ignore: non_constant_identifier_names
  late final int current_page;
  late final List<Vacancy> data;
  // ignore: non_constant_identifier_names
  late final String first_page_url;
  // ignore: non_constant_identifier_names
  late final String last_page_url;
  // ignore: non_constant_identifier_names
  late final String? next_page_url;
  // ignore: non_constant_identifier_names
  late final String? prev_page_url;
  late final String path;
  late final int? from;
  late final int? to;
  late final int total;
  // ignore: non_constant_identifier_names
  late final int last_page;
  // ignore: non_constant_identifier_names
  late final int per_page;
  late final List<LinksPagination> links;

  PaginationVacancy(
      this.current_page,
      this.data,
      this.first_page_url,
      this.last_page_url,
      this.next_page_url,
      this.prev_page_url,
      this.path,
      this.from,
      this.to,
      this.total,
      this.last_page,
      this.per_page,
      this.links);
  factory PaginationVacancy.fromJson(Map<String, dynamic> json) =>
      _$PaginationVacancyFromJson(json);

  Map<String, dynamic> toJson() => _$PaginationVacancyToJson(this);
  @override
  List<Object?> get props => [
        this.current_page,
        this.data,
        this.first_page_url,
        this.last_page_url,
        this.next_page_url,
        this.prev_page_url,
        this.path,
        this.from,
        this.to,
        this.total,
        this.last_page,
        this.per_page,
        this.links
      ];
}

@JsonSerializable()
class Vacancy extends Equatable {
  late final int id;
  late final String name;
  late final String city;
  late final String grade;
  late final String stage;
  late final String schedule;
  late final Feature category;
  late final String body;

  // ignore: non_constant_identifier_names
  late final int? sphere_id;
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
  late final Pivot? pivot;

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
    this.sphere_id,
    this.minsalary,
    this.maxsalary,
    this.type,
    this.pivot,
    this.abilities,
    this.created_at,
    this.updated_at,
    this.company,
  );

  factory Vacancy.fromJson(Map<String, dynamic> json) =>
      _$VacancyFromJson(json);

  Map<String, dynamic> toJson() => _$VacancyToJson(this);

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
        sphere_id,
        type,
        abilities,
        created_at,
        updated_at,
        pivot,
        company,
      ];
}

@JsonSerializable()
class Pivot extends Equatable {
  // ignore: non_constant_identifier_names
  late final int user_id;

  // ignore: non_constant_identifier_names
  late final int vacancy_id;

  Pivot(this.user_id, this.vacancy_id);

  factory Pivot.fromJson(Map<String, dynamic> json) => _$PivotFromJson(json);

  Map<String, dynamic> toJson() => _$PivotToJson(this);

  @override
  List<Object?> get props => [user_id, vacancy_id];
}
