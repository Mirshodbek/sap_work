import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
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
                      _HeadVacancies(),
                      const SizedBox(
                        height: 30.0,
                      ),
                      _SearchField(),
                      const SizedBox(
                        height: 40.0,
                      ),
                      _RowView(_state.isExtension),
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

class _HeadVacancies extends StatelessWidget {
  const _HeadVacancies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
                  style: AppTextTheme.mediumTextBlack.copyWith(
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
          onPressed: () =>
              context.read<VacanciesBloc>().add(VacanciesEvent.onTap(id: -1)),
          icon: SvgPicture.asset(AppIcons.star),
        ),
      ],
    );
  }
}

class _RowView extends StatelessWidget {
  final bool isExtension;

  const _RowView(this.isExtension);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Подходящие вакансии",
          style: AppTextTheme.profileText,
        ),
        IconButton(
          onPressed: () => context
              .read<VacanciesBloc>()
              .add(VacanciesEvent.selectedView(isExtension: isExtension)),
          icon: SvgPicture.asset(
            isExtension ? AppIcons.reduce : AppIcons.extension,
          ),
        ),
      ],
    );
  }
}

class _SearchField extends StatefulWidget {
  _SearchField({Key? key}) : super(key: key);

  @override
  __SearchFieldState createState() => __SearchFieldState();
}

class __SearchFieldState extends State<_SearchField> {
  final _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
          onChanged: (value)=> context
              .read<VacanciesBloc>()
              .add(VacanciesEvent.search(search: value)),
            decoration: InputDecoration(
              prefixIcon: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 5.0),
                child: SvgPicture.asset(AppIcons.search),
              ),
              contentPadding: EdgeInsets.zero,
              hintText: "Профессия",
              hintStyle: AppTextTheme.smallTextBlack,
              suffixIcon: IconButton(
                onPressed: () => _searchController.clear(),
                icon: SvgPicture.asset(AppIcons.clear),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1.0,
                  color: AppColor.black,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5.0),
                  bottomLeft: Radius.circular(5.0),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1.0,
                  color: AppColor.black,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5.0),
                  bottomLeft: Radius.circular(5.0),
                ),
              ),
            ),
          ),
        ),
        OutlinedButton(
          onPressed: () {
            Navigator.pushNamed(context, FilterScreen.id);
          },
          style: ButtonStyle(
            padding:
                MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 12.0)),
            side: MaterialStateProperty.all(
              BorderSide(
                width: 1.0,
                color: AppColor.black,
              ),
            ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(5.0),
                  bottomRight: Radius.circular(5.0),
                ),
              ),
            ),
          ),
          child: SvgPicture.asset(AppIcons.filter),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
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
