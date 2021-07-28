import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sap_work/bloc/company/profile/profile_company_bloc.dart';
import 'package:sap_work/bloc/user/profile/profile_user_bloc.dart';
import 'package:sap_work/resources/icons.dart';
import 'package:sap_work/resources/small_widgets.dart';
import 'package:sap_work/resources/theme/color_theme.dart';
import 'package:sap_work/resources/theme/text_theme.dart';
import 'package:sap_work/screens/admin/screen.dart';
import 'package:sap_work/screens/authorization/authorization.dart';
import 'package:sap_work/screens/widgets/backward.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../injection_container.dart';

class SettingsScreen extends StatelessWidget {
  static const String id = '/settings';

  const SettingsScreen({Key? key}) : super(key: key);

  Future<bool> get isAdmin async {
    final sharedPref = await SharedPreferences.getInstance();
    return sharedPref.getString(USER_TOKEN)!.isNotEmpty;
  }


  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;
    return MultiBlocProvider(
      providers: [
        BlocProvider<ProfileUserBloc>(
            create: (_) => ProfileUserBloc(sl(), sl())
              ..add(const ProfileUserEvent.getProfileData())),
        BlocProvider<ProfileCompanyBloc>(
            create: (_) => ProfileCompanyBloc(sl(), sl())
              ..add(const ProfileCompanyEvent.getProfileData())),
      ],
      child: Scaffold(
        backgroundColor: AppColor.white,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          leading: BackWardWidget(() => Navigator.of(context).pop()),
          leadingWidth: MediaQuery.of(context).size.width,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Настройки",
                style: AppTextTheme.mediumTextBlack,
              ),
              const SizedBox(height: 30),
              Text(
                "Сменить аккаунт",
                style: AppTextTheme.smallTextMediumBlack,
              ),
              const SizedBox(
                height: 20.0,
              ),
              BlocBuilder<ProfileUserBloc, ProfileUserState>(
                builder: (context, state) {
                  return state.map(
                      empty: (_) => const SizedBox.shrink(),
                      loading: (_) => Column(),
                      loaded: (_state) {
                        return ListTile(
                          onTap: () async {
                            if (arguments[ROLE] != USER_ROLE) {
                              final sharedPref =
                              await SharedPreferences.getInstance();
                              await sharedPref.setInt("screen", 1);
                              Navigator.pushNamedAndRemoveUntil(
                                  context,
                                  NavigationBar.id,
                                  (Route<dynamic> route) => false,
                                  arguments: {ROLE: USER_ROLE});

                            }
                          },
                          selectedTileColor: AppColor.white200,
                          selected: arguments[ROLE] == USER_ROLE,
                          leading: SmallWidgets.circleAvatar(
                              url: _state.profile.profile.avatar,
                              height: 40,
                              width: 40),
                          title: Text(
                            "Соискатель",
                            style: TextStyle(
                              color: AppColor.grey,
                              fontSize: 14.0,
                            ),
                          ),
                          subtitle: Text(
                            _state.profile.profile.name,
                            style: AppTextTheme.mediumTextBlack.copyWith(
                              fontSize: 20.0,
                            ),
                          ),
                        );
                      },
                      error: (_error) => const SizedBox.shrink());
                },
              ),
              BlocBuilder<ProfileCompanyBloc, ProfileCompanyState>(
                builder: (context, state) {
                  return state.map(
                      empty: (_) => const SizedBox.shrink(),
                      loading: (_) => Column(),
                      loaded: (_state) {
                        return ListTile(
                          onTap: () async {
                            if (arguments[ROLE] != COMPANY_ROLE) {
                              Navigator.pushNamedAndRemoveUntil(
                                  context,
                                  NavigationBar.id,
                                  (Route<dynamic> route) => false,
                                  arguments: {ROLE: COMPANY_ROLE});
                              final sharedPref =
                                  await SharedPreferences.getInstance();
                              await sharedPref.setInt("screen", 2);
                            }
                          },
                          selectedTileColor: AppColor.white200,
                          leading: SmallWidgets.circleAvatar(
                              url: _state.profile.profile.avatar,
                              height: 40,
                              width: 40),
                          selected: arguments[ROLE] == COMPANY_ROLE,
                          title: Text(
                            "Работодатель",
                            style: TextStyle(
                              color: AppColor.grey,
                              fontSize: 14.0,
                            ),
                          ),
                          subtitle: Text(
                            _state.profile.profile.name,
                            style: AppTextTheme.mediumTextBlack.copyWith(
                              fontSize: 20.0,
                            ),
                          ),
                        );
                      },
                      error: (_error) => const SizedBox.shrink());
                },
              ),
                FutureBuilder(
                  future: isAdmin,
                  builder: (context, snapshot) {
                    if(snapshot.hasData)
                    return ListTile(
                      title: Center(
                        child: Text("Админ",
                            style: AppTextTheme.mediumTextBlack.copyWith(
                              fontSize: 20.0,
                            )),
                      ),
                      onTap: () => Navigator.pushNamed(context, AdminScreen.id),
                    );
                    return const SizedBox.shrink();
                  }
                ),
              const SizedBox(
                height: 40.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextButton.icon(
                    onPressed: () =>
                        Navigator.pushNamed(context, RoleScreen.id),
                    icon: SvgPicture.asset(AppIcons.plus_black),
                    label: Text(
                      "Добавить аккаунт",
                      style: AppTextTheme.smallTextMediumBlack,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
