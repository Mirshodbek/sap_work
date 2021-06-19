import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sap_work/bloc/hunter/vacancies/vacancies_bloc.dart';
import 'package:sap_work/models/vacancy/vacancy.dart';

import '../../hunter.dart';

class FavoritesScreen extends StatelessWidget {
  static const String id = '/favorites';

  static Widget create(VacanciesBloc _bloc) {
    return BlocProvider<VacanciesBloc>.value(
      value: _bloc,
      child: FavoritesScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Избранные",
                  style: AppTextTheme.mediumTextBlack,
                ),
                SvgPicture.asset(AppIcons.selected_star),
              ],
            ),
            BlocBuilder<VacanciesBloc, VacanciesState>(
              builder: (context, state) {
                return state.maybeMap(
                    orElse: () => Container(),
                    loadedState: (_state) {
                      final favorite = _state.vacancies.where((element) => element.isFavorite).toList();
                      return favorite.isNotEmpty
                          ? Column(
                              children: favorite
                                  .map((favoriteVacancy) {
                                return InkWell(
                                  key: ObjectKey(favoriteVacancy),
                                  onTap: () => _onTapVacancy(
                                      context, favoriteVacancy.vacancy),
                                  child: VacancyListItemWidget(
                                    false,
                                    false,
                                    favoriteVacancy.vacancy,
                                    favoriteButton: IconButton(
                                      onPressed: () => context
                                          .read<VacanciesBloc>()
                                          .add(VacanciesEvent.toggleVacancies(
                                              id: favoriteVacancy.vacancy.id)),
                                      icon: SvgPicture.asset(
                                          favoriteVacancy.isFavorite
                                              ? AppIcons.selected_star
                                              : AppIcons.star),
                                    ),
                                  ),
                                );
                              }).toList(),
                            )
                          : Container(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 100.0),
                              alignment: Alignment.center,
                              child: Text(
                                "Здес пусто",
                                style: AppTextTheme.mediumTextBlack
                                    .copyWith(color: AppColor.grey),
                              ));
                    });
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<Object?> _onTapVacancy(BuildContext context, Vacancy vacancy) =>
      Navigator?.pushNamed<String>(
        context,
        VacancyScreen.id,
        arguments: {"id": vacancy.id},
      );
}
