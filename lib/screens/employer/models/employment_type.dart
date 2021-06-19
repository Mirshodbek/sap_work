

import 'package:flutter/material.dart';

@immutable
class EmploymentType {
  final String title;
  final bool isSelected;

  EmploymentType(this.title, {this.isSelected = false});

  EmploymentType copyWith({bool? isSelected}) {
    return EmploymentType(
      this.title,
      isSelected: isSelected ?? this.isSelected,
    );
  }


}
