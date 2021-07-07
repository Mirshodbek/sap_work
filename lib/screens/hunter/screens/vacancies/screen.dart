import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sap_work/resources/small_widgets.dart';
import 'package:sap_work/screens/widgets/row.dart';
import 'package:sap_work/screens/widgets/search_field.dart';
import '../../hunter.dart';

class VacanciesScreen extends StatelessWidget {
  static const String id = '/vacancies';

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
      body: BlocConsumer<VacanciesBloc, VacanciesState>(
        listener: (context, state) {
          if (state is ScreensVacanciesState) {
            if (state.id! > 0)
              Navigator?.pushNamed<String>(
                context,
                VacancyScreen.id,
                arguments: {
                  "id": state.id,
                  "vacancies_bloc": context.read<VacanciesBloc>()
                },
              );
            else
              Navigator.pushNamed(context, FavoritesScreen.id,
                  arguments: {"vacancies_bloc": context.read<VacanciesBloc>()});
          }
        },
        builder: (context, state) {
          return state.maybeMap(
            orElse: () => const SizedBox.shrink(),
            initial: (_) => SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: InitialVacanciesWidget(),
            ),
            loadedState: (_state) {
              return RefreshIndicator(
                onRefresh: () async => context
                    .read<VacanciesBloc>()
                    .add(const VacanciesEvent.refresh()),
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(child: SmallWidgets.textRichSearch()),
                          IconButton(
                            onPressed: () => context
                                .read<VacanciesBloc>()
                                .add(VacanciesEvent.onTap(id: -1)),
                            icon: SvgPicture.asset(AppIcons.star),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      SearchFieldWidget(
                          onChanged: (value) => context
                              .read<VacanciesBloc>()
                              .add(VacanciesEvent.search(search: value)),
                          onPressed: () =>
                              Navigator.pushNamed(context, FilterScreen.id),
                          hintText: "Профессия"),
                      const SizedBox(
                        height: 40.0,
                      ),
                      RowViewWidget(
                          isExtension: _state.isExtension,
                          text: "Подходящие вакансии",
                          onPressed: () => context.read<VacanciesBloc>().add(
                              VacanciesEvent.selectedView(
                                  isExtension: _state.isExtension))),
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
                                  onTap: () => context
                                      .read<VacanciesBloc>()
                                      .add(VacanciesEvent.onTap(
                                          id: favoriteVacancy.vacancy.id)),
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
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
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
                onPressed: () => context
                    .read<VacanciesBloc>()
                    .add(VacanciesEvent.toggle(id: favoriteVacancy.vacancy.id)),
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
            onPressed: () => context
                .read<VacanciesBloc>()
                .add(VacanciesEvent.toggle(id: favoriteVacancy.vacancy.id)),
            icon: SvgPicture.asset(favoriteVacancy.isFavorite
                ? AppIcons.selected_star
                : AppIcons.star),
          );
  }
}
