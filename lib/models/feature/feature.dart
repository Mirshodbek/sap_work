
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'feature.g.dart';

@JsonSerializable()
class Feature extends Equatable {
  late final int id;
  late final String name;

  Feature(this.id, this.name);

  factory Feature.fromJson(Map<String, dynamic> json) =>
      _$FeatureFromJson(json);

  Map<String, dynamic> toJson() => _$FeatureToJson(this);


  @override
  List<Object?> get props => [id, name];
}
