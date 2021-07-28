import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'resume.g.dart';

@JsonSerializable()
class ParamsResume extends Equatable {
  late final dynamic body;
  late final dynamic abilities;
  late final dynamic name;
  late final dynamic phone;
  late final dynamic email;
  late final dynamic city;
  late final dynamic category;
  late final dynamic sphere;
  late final dynamic stages;
  late final dynamic grades;

  ParamsResume(
      {this.body,
      this.abilities,
      this.name,
      this.phone,
      this.email,
      this.sphere,
      this.city,
      this.category,
      this.stages,
      this.grades});

  factory ParamsResume.fromJson(Map<String, dynamic> json) =>
      _$ParamsResumeFromJson(json);

  Map<String, dynamic> toJson() => _$ParamsResumeToJson(this);

  @override
  List<Object?> get props => [
        body,
        name,
        abilities,
        phone,
        sphere,
        email,
        city,
        category,
        grades,
        stages
      ];
}
