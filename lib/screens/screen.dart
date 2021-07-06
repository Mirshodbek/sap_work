import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sap_work/bloc/company/core_profile/core_profile_bloc.dart';
import 'package:sap_work/bloc/company/feedbacks/feedbacks_vacancy_bloc.dart';
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
import 'package:sap_work/resources/small_widgets.dart';
import 'company/feedback/screen.dart';
import 'company/profile/screen.dart';
import 'company/resumes/screen.dart';
import 'hunter/screens/notifications/screen.dart';
import 'hunter/screens/profile/screen.dart';
import 'hunter/screens/vacancies/screen.dart';

class NavigationBar extends StatelessWidget {
  static const String id = '/navigation_bar';

  const NavigationBar({Key? key}) : super(key: key);

  Map<BottomNavItem, WidgetBuilder> get widgetBuildersUser {
    return {
      BottomNavItem.announces: (context) => VacanciesScreen(),
      BottomNavItem.messages: (context) => NotificationsScreen(),
      BottomNavItem.profile: (context) => ProfileScreen(),
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
            create: (_) => FeedbacksVacancyBloc(sl(), sl())
              ..add(const FeedbacksVacancyEvent.getFeedbacks())),
      ],
      child: BlocListener<InternetCubit, InternetState>(
        listener: (context, state) {
          if (state is ConnectedInternetState &&
              state.connectionType == ConnectionType.Wifi) {
            context
                .read<VacancyCompanyBloc>()
                .add(const VacancyCompanyEvent.getVacancy());
          } else if (state is ConnectedInternetState &&
              state.connectionType == ConnectionType.Mobile) {
            context
                .read<VacancyCompanyBloc>()
                .add(const VacancyCompanyEvent.getVacancy());
          } else {
            SmallWidgets.scaffoldMessage(
                context: context, message: "Нет доступ к интернету");
          }
        },
        child: widgetBuildersCompany[itemState]!(context),
      ),
    );
  }

  Widget _widgetBuildersUser(BuildContext context, BottomNavItem itemState) {
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
        child: widgetBuildersUser[itemState]!(context),
      ),
    );
  }
}
