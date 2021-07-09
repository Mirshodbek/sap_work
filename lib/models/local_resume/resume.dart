import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'resume.g.dart';

@JsonSerializable()
class LocalResumeData extends Equatable {
  late final String name;
  late final int id;

  LocalResumeData(this.name, this.id);

  factory LocalResumeData.fromJson(Map<String, dynamic> json) =>
      _$LocalResumeDataFromJson(json);

  Map<String, dynamic> toJson() => _$LocalResumeDataToJson(this);

  static Map<String, dynamic> toMap(LocalResumeData instance) =>
      <String, dynamic>{
        'name': instance.name,
        'id': instance.id,
      };

  static String encode(List<LocalResumeData> resumes) => json.encode(
        resumes
            .map<Map<String, dynamic>>(
                (resume) => LocalResumeData.toMap(resume))
            .toList(),
      );

  static List<LocalResumeData> decode(String resumes) =>
      (json.decode(resumes) as List<dynamic>)
          .map<LocalResumeData>((item) => LocalResumeData.fromJson(item))
          .toList();

  @override
  List<Object?> get props => [name, id];
}
