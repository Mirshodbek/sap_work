import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'vacancy.g.dart';
@JsonSerializable()
class ParamsVacancy extends Equatable {
  final String name;
  final String city;
  final String grade;
  final String stage;
  final String schedule;
  final String body;
  final String minsalary;
  final String maxsalary;
  final String type;
  final String abilities;
  final int category;


  ParamsVacancy(
      {required this.name,
        required  this.city,
        required  this.grade,
        required  this.stage,
        required this.schedule,
        required  this.body,
        required this.minsalary,
        required this.maxsalary,
        required  this.type,
        required   this.abilities,
        required  this.category});

  factory ParamsVacancy.fromJson(Map<String, dynamic> json) =>
      _$ParamsVacancyFromJson(json);

  Map<String, dynamic> toJson() => _$ParamsVacancyToJson(this);
  @override
  List<Object?> get props => [];
}
