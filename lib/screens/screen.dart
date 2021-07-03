import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sap_work/bloc/company/core/core_profile_bloc.dart';
import 'package:sap_work/bloc/company/profile/profile_company.dart';
import 'package:sap_work/bloc/company/vacancies/vacancies_company_bloc.dart';
import 'package:sap_work/bloc/company/vacancy/vacancy_company_bloc.dart';
import 'package:sap_work/bloc/hunter/notifications/notifications_bloc.dart';
import 'package:sap_work/bloc/hunter/profile/profile_bloc.dart';
import 'package:sap_work/bloc/hunter/vacancies/vacancies_bloc.dart';
import 'package:sap_work/bloc/internet/internet_cubit.dart';
import 'package:sap_work/bloc/navigation/navigation_cubit.dart';
import 'package:sap_work/injection_container.dart';
import 'package:sap_work/repository/hunter/hunter_repository.dart';
import 'company/screens/feedback/screen.dart';
import 'company/screens/profile/screen.dart';
import 'company/screens/resume/screen.dart';
import 'hunter/screens/notifications/screen.dart';
import 'hunter/screens/profile/screen.dart';
import 'hunter/screens/vacancies/screen.dart';

class NavigationBar extends StatelessWidget {
  static const String id = '/navigation_bar';

  const NavigationBar({Key? key}) : super(key: key);

  Map<BottomNavItem, WidgetBuilder> get widgetBuildersHunter {
    return {
      BottomNavItem.announces: (context) => VacanciesScreen(),
      BottomNavItem.messages: (context) => NotificationsScreen(),
      BottomNavItem.profile: (context) => ProfileScreen(),
    };
  }

  Map<BottomNavItem, WidgetBuilder> get widgetBuildersEmployer {
    return {
      BottomNavItem.announces: (context) => ResumeScreenCompany.create(),
      BottomNavItem.messages: (context) => FeedbackScreenCompany.create(),
      BottomNavItem.profile: (context) => ProfileScreenCompany.create(),
    };
  }

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;
    final role = arguments["role"];
    return BlocBuilder<NavigationCubit, BottomNavItem>(
      builder: (context, state) => role == "searcher"
          ? _widgetBuildersHunter(context, state)
          : _widgetBuildersEmployer(context, state),
    );
  }

  Widget _widgetBuildersEmployer(
      BuildContext context, BottomNavItem itemState) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ProfileCompanyBloc>(
            create: (_) => ProfileCompanyBloc(sl(),sl())
              ..add(const ProfileCompanyEvent.getProfileData())),
        BlocProvider<VacanciesCompanyBloc>(
            create: (_) => VacanciesCompanyBloc(sl(), sl())
              ..add(const VacanciesCompanyEvent.getVacancies())),
        BlocProvider<VacancyCompanyBloc>(
            create: (_) => VacancyCompanyBloc(sl(),sl(),sl())
              ..add(const VacancyCompanyEvent.getVacancy())),
        BlocProvider<CoreProfileBloc>(
          create: (context) => CoreProfileBloc(sl(), sl(), sl())
            ..add(const CoreProfileEvent.initial()),
        ),
      ],
      child: widgetBuildersEmployer[itemState]!(context),
    );
  }

  Widget _widgetBuildersHunter(BuildContext context, BottomNavItem itemState) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<VacanciesBloc>(
            create: (_) => VacanciesBloc(
                  context.read<HunterRepositoryBase>(),
                )..add(const VacanciesEvent.refresh())),
        BlocProvider<NotificationsBloc>(
            create: (context) =>
                NotificationsBloc(context.read<HunterRepositoryBase>())
                  ..add(const NotificationsEvent.refresh())),
        BlocProvider<ProfileBloc>(
            create: (context) =>
                ProfileBloc(context.read<HunterRepositoryBase>())
                  ..add(const ProfileEvent.refresh())),
      ],
      child: BlocListener<InternetCubit, InternetState>(
        listener: (context, state) {
          if (state is ConnectedInternetState &&
              state.connectionType == ConnectionType.Wifi) {
            context.read<VacanciesBloc>().add(const VacanciesEvent.refresh());
            context
                .read<NotificationsBloc>()
                .add(const NotificationsEvent.refresh());
            context.read<ProfileBloc>().add(const ProfileEvent.refresh());
          } else if (state is ConnectedInternetState &&
              state.connectionType == ConnectionType.Mobile) {
            context.read<VacanciesBloc>().add(const VacanciesEvent.refresh());
            context
                .read<NotificationsBloc>()
                .add(const NotificationsEvent.refresh());
            context.read<ProfileBloc>().add(const ProfileEvent.refresh());
          } else {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                behavior: SnackBarBehavior.floating,
                content: Text("Нет доступ к интернету")));
          }
        },
        child: widgetBuildersHunter[itemState]!(context),
      ),
    );
  }
}
