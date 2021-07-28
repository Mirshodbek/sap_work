import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sap_work/bloc/user/vacancies/vacancies_user_bloc.dart';
import 'package:sap_work/resources/constants.dart';
import 'package:sap_work/resources/icons.dart';
import 'package:sap_work/resources/theme/color_theme.dart';
import 'package:sap_work/resources/theme/text_theme.dart';
import 'package:sap_work/screens/user/vacancies/widgets/decrease.dart';
import 'package:sap_work/screens/widgets/backward.dart';

class FavoritesVacancyScreen extends StatelessWidget {
  static const String id = '/favorites_user';

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;

    return BlocProvider<VacanciesUserBloc>.value(
      value: arguments[VACANCIES_USER_BLOC],
      child: Scaffold(
        backgroundColor: AppColor.white,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          leading: BackWardWidget(
            () {
              Navigator.of(context).pop();
            },
          ),
          leadingWidth: MediaQuery.of(context).size.width,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  "Избранные",
                  style: AppTextTheme.mediumTextBlack,
                ),
                SvgPicture.asset(AppIcons.selected_star),
              ]),
              const SizedBox(height: 20),
              BlocConsumer<VacanciesUserBloc, VacanciesUserState>(
                listener: (context, state) {},
                builder: (context, state) {
                  return state.maybeMap(
                      orElse: () => Container(),
                      loaded: (_state) {
                        return _state.favorites.isNotEmpty
                            ? Column(
                                children: _state.favorites
                                    .map((favorite) {
                                  return InkWell(
                                    key: ObjectKey(favorite),
                                    onTap: () {},
                                    child: DecreaseVacanciesWidget(
                                      favorites: _state.favorites,
                                        vacancy: favorite),
                                  );
                                }).toList(),
                              )
                            : Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 100.0),
                                alignment: Alignment.center,
                                child: Text(
                                  "Пока пусто",
                                  style: AppTextTheme.mediumTextBlack
                                      .copyWith(color: AppColor.grey),
                                ));
                      });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
