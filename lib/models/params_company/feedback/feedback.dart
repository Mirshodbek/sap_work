import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'feedback.g.dart';

@JsonSerializable()
class ParamsFeedback extends Equatable {
  late final String date;

  // ignore: non_constant_identifier_names
  late final String contact_type;
  late final String contact;
  late final String answer;
  late final int resume;
  late final int vacancy;

  ParamsFeedback(this.date, this.contact_type, this.contact, this.answer,
      this.resume, this.vacancy);

  factory ParamsFeedback.fromJson(Map<String, dynamic> json) =>
      _$ParamsFeedbackFromJson(json);

  Map<String, dynamic> toJson() => _$ParamsFeedbackToJson(this);

  @override
  List<Object?> get props =>
      [date, contact_type, contact, answer, resume, vacancy];
}
