import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sap_work/bloc/company/core_profile/core_profile_company_bloc.dart';
import 'package:sap_work/bloc/company/resumes/resumes_company_bloc.dart';
import 'package:sap_work/bloc/company/resumes_button/resumes_company_btn_cubit.dart';
import 'package:sap_work/bloc/user/core_profile/core_profile_user_bloc.dart';
import 'package:sap_work/bloc/user/vacancies/vacancies_user_bloc.dart';
import 'package:sap_work/bloc/user/vacancies_button/vacancies_user_btn_cubit.dart';
import 'package:sap_work/bloc/variable_filter/variable_filter_cubit.dart';
import 'package:sap_work/resources/constants.dart';
import 'package:sap_work/screens/filter/widgets/company.dart';
import 'package:sap_work/screens/filter/widgets/user.dart';

class FilterScreen extends StatelessWidget {
  static const String id = '/filter';

  const FilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;
    return MultiBlocProvider(
      providers: [
        BlocProvider<VariableFilterCubit>.value(
            value: arguments[VARIABLE_FILTER_CUBIT]),
        if (arguments[ROLE] == USER_ROLE)
          BlocProvider<VacanciesUserBloc>.value(
              value: arguments[VACANCIES_USER_BLOC])
        else
          BlocProvider<ResumesCompanyBloc>.value(
              value: arguments[RESUMES_COMPANY_BLOC]),
        if (arguments[ROLE] == USER_ROLE)
          BlocProvider<VacanciesUserBtnCubit>.value(
              value: arguments[VACANCIES_USER_BTN_CUBIT])
        else
          BlocProvider<ResumesCompanyBtnCubit>.value(
              value: arguments[RESUMES_COMPANY_BTN_CUBIT]),
        if (arguments[ROLE] == USER_ROLE)
          BlocProvider<CoreProfileUserBloc>.value(
              value: arguments[CORE_PROFILE_USER_BLOC])
        else
          BlocProvider<CoreProfileCompanyBloc>.value(
              value: arguments[CORE_PROFILE_COMPANY_BLOC]),
      ],
      child: arguments[ROLE] == USER_ROLE
          ? UserFilterWidget()
          : CompanyFilterWidget(),
    );
  }
}
