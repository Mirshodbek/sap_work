import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:sap_work/models/links/links.dart';
import 'package:sap_work/models/profile_user/profile.dart';
import 'package:sap_work/models/resume/resume_attributes.dart';

part 'resume.g.dart';

@JsonSerializable()
class PaginationResume extends Equatable {
  // ignore: non_constant_identifier_names
  late final int? current_page;
  late final List<Resume> data;

  // ignore: non_constant_identifier_names
  late final String first_page_url;

  // ignore: non_constant_identifier_names
  late final String last_page_url;

  // ignore: non_constant_identifier_names
  late final String? next_page_url;

  // ignore: non_constant_identifier_names
  late final String? prev_page_url;
  late final String path;
  late final int? from;
  late final int? to;
  late final int total;

  // ignore: non_constant_identifier_names
  late final int last_page;

  // ignore: non_constant_identifier_names
  late final int per_page;
  late final List<LinksPagination> links;

  PaginationResume(
      this.current_page,
      this.data,
      this.first_page_url,
      this.last_page_url,
      this.next_page_url,
      this.prev_page_url,
      this.path,
      this.from,
      this.to,
      this.total,
      this.last_page,
      this.per_page,
      this.links);

  factory PaginationResume.fromJson(Map<String, dynamic> json) =>
      _$PaginationResumeFromJson(json);

  Map<String, dynamic> toJson() => _$PaginationResumeToJson(this);

  @override
  List<Object?> get props => [
        this.current_page,
        this.data,
        this.first_page_url,
        this.last_page_url,
        this.next_page_url,
        this.prev_page_url,
        this.path,
        this.from,
        this.to,
        this.total,
        this.last_page,
        this.per_page,
        this.links
      ];
}

@JsonSerializable()
class Resume extends Equatable {
  late final int id;

// ignore: non_constant_identifier_names
  late final int user_id;

  // ignore: non_constant_identifier_names
  late final int category_id;

  // ignore: non_constant_identifier_names
  late final int sphere_id;
  late final String body;
  late final String name;
  late final String email;
  late final String phone;
  late final String city;
  late final String abilities;
  late final ProfileUser? user;

// ignore: non_constant_identifier_names
  late final String updated_at;

// ignore: non_constant_identifier_names
  late final String created_at;
  late final int active;

  late final List<Grade>? grades;
  late final List<Stage>? stages;

  Resume(
      this.id,
      this.user_id,
      this.name,
      this.user,
      this.category_id,
      this.sphere_id,
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
        user,
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
        sphere_id,
      ];
}
