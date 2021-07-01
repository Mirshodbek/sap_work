import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sap_work/bloc/navigation/navigation_cubit.dart';
import 'package:sap_work/screens/widgets/bottom_nav_bar.dart';
import 'package:sap_work/theme/color_theme.dart';

class FeedbackScreenCompany extends StatelessWidget {
  const FeedbackScreenCompany({Key? key}) : super(key: key);

  static Widget create(){
    return FeedbackScreenCompany();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar:
      BottomNavBarWidget(context.watch<NavigationCubit>().state),
    );
  }
}