import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sap_work/bloc/navigation/navigation_cubit.dart';
import 'package:sap_work/resources/images.dart';
import 'package:sap_work/resources/theme/color_theme.dart';

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
              icon: SvgPicture.asset(BottomNavItem.profile.icon,
                  color: AppColor.white,width: 30,height: 30),
              activeIcon: SvgPicture.asset(BottomNavItem.profile.activeIcon,
                  color: AppColor.white,width: 30,height: 30),
              label: "",
            ),
          ],
        ),
      ),
    );
  }
}

class WhiteButtonWidget extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;

  const WhiteButtonWidget({
    Key? key,
    required this.child,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
          EdgeInsets.symmetric(
            vertical: 12.0,
            horizontal: 24.0,
          ),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            side: BorderSide(
              width: 2.0,
              color: AppColor.white,
            ),
            borderRadius: BorderRadius.circular(100.0),
          ),
        ),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
