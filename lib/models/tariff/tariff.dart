import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tariff.g.dart';

class Tariff extends Equatable {
  late final String name;
  late final String title;
  late final int sum;

  Tariff(this.name, this.title, this.sum);

  @override
  List<Object?> get props => [name, title, sum];
}

@JsonSerializable()
class Tariffs extends Equatable {
  late final String subscribe;
  late final String price;

  Tariffs(this.subscribe, this.price);

  factory Tariffs.fromJson(Map<String, dynamic> json) =>
      _$TariffsFromJson(json);

  Map<String, dynamic> toJson() => _$TariffsToJson(this);

  @override
  List<Object?> get props => [price, subscribe];
}
