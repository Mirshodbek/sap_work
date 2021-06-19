import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sap_work/bloc/hunter/vacancies/vacancies_bloc.dart';

import '../../hunter.dart';

class VacanciesScreen extends StatelessWidget {
  const VacanciesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar:
          BottomNavBarWidget(context.watch<NavigationCubit>().state),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: BlocConsumer<VacanciesBloc, VacanciesState>(
            listener: (context, state) {},
            builder: (context, state) {
              return state.maybeMap(
                orElse: () => const SizedBox.shrink(),
                initial: (_) =>
                    const Center(child: const CircularProgressIndicator()),
                loadedState: (_state) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Найдем работу в городе ",
                                    style: AppTextTheme.mediumTextBlack,
                                  ),
                                  TextSpan(
                                    text: "Москва ",
                                    style:
                                        AppTextTheme.mediumTextBlack.copyWith(
                                      color: AppColor.red,
                                    ),
                                  ),
                                  WidgetSpan(
                                    child: SvgPicture.asset(
                                      AppIcons.down_arrow,
                                      color: AppColor.red,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.pushNamed(context, FavoritesScreen.id);
                            },
                            icon: SvgPicture.asset(AppIcons.star),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      SearchField(),
                      const SizedBox(
                        height: 40.0,
                      ),
                      RowView(_state.isExtension),
                      _state.vacancies.isEmpty
                          ? Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 50.0),
                              child: FittedBox(
                                child: Text(
                                  "Подходяший обявление не найдено!",
                                  style: AppTextTheme.smallTextBlack,
                                ),
                              ),
                            )
                          : Column(
                              children: _state.vacancies.map((favoriteVacancy) {
                                return InkWell(
                                  key: ObjectKey(favoriteVacancy),
                                  onTap: () => _onTapVacancy(
                                      context, favoriteVacancy.vacancy),
                                  child: VacancyListItemWidget(
                                      _state.isExtension,
                                      false,
                                      favoriteVacancy.vacancy,
                                      favoriteButton: _FavoriteButton(
                                        _state.isExtension,
                                        favoriteVacancy,
                                      )),
                                );
                              }).toList(),
                            ),
                    ],
                  );
                },
              );
            },
          ),
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

class _FavoriteButton extends StatelessWidget {
  final bool isExtension;
  final FavoriteVacancy favoriteVacancy;

  const _FavoriteButton(this.isExtension, this.favoriteVacancy, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isExtension
        ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              if (!favoriteVacancy.isFavorite)
                TextButton.icon(
                  onPressed: () {},
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.zero)),
                  icon: SvgPicture.asset(AppIcons.cancel),
                  label: Text(
                    "Отклонить",
                    style: AppTextTheme.smallTextBlack.copyWith(
                      fontSize: 14.0,
                    ),
                  ),
                ),
              TextButton.icon(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.zero)),
                onPressed: () => context.read<VacanciesBloc>().add(
                    VacanciesEvent.toggleVacancies(
                        id: favoriteVacancy.vacancy.id)),
                icon: SvgPicture.asset(
                  AppIcons.save,
                  color: favoriteVacancy.isFavorite
                      ? AppColor.green
                      : AppColor.black,
                ),
                label: Text(
                  favoriteVacancy.isFavorite ? "Сохранень" : "Сохранить",
                  style: AppTextTheme.smallTextBlack.copyWith(
                    color: favoriteVacancy.isFavorite
                        ? AppColor.green
                        : AppColor.black,
                    fontSize: 14.0,
                  ),
                ),
              ),
            ],
          )
        : IconButton(
            onPressed: () => context.read<VacanciesBloc>().add(
                VacanciesEvent.toggleVacancies(id: favoriteVacancy.vacancy.id)),
            icon: SvgPicture.asset(favoriteVacancy.isFavorite
                ? AppIcons.selected_star
                : AppIcons.star),
          );
  }
}
