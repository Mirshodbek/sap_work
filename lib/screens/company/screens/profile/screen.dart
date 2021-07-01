import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:formz/formz.dart';
import 'package:sap_work/bloc/company/core/core_profile_bloc.dart';
import 'package:sap_work/bloc/company/vacancies/vacancies_company_bloc.dart';
import 'package:sap_work/bloc/company/vacancy/vacancy_company_bloc.dart';
import 'package:sap_work/bloc/navigation/navigation_cubit.dart';
import 'package:sap_work/resources/resource.dart';
import 'package:sap_work/screens/hunter/screens/settings/screen.dart';
import 'package:sap_work/screens/company/screens/profile/widgets/widget.dart';
import 'package:sap_work/screens/widgets/widget.dart';
import 'package:sap_work/theme/theme.dart';

class ProfileScreenCompany extends StatelessWidget {
  const ProfileScreenCompany({Key? key}) : super(key: key);

  static Widget create() {
    return ProfileScreenCompany();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.white,
        appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            leading: IconButton(
                onPressed: () =>
                    Navigator.pushNamed(context, SettingsScreen.id),
                icon: SvgPicture.asset(AppIcons.settings))),
        bottomNavigationBar:
            BottomNavBarWidget(context.watch<NavigationCubit>().state),
        body: SingleChildScrollView(
            child: Column(children: [
          Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProfileNameWidget(),
                  const SizedBox(height: 5),
                  FeedbackCountWidget(),
                  const SizedBox(height: 5),
                  LinksWidget(),
                ],
              )),
          VacanciesOrVacancyWidget(),
        ])));
  }
}
