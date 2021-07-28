import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sap_work/bloc/company/company.dart';
import 'package:sap_work/bloc/company/profile_button/profile_company_btn_cubit.dart';
import 'package:sap_work/bloc/company/vacancy/vacancy_company_bloc.dart';
import 'package:sap_work/bloc/company/variable_vacancy/variable_vacancy_cubit.dart';
import 'package:sap_work/bloc/navigation/navigation_cubit.dart';
import 'package:sap_work/resources/icons.dart';
import 'package:sap_work/screens/company/widgets/feedback.dart';
import 'package:sap_work/screens/company/widgets/profile.dart';
import 'package:sap_work/screens/company/profile/widgets/vacancies_or_vacancy.dart';
import 'package:sap_work/screens/settings/screen.dart';
import 'package:sap_work/screens/widgets/bottom_nav_bar.dart';
import 'package:sap_work/resources/theme/color_theme.dart';

class ProfileScreenCompany extends StatelessWidget {
  const ProfileScreenCompany({Key? key}) : super(key: key);

  static Widget create() {
    return MultiBlocProvider(providers: [
      BlocProvider<VariableVacancyCubit>(create: (_) => VariableVacancyCubit()),
      BlocProvider<ProfileCompanyBtnCubit>(create: (_) => ProfileCompanyBtnCubit()),
    ], child: ProfileScreenCompany());
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
                    Navigator.pushNamed(context, SettingsScreen.id,arguments: {ROLE:COMPANY_ROLE}),
                icon: SvgPicture.asset(AppIcons.settings))),
        bottomNavigationBar:
            BottomNavBarWidget(context.watch<NavigationCubit>().state),
        body: RefreshIndicator(
          onRefresh: () async => context
              .read<VacancyCompanyBloc>()
              .add(const VacancyCompanyEvent.getVacancy()),
          child: SingleChildScrollView(
              child: Column(children: [
            Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProfileCompanyNameWidget(),
                    const SizedBox(height: 5),
                    FeedbacksVacancyCountWidget(),
                    const SizedBox(height: 5),
                    LinksCompanyWidget(),
                  ],
                )),
            VacanciesOrVacancyWidget(),
          ])),
        ));
  }
}
