import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'profile.g.dart';


@JsonSerializable()
class TypeProfileHunter extends Equatable {
  late final String type;
  late final ProfileHunter profile;


  TypeProfileHunter(this.type, this.profile);

  factory TypeProfileHunter.fromJson(Map<String, dynamic> json) =>
      _$TypeProfileHunterFromJson(json);

  Map<String, dynamic> toJson() => _$TypeProfileHunterToJson(this);

  @override
  List<Object?> get props => [type, profile];
}

@JsonSerializable()
class ProfileHunter extends Equatable {
  late final String phone;
  late final String name;

  // ignore: non_constant_identifier_names
  late final String? remember_token;

  // ignore: non_constant_identifier_names
  late final String updated_at;

  // ignore: non_constant_identifier_names
  late final String created_at;
  late final int id;


  ProfileHunter(this.phone, this.name, this.remember_token, this.updated_at,
      this.created_at, this.id);

  factory ProfileHunter.fromJson(Map<String, dynamic> json) =>
      _$ProfileHunterFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileHunterToJson(this);

  @override
  List<Object?> get props =>
      [phone, name, remember_token, updated_at, created_at, id];
}

@JsonSerializable()
class ProfileEmployer {
  late final String name;
  late final String phone;
  late final String bin;
  late final String bik;
  late final String address;
  late final String inn;

  // ignore: non_constant_identifier_names
  late final String updated_at;

  // ignore: non_constant_identifier_names
  late final String created_at;
  late final int id;

  ProfileEmployer(this.name, this.phone, this.bin, this.bik, this.address,
      this.inn, this.updated_at, this.created_at, this.id);

  factory ProfileEmployer.fromJson(Map<String, dynamic> json) =>
      _$ProfileEmployerFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileEmployerToJson(this);
}
