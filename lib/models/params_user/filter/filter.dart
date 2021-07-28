import 'package:equatable/equatable.dart';

class ParamsFilter extends Equatable {
  late final dynamic stage;
  late final dynamic schedule;
  late final dynamic city;
  late final dynamic type;
  late final dynamic category;
  late final dynamic page;
  late final dynamic abilities;
  late final dynamic sphere;

  ParamsFilter(
      {this.stage,
      this.schedule,
      this.city,
      this.type,
      this.category,
      this.abilities,
      this.sphere,
      this.page});

  @override
  List<Object?> get props => [stage, schedule, city, type, category, page];
}
