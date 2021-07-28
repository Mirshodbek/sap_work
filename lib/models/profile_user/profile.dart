import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:sap_work/models/contact/contact.dart';

part 'profile.g.dart';

@JsonSerializable()
class TypeProfileUser extends Equatable {
  late final String type;
  late final ProfileUser profile;

  TypeProfileUser(this.type, this.profile);

  factory TypeProfileUser.fromJson(Map<String, dynamic> json) =>
      _$TypeProfileUserFromJson(json);

  Map<String, dynamic> toJson() => _$TypeProfileUserToJson(this);

  @override
  List<Object?> get props => [type, profile];
}

@JsonSerializable()
class ProfileUser extends Equatable {
  late final String phone;
  late final String name;
  late final String avatar;

  // ignore: non_constant_identifier_names
  late final String? remember_token;

  // ignore: non_constant_identifier_names
  late final String updated_at;

  // ignore: non_constant_identifier_names
  late final String created_at;
  late final int id;
  late final List<ContactProfile>? urls;

  ProfileUser(this.phone, this.name, this.avatar, this.urls,
      this.remember_token, this.updated_at, this.created_at, this.id);

  factory ProfileUser.fromJson(Map<String, dynamic> json) =>
      _$ProfileUserFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileUserToJson(this);

  @override
  List<Object?> get props =>
      [phone, name, remember_token, urls,updated_at, created_at, id];
}
