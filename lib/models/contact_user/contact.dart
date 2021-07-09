import 'package:equatable/equatable.dart';

import 'package:json_annotation/json_annotation.dart';

part 'contact.g.dart';

@JsonSerializable()
class ContactUser extends Equatable{
  late final String name;
  late final String url;
  // ignore: non_constant_identifier_names
  late final int user_id;

  // ignore: non_constant_identifier_names
  late final String updated_at;

  // ignore: non_constant_identifier_names
  late final String created_at;
  late final int id;


  ContactUser(this.name, this.url, this.user_id, this.updated_at, this.created_at,
      this.id);


  factory ContactUser.fromJson(Map<String, dynamic> json) =>
      _$ContactUserFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ContactUserToJson(this);


  @override
  List<Object?> get props => [name,url,user_id,updated_at,created_at,id];
}
