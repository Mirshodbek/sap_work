import 'package:json_annotation/json_annotation.dart';

part 'profile.g.dart';

@JsonSerializable()
class ProfileHunter {
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
