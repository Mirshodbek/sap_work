import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'resume_attributes.g.dart';

@JsonSerializable()
class Stage extends Equatable {
  late final int id;

  // ignore: non_constant_identifier_names
  late final String company_name;
  late final String position;
  late final String description;
  late final String period;

  // ignore: non_constant_identifier_names
  late final String resume_id;

// ignore: non_constant_identifier_names
  late final String updated_at;

// ignore: non_constant_identifier_names
  late final String created_at;

  Stage(this.id, this.company_name, this.position, this.description,
      this.period, this.updated_at, this.created_at);

  factory Stage.fromJson(Map<String, dynamic> json) => _$StageFromJson(json);

  Map<String, dynamic> toJson() => _$StageToJson(this);

  static Map<String, dynamic> toMap(String companyName, String position,
          String description, String period) =>
      {
        "company_name": companyName,
        "position": position,
        "description": description,
        "period": period
      };

  @override
  List<Object?> get props =>
      [id, company_name, position, description, period, updated_at, created_at];
}

@JsonSerializable()
class Grade extends Equatable {
  late final int id;

// ignore: non_constant_identifier_names
  late final String university_name;
  late final String grade;
  late final String period;

  // ignore: non_constant_identifier_names
  late final String resume_id;

// ignore: non_constant_identifier_names
  late final String updated_at;

// ignore: non_constant_identifier_names
  late final String created_at;

  Grade(this.id, this.resume_id, this.university_name, this.grade, this.period,
      this.created_at, this.updated_at);

  factory Grade.fromJson(Map<String, dynamic> json) => _$GradeFromJson(json);

  Map<String, dynamic> toJson() => _$GradeToJson(this);


  static Map<String, dynamic> toMap(String universityName, String grade,
       String period) =>
      {
        "university_name": universityName,
        "grade": grade,
        "period": period
      };

  @override
  List<Object?> get props =>
      [id, resume_id, university_name, grade, period, created_at, updated_at];
}
