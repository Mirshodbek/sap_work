import 'package:flutter/cupertino.dart';
import 'package:sap_work/bloc/hunter/filter/filter_bloc.dart';
import 'package:sap_work/bloc/hunter/vacancies/vacancies_bloc.dart';
import 'package:sap_work/screens/authorization/authorization.dart';
import 'package:sap_work/screens/employer/employer.dart';
import 'package:sap_work/screens/hunter/hunter.dart';
import 'package:sap_work/screens/hunter/screens/blocks_resume/screen.dart';

class AppRouter {
  final VacanciesBloc _vacanciesBloc;

  AppRouter(this._vacanciesBloc);

  final _filterBloc = FilterBloc();

  Route? onGeneratedRouter(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case SplashScreen.id:
        return CupertinoPageRoute<String>(
          builder: (_) => SplashScreen.create(),
        );
      case RoleScreen.id:
        return CupertinoPageRoute<String>(
          builder: (_) => RoleScreen(),
        );
      case SearcherSignInScreen.id:
        return CupertinoPageRoute<String>(
          builder: (_) => SearcherSignInScreen.create(),
        );
      case EmployerSignInScreen.id:
        return CupertinoPageRoute<String>(
          builder: (_) => EmployerSignInScreen.create(),
        );
      case SignUpScreen.id:
        return CupertinoPageRoute<String>(
          builder: (_) => SignUpScreen.create(),
        );
      case NavigationBar.id:
        return CupertinoPageRoute<String>(
          settings: routeSettings,
          builder: (_) => NavigationBar.create(_vacanciesBloc),
        );
      case FavoritesScreen.id:
        return CupertinoPageRoute<String>(
          settings: routeSettings,
          builder: (_) => FavoritesScreen.create(_vacanciesBloc),
        );
      case FilterScreen.id:
        return CupertinoPageRoute<String>(
          builder: (_) => FilterScreen.create(_filterBloc),
        );
      case ExtraFilterScreen.idCountry:
        return CupertinoPageRoute<String>(
          builder: (_) => ExtraFilterScreen.create(
            _filterBloc,
            "Выберите город",
            ExtraFilterScreen.idCountry,
          ),
        );
      case ExtraFilterScreen.idProfession:
        return CupertinoPageRoute<String>(
          builder: (_) => ExtraFilterScreen.create(
            _filterBloc,
            "Выберите профессия",
            ExtraFilterScreen.idProfession,
          ),
        );
      case VacancyScreen.id:
        return CupertinoPageRoute<String>(
          settings: routeSettings,
          builder: (_) => VacancyScreen.create(_vacanciesBloc),
        );
      case ChatScreenS.id:
        return CupertinoPageRoute<String>(
          settings: routeSettings,
          builder: (_) => ChatScreenS(),
        );
      case BlocksResumeScreen.id:
        return CupertinoPageRoute<String>(
          settings: routeSettings,
          builder: (_) => BlocksResumeScreen.create(),
        );
      case SettingsScreenS.id:
        return CupertinoPageRoute<String>(
          settings: routeSettings,
          builder: (_) => SettingsScreenS(),
        );
      case PayScreen.id:
        return CupertinoPageRoute<String>(
          settings: routeSettings,
          builder: (_) => PayScreen(),
        );
      case InviteScreen.id:
        return CupertinoPageRoute<String>(
          settings: routeSettings,
          builder: (_) => InviteScreen(),
        );
      default:
        return null;
    }
  }
}
