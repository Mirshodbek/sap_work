import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:sap_work/models/resume/resume_attributes.dart';

part 'resume.g.dart';

@JsonSerializable()
class Resume extends Equatable {
  late final int id;

// ignore: non_constant_identifier_names
  late final int user_id;

  // ignore: non_constant_identifier_names
  late final int category_id;
  late final String body;
  late final String name;
  late final String email;
  late final String phone;
  late final String city;
  late final String abilities;

// ignore: non_constant_identifier_names
  late final String updated_at;

// ignore: non_constant_identifier_names
  late final String created_at;
  late final int active;

  late final List<Grade> grades;
  late final List<Stage> stages;

  Resume(
      this.id,
      this.user_id,
      this.name,
      this.category_id,
      this.body,
      this.abilities,
      this.updated_at,
      this.created_at,
      this.email,
      this.phone,
      this.active,
      this.city,
      this.grades,
      this.stages);

  factory Resume.fromJson(Map<String, dynamic> json) => _$ResumeFromJson(json);

  Map<String, dynamic> toJson() => _$ResumeToJson(this);

  @override
  List<Object?> get props => [
        id,
        user_id,
        body,
        abilities,
        updated_at,
        created_at,
        active,
        grades,
        email,
        phone,
        city,
        stages,
        category_id,
      ];
}
