import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sap_work/bloc/company/core_feedbacks/core_feedbacks_bloc.dart';
import 'package:sap_work/bloc/company/core_profile/core_profile_bloc.dart';
import 'package:sap_work/bloc/company/feedbacks/feedbacks_vacancy_bloc.dart';
import 'package:sap_work/bloc/company/profile/profile_company_bloc.dart';
import 'package:sap_work/bloc/company/vacancies/vacancies_company_bloc.dart';
import 'package:sap_work/bloc/company/vacancy/vacancy_company_bloc.dart';
import 'package:sap_work/bloc/hunter/vacancies/vacancies_bloc.dart';
import 'package:sap_work/bloc/internet/internet_cubit.dart';
import 'package:sap_work/bloc/navigation/navigation_cubit.dart';
import 'package:sap_work/bloc/user/core_profile/core_profile_user_bloc.dart';
import 'package:sap_work/bloc/user/profile/profile_user_bloc.dart';
import 'package:sap_work/bloc/user/resume/resume_user_bloc.dart';
import 'package:sap_work/bloc/user/resumes/resumes_user_bloc.dart';
import 'package:sap_work/injection_container.dart';
import 'package:sap_work/repository/hunter/hunter_repository.dart';
import 'package:sap_work/resources/small_widgets.dart';
import 'package:sap_work/screens/user/feedbacks/screen.dart';
import 'package:sap_work/screens/user/profile/screen.dart';
import 'package:sap_work/screens/user/vacancies/screen.dart';
import 'company/feedbacks/screen.dart';
import 'company/profile/screen.dart';
import 'company/resumes/screen.dart';
import 'hunter/screens/vacancies/screen.dart';

class NavigationBar extends StatelessWidget {
  static const String id = '/navigation_bar';

  const NavigationBar({Key? key}) : super(key: key);

  Map<BottomNavItem, WidgetBuilder> get widgetBuildersUser {
    return {
      BottomNavItem.announces: (context) => VacanciesScreenUser(),
      BottomNavItem.messages: (context) => FeedbacksScreenUser(),
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
    final role = arguments["role"];
    return BlocBuilder<NavigationCubit, BottomNavItem>(
      builder: (context, state) => role == "searcher"
          ? _widgetBuildersUser(context, state)
          : _widgetBuildersCompany(context, state),
    );
  }

  Widget _widgetBuildersCompany(BuildContext context, BottomNavItem itemState) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ProfileCompanyBloc>(
            create: (_) => ProfileCompanyBloc(sl(), sl())
              ..add(const ProfileCompanyEvent.getProfileData())),
        BlocProvider<VacanciesCompanyBloc>(
            create: (_) => VacanciesCompanyBloc(sl(), sl(), sl())
              ..add(const VacanciesCompanyEvent.getVacancies())),
        BlocProvider<VacancyCompanyBloc>(
            create: (_) => VacancyCompanyBloc(sl(), sl(), sl())
              ..add(const VacancyCompanyEvent.getVacancy())),
        BlocProvider<CoreProfileBloc>(
            create: (context) => CoreProfileBloc(sl(), sl(), sl())
              ..add(const CoreProfileEvent.initial())),
        BlocProvider(
            create: (_) => FeedbacksVacancyBloc(sl(), sl(), sl())
              ..add(const FeedbacksVacancyEvent.getFeedbacks())),
        BlocProvider<CoreFeedbacksBloc>(
            create: (_) => CoreFeedbacksBloc(sl(), sl())
              ..add(const CoreFeedbacksEvent.getStatusSubscribe())),
      ],
      child: BlocListener<InternetCubit, InternetState>(
        listener: (context, state) {
          if (state is ConnectedInternetState &&
              state.connectionType == ConnectionType.Wifi) {
            updatedStatesCompany(context);
          } else if (state is ConnectedInternetState &&
              state.connectionType == ConnectionType.Mobile) {
            updatedStatesCompany(context);
          } else {
            SmallWidgets.scaffoldMessage(
                context: context, message: "Нет доступ к интернету");
          }
        },
        child: widgetBuildersCompany[itemState]!(context),
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
    return MultiBlocProvider(
      providers: [
        BlocProvider<ProfileUserBloc>(
            create: (_) => ProfileUserBloc(sl(), sl())
              ..add(const ProfileUserEvent.getProfileData())),
        BlocProvider<CoreProfileUserBloc>(
            create: (_) => CoreProfileUserBloc(sl(), sl(), sl(), sl())
              ..add(const CoreProfileUserEvent.getData())),
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
    );
  }
}
