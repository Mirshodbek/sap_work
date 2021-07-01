import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:sap_work/models/resume/resume_attributes.dart';

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

  factory Resume.fromJson(Map<String, dynamic> json) => _$ResumeFromJson(json);

  Map<String, dynamic> toJson() => _$ResumeToJson(this);

  static Map<String, dynamic> toMap(Resume instance) => <String, dynamic>{
        'id': instance.id,
        'user_id': instance.user_id,
        'body': instance.body,
        'name': instance.name,
        'abilities': instance.abilities,
        'updated_at': instance.updated_at,
        'created_at': instance.created_at,
        'active': instance.active,
        'grade': instance.grade,
        'stage': instance.stage,
      };

  static String encode(List<Resume> resumes) => json.encode(
        resumes
            .map<Map<String, dynamic>>((resume) => Resume.toMap(resume))
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
