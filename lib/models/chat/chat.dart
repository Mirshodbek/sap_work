import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'chat.g.dart';

@JsonSerializable()
class Chat extends Equatable {
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

  Chat(this.user_id, this.company_id, this.from_user, this.body,
      this.updated_at, this.created_at, this.id);

  @override
  List<Object?> get props =>
      [user_id, company_id, from_user, body, updated_at, created_at, id];

  factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);

  Map<String, dynamic> toJson() => _$ChatToJson(this);
}


@JsonSerializable()
class AllChats extends Equatable {
  late final int id;
  late final String name;
  late final String lastmsg;


  AllChats(this.id, this.name, this.lastmsg);


  factory AllChats.fromJson(Map<String, dynamic> json) => _$AllChatsFromJson(json);

  Map<String, dynamic> toJson() => _$AllChatsToJson(this);

  @override
  List<Object?> get props => [id,name,lastmsg];
}
