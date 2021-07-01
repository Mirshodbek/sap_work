import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:sap_work/models/user/resume/resume_attributes.dart';

part 'resume.g.dart';

@JsonSerializable()
class Resume extends Equatable {
  late final int id;

// ignore: non_constant_identifier_names
  late final int user_id;
  late final String body;
  late final String name;
  late final String abilities;

// ignore: non_constant_identifier_names
  late final String updated_at;

// ignore: non_constant_identifier_names
  late final String created_at;
  late final int active;

  late final List<Grade>? grade;
  late final List<Stage>? stage;

  Resume(this.id, this.user_id, this.name, this.body, this.abilities,
      this.updated_at, this.created_at, this.active, this.grade, this.stage);

  Resume copyWith({String? name}) {
    return Resume(id, user_id, name ?? this.name, body, abilities, updated_at,
        created_at, active, grade, stage);
  }

  factory Resume.fromJson(Map<String, dynamic> json) => _$ResumeFromJson(json);

  static Map<String, dynamic> toJson(Resume resume) => _$ResumeToJson(resume);

  static String encode(List<Resume> resumes) => json.encode(
        resumes
            .map<Map<String, dynamic>>((resume) => Resume.toJson(resume))
            .toList(),
      );

  static List<Resume> decode(String resumes) =>
      (json.decode(resumes) as List<dynamic>)
          .map<Resume>((item) => Resume.fromJson(item))
          .toList();

  @override
  List<Object?> get props => [
        id,
        user_id,
        body,
        abilities,
        updated_at,
        created_at,
        active,
        grade,
        stage,
      ];
}
