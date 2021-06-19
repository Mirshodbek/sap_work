import 'package:json_annotation/json_annotation.dart';
import 'package:sap_work/models/vacancy/vacancy.dart';

part 'feedback.g.dart';

@JsonSerializable()
class FeedbackResume {
  late final int id;

  // ignore: non_constant_identifier_names
  late final int vacancy_id;

  // ignore: non_constant_identifier_names
  late final int resume_id;
  late final String? answer;
  // ignore: non_constant_identifier_names
  late final String? expires_at;

  // ignore: non_constant_identifier_names
  late final String updated_at;

  // ignore: non_constant_identifier_names
  late final String created_at;
  late final Vacancy vacancy;

  FeedbackResume(this.id, this.vacancy_id, this.resume_id, this.answer,
      this.updated_at, this.created_at, this.vacancy);

  factory FeedbackResume.fromJson(Map<String, dynamic> json) =>
      _$FeedbackResumeFromJson(json);

  Map<String, dynamic> toJson() => _$FeedbackResumeToJson(this);
}
