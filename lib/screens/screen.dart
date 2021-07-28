import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sap_work/bloc/company/core_feedbacks/core_feedbacks_company_bloc.dart';
import 'package:sap_work/bloc/company/core_profile/core_profile_company_bloc.dart';
import 'package:sap_work/bloc/company/feedbacks/feedbacks_vacancy_bloc.dart';
import 'package:sap_work/bloc/company/profile/profile_company_bloc.dart';
import 'package:sap_work/bloc/company/resumes/resumes_company_bloc.dart';
import 'package:sap_work/bloc/company/vacancies/vacancies_company_bloc.dart';
import 'package:sap_work/bloc/company/vacancy/vacancy_company_bloc.dart';
import 'package:sap_work/bloc/internet/internet_cubit.dart';
import 'package:sap_work/bloc/navigation/navigation_cubit.dart';
import 'package:sap_work/bloc/user/core_profile/core_profile_user_bloc.dart';
import 'package:sap_work/bloc/user/feedbacks/feedbacks_resume_bloc.dart';
import 'package:sap_work/bloc/user/profile/profile_user_bloc.dart';
import 'package:sap_work/bloc/user/resume/resume_user_bloc.dart';
import 'package:sap_work/bloc/user/resumes/resumes_user_bloc.dart';
import 'package:sap_work/bloc/user/vacancies/vacancies_user_bloc.dart';
import 'package:sap_work/injection_container.dart';
import 'package:sap_work/resources/constants.dart';
import 'package:sap_work/resources/small_widgets.dart';
import 'package:sap_work/screens/user/feedbacks/screen.dart';
import 'package:sap_work/screens/user/profile/screen.dart';
import 'package:sap_work/screens/user/vacancies/screen.dart';
import 'company/feedbacks/screen.dart';
import 'company/profile/screen.dart';
import 'company/resumes/screen.dart';

class NavigationBar extends StatelessWidget {
  static const String id = '/navigation_bar';

  const NavigationBar({Key? key}) : super(key: key);

  Map<BottomNavItem, WidgetBuilder> get widgetBuildersUser {
    return {
      BottomNavItem.announces: (context) => VacanciesScreenUser.create(),
      BottomNavItem.messages: (context) => FeedbacksScreenUser.create(),
      BottomNavItem.profile: (context) => ProfileScreenUser.create(),
    };
  }

  Map<BottomNavItem, WidgetBuilder> get widgetBuildersCompany {
    return {
      BottomNavItem.announces: (context) => ResumesScreenCompany.create(),
      BottomNavItem.messages: (context) => FeedbacksScreenCompany.create(),
      BottomNavItem.profile: (context) => ProfileScreenCompany.create(),
    };
  }

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;
    final role = arguments[ROLE];
    return BlocBuilder<NavigationCubit, BottomNavItem>(
      builder: (context, state) => role == USER_ROLE
          ? _widgetBuildersUser(context, state)
          : _widgetBuildersCompany(context, state),
    );
  }

  Widget _widgetBuildersCompany(BuildContext context, BottomNavItem itemState) {
    return BlocProvider(
      create: (context) => CoreProfileCompanyBloc(sl(), sl(), sl(), sl())
        ..add(const CoreProfileCompanyEvent.initial()),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (_) => ResumesCompanyBloc(sl(), sl())
                ..add(const ResumesCompanyEvent.getResumesRecommended())),
          BlocProvider<ProfileCompanyBloc>(
              create: (_) => ProfileCompanyBloc(sl(), sl())
                ..add(const ProfileCompanyEvent.getProfileData())),
          BlocProvider<VacanciesCompanyBloc>(
              create: (_) => VacanciesCompanyBloc(sl(), sl(), sl())
                ..add(const VacanciesCompanyEvent.getVacancies())),
          BlocProvider<VacancyCompanyBloc>(
              create: (_) => VacancyCompanyBloc(sl(), sl(), sl())
                ..add(const VacancyCompanyEvent.getVacancy())),
          BlocProvider(
              create: (_) => FeedbacksVacancyBloc(
                  sl(), sl(), sl())
                ..add(const FeedbacksVacancyEvent.getFeedbacks())),
          BlocProvider<CoreFeedbacksCompanyBloc>(
              create: (_) => CoreFeedbacksCompanyBloc(sl(), sl())
                ..add(const CoreFeedbacksCompanyEvent.getStatusSubscribe())),
        ],
        child: BlocListener<InternetCubit, InternetState>(
          listener: (context, state) {
            if (state is ConnectedInternetState &&
                state.connectionType == ConnectionType.Wifi) {
            } else if (state is ConnectedInternetState &&
                state.connectionType == ConnectionType.Mobile) {
            } else {
              SmallWidgets.scaffoldMessage(
                  context: context, message: "Нет доступ к интернету");
            }
          },
          child: widgetBuildersCompany[itemState]!(context),
        ),
      ),
    );
  }

  void updatedStatesCompany(BuildContext context) {
    context
        .read<FeedbacksVacancyBloc>()
        .add(const FeedbacksVacancyEvent.getFeedbacks());
    context
        .read<VacancyCompanyBloc>()
        .add(const VacancyCompanyEvent.getVacancy());
  }

  Widget _widgetBuildersUser(BuildContext context, BottomNavItem itemState) {
    return BlocProvider<CoreProfileUserBloc>(
      create: (_) => CoreProfileUserBloc(sl(), sl(), sl(), sl())
        ..add(const CoreProfileUserEvent.getData()),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (_) => VacanciesUserBloc(sl(), sl(), sl())
                ..add(const VacanciesUserEvent.getVacancies())),
          BlocProvider(
              create: (_) => FeedbacksResumeBloc(sl(), sl(), sl(), sl(), sl())
                ..add(const FeedbacksResumeEvent.getFeedbacks())),
          BlocProvider<ProfileUserBloc>(
              create: (_) => ProfileUserBloc(sl(), sl())
                ..add(const ProfileUserEvent.getProfileData())),
          BlocProvider<ResumesUserBloc>(
              create: (_) => ResumesUserBloc(sl(), sl(), sl())
                ..add(const ResumesUserEvent.getResumes())),
          BlocProvider<ResumeUserBloc>(
              create: (_) => ResumeUserBloc(sl(), sl(), sl())
                ..add(const ResumeUserEvent.getResume())),
        ],
        child: BlocListener<InternetCubit, InternetState>(
          listener: (context, state) {
            if (state is ConnectedInternetState &&
                state.connectionType == ConnectionType.Wifi) {
            } else if (state is ConnectedInternetState &&
                state.connectionType == ConnectionType.Mobile) {
            } else {
              SmallWidgets.scaffoldMessage(
                  context: context, message: "Нет доступ к интернету");
            }
          },
          child: widgetBuildersUser[itemState]!(context),
        ),
      ),
    );
  }
}
