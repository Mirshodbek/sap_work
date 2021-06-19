import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

part 'resume.g.dart';

@JsonSerializable()
class Resume {
  late final int id;

// ignore: non_constant_identifier_names
  late final int user_id;
  late final String grade;
  late final String stage;
  late final String body;
  late final int active;

// ignore: non_constant_identifier_names
  late final String updated_at;

// ignore: non_constant_identifier_names
  late final String created_at;

  Resume(this.id, this.user_id, this.grade, this.stage, this.body, this.active,
      this.updated_at, this.created_at);

  factory Resume.fromJson(Map<String, dynamic> json) => _$ResumeFromJson(json);

  Map<String, dynamic> toJson() => _$ResumeToJson(this);
}

@immutable
class SelectResume extends Equatable {
  final Resume resume;
  final bool isSelected;

  SelectResume(this.resume, this.isSelected);

  SelectResume copyWith({bool? isSelected}) {
    return SelectResume(this.resume, isSelected ?? this.isSelected);
  }

  @override
  List<Object?> get props => [resume, isSelected];
}
