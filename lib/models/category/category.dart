import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'category.g.dart';

@JsonSerializable()
class Category extends Equatable {
  late final int id;
  late final String name;

  Category(this.id, this.name);

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);

  static Map<String, dynamic> toMap(Category category) =>
      {"id": category.id, 'name': category.name};

  static String encode(List<Category> categories) => json.encode(
        categories
            .map<Map<String, dynamic>>((category) => Category.toMap(category))
            .toList(),
      );

  static List<Category> decode(String categories) =>
      (json.decode(categories) as List<dynamic>)
          .map<Category>((item) => Category.fromJson(item))
          .toList();

  @override
  List<Object?> get props => [id, name];
}
