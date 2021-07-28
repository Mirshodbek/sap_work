import 'package:flutter/material.dart';
import 'package:sap_work/screens/admin/screen.dart';
import 'package:sap_work/screens/authorization/authorization.dart';
import 'package:sap_work/screens/authorization/screens/pin_screen.dart';
import 'package:sap_work/screens/authorization/screens/sign_in/admin/screen.dart';
import 'package:sap_work/screens/company/chat/screen.dart';
import 'package:sap_work/screens/company/invite/screen.dart';
import 'package:sap_work/screens/company/payment/screen.dart';
import 'package:sap_work/screens/company/resume/screen.dart';
import 'package:sap_work/screens/company/select_vacancy/screen.dart';
import 'package:sap_work/screens/settings/screen.dart';
import 'package:sap_work/screens/user/chat/screen.dart';
import 'package:sap_work/screens/user/favorites/screen.dart';
import 'package:sap_work/screens/filter/screen.dart';
import 'package:sap_work/screens/search/screen.dart';
import 'package:sap_work/screens/user/select_resume/select_resume.dart';
import 'package:sap_work/screens/user/total_display/screen.dart';
import 'package:sap_work/screens/user/vacancy/screen.dart';

class AppRouter {
  Route? onGeneratedRouter(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case AdminSignInScreen.id:
        return MaterialPageRoute<String>(
          builder: (_) => AdminSignInScreen.create(),
        );
      case AdminScreen.id:
        return MaterialPageRoute<String>(
          builder: (_) => AdminScreen.create(),
        );

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
          builder: (_) => PinScreen.create(),
        );
      case NavigationBar.id:
        return MaterialPageRoute<String>(
          settings: routeSettings,
          builder: (_) => NavigationBar(),
        );
      case FilterScreen.id:
        return MaterialPageRoute<String>(
          settings: routeSettings,
          builder: (_) => FilterScreen(),
        );
      case SearchScreen.id:
        return MaterialPageRoute<String>(
          settings: routeSettings,
          builder: (_) => SearchScreen(),
        );
      case SettingsScreen.id:
        return MaterialPageRoute<String>(
          settings: routeSettings,
          builder: (_) => SettingsScreen(),
        );
      case FavoritesVacancyScreen.id:
        return MaterialPageRoute<String>(
          settings: routeSettings,
          builder: (_) => FavoritesVacancyScreen(),
        );
      case ChatScreenUser.id:
        return MaterialPageRoute<String>(
          settings: routeSettings,
          builder: (_) => ChatScreenUser(),
        );
      case SelectResumeScreen.id:
        return MaterialPageRoute<String>(
          settings: routeSettings,
          fullscreenDialog: true,
          builder: (_) => SelectResumeScreen(),
        );
      case VacancyUserScreen.id:
        return MaterialPageRoute<String>(
          settings: routeSettings,
          builder: (_) => VacancyUserScreen(),
        );
      case TotalDisplayScreen.id:
        return MaterialPageRoute<String>(
          settings: routeSettings,
          builder: (_) => TotalDisplayScreen(),
        );
      case SelectVacancyScreen.id:
        return MaterialPageRoute<String>(
          settings: routeSettings,
          fullscreenDialog: true,
          builder: (_) => SelectVacancyScreen(),
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
