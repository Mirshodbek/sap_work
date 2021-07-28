import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sap_work/resources/icons.dart';
import 'package:sap_work/resources/images.dart';

class NavigationCubit extends Cubit<BottomNavItem> {
  NavigationCubit() : super(BottomNavItem.announces);

  void onChanged(BottomNavItem item) => emit(item);
}

class BottomNavItem extends Equatable {
  static final announces = BottomNavItem._(
      0, AppIcons.announces_section, AppIcons.announces_section_selected);
  static final messages = BottomNavItem._(
      1, AppIcons.messages_section, AppIcons.messages_section_selected);
  static final profile =
      BottomNavItem._(2, AppIcons.avatar, AppIcons.avatar_selected);

  static List<BottomNavItem> get values => [announces, messages, profile];

  final int index;
  final String icon;
  final String activeIcon;

  BottomNavItem._(this.index, this.icon, this.activeIcon);

  @override
  List<Object?> get props => [index];
}
