import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'profile.g.dart';

@JsonSerializable()
class TypeProfileCompany extends Equatable {
  late final String type;
  late final ProfileCompany profile;

  TypeProfileCompany(this.type, this.profile);

  factory TypeProfileCompany.fromJson(Map<String, dynamic> json) =>
      _$TypeProfileCompanyFromJson(json);

  Map<String, dynamic> toJson() => _$TypeProfileCompanyToJson(this);

  @override
  List<Object?> get props => [type, profile];
}

@JsonSerializable()
class ProfileCompany extends Equatable {
  late final int id;
  late final String name;
  late final String address;
  late final String avatar;
  late final String bin;
  late final String bik;
  late final String inn;
  late final String phone;

  ProfileCompany(this.id, this.name, this.address, this.avatar, this.bin,
      this.bik, this.inn, this.phone);

  factory ProfileCompany.fromJson(Map<String, dynamic> json) =>
      _$ProfileCompanyFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileCompanyToJson(this);

  @override
  List<Object?> get props => [id, name, address, avatar, bin, bik, inn, phone];
}
