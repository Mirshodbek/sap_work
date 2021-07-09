import 'package:equatable/equatable.dart';

import 'package:json_annotation/json_annotation.dart';

part 'contacts.g.dart';

@JsonSerializable()
class ParamsContacts extends Equatable{
  late final String name;
  late final String url;

  ParamsContacts(this.name, this.url);


  factory ParamsContacts.fromJson(Map<String, dynamic> json) =>
      _$ParamsContactsFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ParamsContactsToJson(this);

  @override
  List<Object?> get props => [name,url];

}