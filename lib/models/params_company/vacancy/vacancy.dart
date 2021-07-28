import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'vacancy.g.dart';

@JsonSerializable()
class ParamsVacancy extends Equatable {
  late final dynamic name;
  late final dynamic city;
  late final dynamic grade;
  late final dynamic stage;
  late final dynamic schedule;
  late final dynamic body;
  late final dynamic minsalary;
  late final dynamic maxsalary;
  late final dynamic type;
  late final dynamic abilities;
  late final dynamic category;
  late final dynamic sphere;

  ParamsVacancy(
      {this.name,
      this.city,
      this.grade,
      this.stage,
      this.schedule,
      this.body,
      this.minsalary,
      this.maxsalary,
      this.type,
      this.abilities,
      this.category,
      this.sphere});

  @override
  List<Object?> get props => [
        name,
        city,
        grade,
        stage,
        schedule,
        body,
        minsalary,
        maxsalary,
        type,
        abilities,
        category,
        sphere,
      ];

  factory ParamsVacancy.fromJson(Map<String, dynamic> json) =>
      _$ParamsVacancyFromJson(json);

  Map<String, dynamic> toJson() => _$ParamsVacancyToJson(this);
}
