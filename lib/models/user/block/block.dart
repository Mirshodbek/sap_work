import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:equatable/equatable.dart';

part 'block.g.dart';

@JsonSerializable()
class Block extends Equatable {
  late final String title;
  late final String hintText1;
  late final String hintText2;
  late final String hintText3;
  late final String hintText4;
  late final bool isSelect;
  late final int id;
  late final int text1;
  late final int text2;
  late final int text3;
  late final int text4;

  Block(
      this.title,
      this.hintText1,
      this.hintText2,
      this.hintText3,
      this.hintText4,
      this.id,
      this.text1,
      this.text2,
      this.text3,
      this.text4,
      {this.isSelect = false});

  Block copyWith(
          {bool? isSelect,
          int? id,
          int? firstId,
          int? secondId,
          int? thirdId,
          int? fourthId}) =>
      Block(
          this.title,
          this.hintText1,
          this.hintText2,
          this.hintText3,
          this.hintText4,
          id ?? this.id,
          firstId ?? this.text1,
          secondId ?? this.text2,
          thirdId ?? this.text3,
          fourthId ?? this.text4,
          isSelect: isSelect ?? this.isSelect);

  factory Block.fromJson(Map<String, dynamic> json) => _$BlockFromJson(json);

  static Map<String, dynamic> toJson(Block block) => _$BlockToJson(block);

  static String encode(List<Block> resumes) => json.encode(
        resumes
            .map<Map<String, dynamic>>((resume) => Block.toJson(resume))
            .toList(),
      );

  static List<Block> decode(String blocks) =>
      (json.decode(blocks) as List<dynamic>)
          .map<Block>((item) => Block.fromJson(item))
          .toList();

  @override
  List<Object?> get props => [
        title,
        hintText1,
        hintText2,
        hintText3,
        hintText4,
        id,
        text1,
        text2,
        text3,
        text4,
        isSelect
      ];
}
