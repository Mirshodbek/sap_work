import 'package:equatable/equatable.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:sap_work/models/profile_user/profile.dart';
import 'package:sap_work/models/resume/resume.dart';

part 'feedback.g.dart';

@JsonSerializable()
class FeedbackVacancy extends Equatable {
  late final int id;

  // ignore: non_constant_identifier_names
  late final int vacancy_id;

  // ignore: non_constant_identifier_names
  late final int resume_id;

  // ignore: non_constant_identifier_names
  late final String? expires_at;
  late final String? answer;
  late final String? date;
  late final String? contact;
  late final String? accepted;

  // ignore: non_constant_identifier_names
  late final String? contact_type;

  // ignore: non_constant_identifier_names
  late final String created_at;

  // ignore: non_constant_identifier_names
  late final String updated_at;
  late final ProfileUser user;
  late final Resume resume;

  FeedbackVacancy(
      this.id,
      this.vacancy_id,
      this.expires_at,
      this.answer,
      this.date,
      this.contact,
      this.accepted,
      this.contact_type,
      this.created_at,
      this.updated_at,
      this.resume_id,
      this.user,
      this.resume);

  factory FeedbackVacancy.fromJson(Map<String, dynamic> json) =>
      _$FeedbackVacancyFromJson(json);

  Map<String, dynamic> toJson() => _$FeedbackVacancyToJson(this);

  @override
  List<Object?> get props => [
        id,
        vacancy_id,
        expires_at,
        answer,
        date,
        contact,
        contact_type,
        accepted,
        created_at,
        updated_at,
        resume_id,
        user,
        resume
      ];
}
