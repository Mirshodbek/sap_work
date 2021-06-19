import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sap_work/screens/hunter/hunter.dart';

class BottomNavBarWidget extends StatelessWidget {
  final BottomNavItem currentItem;

  const BottomNavBarWidget(this.currentItem);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      padding: const EdgeInsets.only(left: 18.0, right: 18.0, bottom: 18.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: BottomNavigationBar(
          backgroundColor: AppColor.red,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: currentItem.index,
          onTap: (index) {
            final item =
                BottomNavItem.values.firstWhere((it) => it.index == index);
            context.read<NavigationCubit>().onChanged(item);
          },
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                BottomNavItem.announces.icon,
              ),
              activeIcon: SvgPicture.asset(BottomNavItem.announces.activeIcon),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                BottomNavItem.messages.icon,
              ),
              activeIcon: SvgPicture.asset(
                BottomNavItem.messages.activeIcon,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                AppImages.profile_section,
                width: 40.0,
                height: 40.0,
              ),
              label: "",
            ),
          ],
        ),
      ),
    );
  }
}