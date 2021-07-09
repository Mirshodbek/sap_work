import 'package:flutter/material.dart';
import 'package:sap_work/screens/authorization/authorization.dart';
import 'package:sap_work/screens/authorization/screens/pin_screen.dart';
import 'package:sap_work/screens/company/chat/screen.dart';
import 'package:sap_work/screens/company/invite/screen.dart';
import 'package:sap_work/screens/company/payment/screen.dart';
import 'package:sap_work/screens/company/resume/screen.dart';
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
      case UserSignInScreen.id:
        return MaterialPageRoute<String>(
          builder: (_) => UserSignInScreen.create(),
        );
      case CompanySignInScreen.id:
        return MaterialPageRoute<String>(
          builder: (_) => CompanySignInScreen.create(),
        );
      case SignUpScreen.id:
        return MaterialPageRoute<String>(
          builder: (_) => SignUpScreen.create(),
        );
      case PinScreen.id:
        return MaterialPageRoute<String>(
          settings: routeSettings,
          builder: (_) => PinScreen(),
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
      case PaymentScreen.id:
        return MaterialPageRoute<String>(
          settings: routeSettings,
          builder: (_) => PaymentScreen(),
        );
      case ResumeScreenCompany.id:
        return MaterialPageRoute<String>(
          settings: routeSettings,
          builder: (_) => ResumeScreenCompany(),
        );
      case InviteScreen.id:
        return MaterialPageRoute<String>(
          settings: routeSettings,
          builder: (_) => InviteScreen(),
        );
      case ChatScreenCompany.id:
        return MaterialPageRoute<String>(
          settings: routeSettings,
          builder: (_) => ChatScreenCompany(),
        );
      default:
        return null;
    }
  }
}
