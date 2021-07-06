import 'package:equatable/equatable.dart';

class Tariff extends Equatable {
  late final String name;
  late final String title;
  late final int sum;

  Tariff(this.name, this.title, this.sum);

  @override
  List<Object?> get props => [name, title, sum];
}
