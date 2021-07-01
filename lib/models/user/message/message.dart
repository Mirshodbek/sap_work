import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'message.g.dart';

@JsonSerializable()
class Message extends Equatable {
  // ignore: non_constant_identifier_names
  late final int user_id;

  // ignore: non_constant_identifier_names
  late final int company_id;

  // ignore: non_constant_identifier_names
  late final int from_user;
  late final String body;

  // ignore: non_constant_identifier_names
  late final String updated_at;

  // ignore: non_constant_identifier_names
  late final String created_at;

  late final int id;

  Message(this.user_id, this.company_id, this.from_user, this.body,
      this.updated_at, this.created_at, this.id);

  @override
  List<Object?> get props =>
      [user_id, company_id, from_user, body, updated_at, created_at, id];

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);

  static Map<String, dynamic> toJson(Message message) =>
      _$MessageToJson(message);

  static String encode(List<Message> messages) => json.encode(
        messages
            .map<Map<String, dynamic>>((message) => Message.toJson(message))
            .toList(),
      );

  static List<Message> decode(String messages) =>
      (json.decode(messages) as List<dynamic>)
          .map<Message>((item) => Message.fromJson(item))
          .toList();
}
