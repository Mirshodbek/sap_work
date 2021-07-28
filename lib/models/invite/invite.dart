import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'invite.g.dart';
@JsonSerializable()
class Invite extends Equatable {
  late final int id;
  late final int vacancy_id;
  late final int resume_id;
  late final String? date;
  late final String? contact_type;
  late final String? contact;
  late final String expires_at;
  late final String answer;
  late final int? accepted;
  late final String created_at;
  late final String updated_at;
  late final VacancyInvite vacancy;

  Invite(
      this.id,
      this.vacancy_id,
      this.resume_id,
      this.date,
      this.contact_type,
      this.contact,
      this.expires_at,
      this.answer,
      this.accepted,
      this.created_at,
      this.updated_at,
      this.vacancy);
  factory Invite.fromJson(Map<String, dynamic> json) =>
      _$InviteFromJson(json);

  Map<String, dynamic> toJson() => _$InviteToJson(this);
  @override
  List<Object?> get props => [
        this.id,
        this.vacancy_id,
        this.resume_id,
        this.date,
        this.contact_type,
        this.contact,
        this.expires_at,
        this.answer,
        this.accepted,
        this.created_at,
        this.updated_at,
        this.vacancy
      ];
}
@JsonSerializable()
class VacancyInvite extends Equatable {
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
  late final int? sphere_id;
  late final String body;
  late final int views;
  late final int company_id;
  late final int active;
  late final String created_at;
  late final String updated_at;


  VacancyInvite(
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
      this.sphere_id,
      this.body,
      this.views,
      this.company_id,
      this.active,
      this.created_at,
      this.updated_at);
  factory VacancyInvite.fromJson(Map<String, dynamic> json) =>
      _$VacancyInviteFromJson(json);

  Map<String, dynamic> toJson() => _$VacancyInviteToJson(this);
  @override
  List<Object?> get props => [ this.id,
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
    this.sphere_id,
    this.body,
    this.views,
    this.company_id,
    this.active,
    this.created_at,
    this.updated_at];
}
