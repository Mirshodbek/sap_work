import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
class StageList extends Equatable {
  final String title;
  final bool value;

  StageList({required this.title, this.value = false});

  StageList copyWith({bool? value}) =>
      StageList(title: this.title, value: value ?? this.value);

  @override
  List<Object?> get props => [title];
}
