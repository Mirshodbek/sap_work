import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:sap_work/models/vacancy/vacancy.dart';

part 'feedback.g.dart';

@JsonSerializable()
class FeedbackResume extends Equatable {
  late final int id;

  // ignore: non_constant_identifier_names
  late final int vacancy_id;

  // ignore: non_constant_identifier_names
  late final int resume_id;
  late final String? answer;

  // ignore: non_constant_identifier_names
  late final String? expires_at;

  late final String? date;
  late final String? contact;
  late final String? accepted;

  // ignore: non_constant_identifier_names
  late final String? contact_type;

  // ignore: non_constant_identifier_names
  late final String updated_at;

  // ignore: non_constant_identifier_names
  late final String created_at;
  late final Vacancy vacancy;

  FeedbackResume(
      this.id,
      this.vacancy_id,
      this.resume_id,
      this.answer,
      this.expires_at,
      this.date,
      this.contact,
      this.accepted,
      this.contact_type,
      this.updated_at,
      this.created_at,
      this.vacancy);

  factory FeedbackResume.fromJson(Map<String, dynamic> json) =>
      _$FeedbackResumeFromJson(json);

  static Map<String, dynamic> toJson(FeedbackResume feedbackResume) =>
      _$FeedbackResumeToJson(feedbackResume);

  static String encode(List<FeedbackResume> feedbacksResume) => json.encode(
        feedbacksResume
            .map<Map<String, dynamic>>(
                (feedbackResume) => FeedbackResume.toJson(feedbackResume))
            .toList(),
      );

  static List<FeedbackResume> decode(String feedbackResume) =>
      (json.decode(feedbackResume) as List<dynamic>)
          .map<FeedbackResume>((item) => FeedbackResume.fromJson(item))
          .toList();

  @override
  List<Object?> get props => [
        id,
        vacancy_id,
        resume_id,
        answer,
        expires_at,
        updated_at,
        created_at,
        vacancy,
      ];
}
