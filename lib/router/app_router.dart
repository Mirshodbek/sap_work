import 'package:flutter/material.dart';
import 'package:sap_work/screens/authorization/authorization.dart';
import 'package:sap_work/screens/hunter/hunter.dart';

class AppRouter {
  final FilterBloc _filterBloc;

  AppRouter(this._filterBloc);

  Route? onGeneratedRouter(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case SplashScreen.id:
        return MaterialPageRoute<String>(
          builder: (_) => SplashScreen.create(),
        );
      case RoleScreen.id:
        return MaterialPageRoute<String>(
          builder: (_) => RoleScreen(),
        );
      case HunterSignInScreen.id:
        return MaterialPageRoute<String>(
          builder: (_) => HunterSignInScreen.create(),
        );
      case EmployerSignInScreen.id:
        return MaterialPageRoute<String>(
          builder: (_) => EmployerSignInScreen.create(),
        );
      case SignUpScreen.id:
        return MaterialPageRoute<String>(
          builder: (_) => SignUpScreen.create(),
        );
      case NavigationBar.id:
        return MaterialPageRoute<String>(
          settings: routeSettings,
          builder: (_) => NavigationBar(),
        );
      case FavoritesScreen.id:
        return MaterialPageRoute<String>(
          settings: routeSettings,
          builder: (_) => FavoritesScreen(),
        );
      case FilterScreen.id:
        return MaterialPageRoute<String>(
          builder: (_) => FilterScreen.create(_filterBloc),
        );
      case ExtraFilterScreen.idCountry:
        return MaterialPageRoute<String>(
          builder: (_) => ExtraFilterScreen.create(
            _filterBloc,
            "Выберите город",
            ExtraFilterScreen.idCountry,
          ),
        );
      case ExtraFilterScreen.idProfession:
        return MaterialPageRoute<String>(
          builder: (_) => ExtraFilterScreen.create(
            _filterBloc,
            "Выберите профессия",
            ExtraFilterScreen.idProfession,
          ),
        );
      case VacancyScreen.id:
        return MaterialPageRoute<String>(
          settings: routeSettings,
          builder: (_) => VacancyScreen(),
        );
      case MessagesScreen.id:
        return MaterialPageRoute<String>(
          settings: routeSettings,
          builder: (_) => MessagesScreen(),
        );
      case SettingsScreen.id:
        return MaterialPageRoute<String>(
          settings: routeSettings,
          builder: (_) => SettingsScreen(),
        );
      default:
        return null;
    }
  }
}
