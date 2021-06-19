import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sap_work/bloc/hunter/profile/profile_bloc.dart';
import 'package:sap_work/bloc/hunter/vacancies/vacancies_bloc.dart';
import 'package:sap_work/bloc/hunter/notifications/notifications_bloc.dart';
import 'package:sap_work/bloc/internet/internet_cubit.dart';

import 'employer/employer.dart';
import 'hunter/hunter.dart';

class NavigationBar extends StatelessWidget {
  static const String id = '/navigation_bar';

  const NavigationBar({Key? key}) : super(key: key);

  static Widget create(VacanciesBloc _bloc) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NavigationCubit>(
          create: (_) => NavigationCubit(),
        ),
        BlocProvider.value(
          value: _bloc..add(VacanciesEvent.initial()),
        ),
        BlocProvider<NotificationsBloc>(
          create: (context) =>
              NotificationsBloc(context.read<HunterRepositoryBase>())
                ..add(NotificationsEvent.initial()),
        ),
        BlocProvider<ProfileBloc>(
          create: (context) => ProfileBloc(context.read<HunterRepositoryBase>(),
              context.read<InternetCubit>()),
        ),
      ],
      child: NavigationBar(),
    );
  }

  Map<BottomNavItem, WidgetBuilder> get widgetBuildersSearcher {
    return {
      BottomNavItem.announces: (context) => VacanciesScreen(),
      BottomNavItem.messages: (context) => NotificationsScreen.create(context),
      BottomNavItem.profile: (context) => ProfileScreen.create(context),
    };
  }

  Map<BottomNavItem, WidgetBuilder> get widgetBuildersEmployer {
    return {
      BottomNavItem.announces: (context) => AnnounceScreenE.create(context),
      BottomNavItem.messages: (context) =>
          MessagesEmployerScreen.create(context),
      BottomNavItem.profile: (context) => ProfileEmployerScreen.create(context),
    };
  }

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;
    final role = arguments["role"];
    return BlocBuilder<NavigationCubit, BottomNavItem>(
      builder: (context, state) => role == "searcher"
          ? widgetBuildersSearcher[state]!(context)
          : widgetBuildersEmployer[state]!(context),
    );
  }
}
