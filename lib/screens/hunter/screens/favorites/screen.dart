import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../hunter.dart';

class FavoritesScreen extends StatelessWidget {
  static const String id = '/favorites';

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;

    return BlocProvider<VacanciesBloc>.value(
      value: arguments["vacancies_bloc"],
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
              BlocConsumer<VacanciesBloc, VacanciesState>(
                listener: (context,state){
                },
                builder: (context, state) {
                  return state.maybeMap(
                      orElse: () => Container(),
                      loadedState: (_state) {
                        return _state.favoriteVacancies.isNotEmpty
                            ? Column(
                                children: _state.favoriteVacancies
                                    .map((favoriteVacancy) {
                                  return InkWell(
                                    key: ObjectKey(favoriteVacancy),
                                    onTap: () => context
                                        .read<VacanciesBloc>()
                                        .add(VacanciesEvent.onTap(
                                        id: favoriteVacancy.vacancy.id)),
                                    child: VacancyListItemWidget(
                                      false,
                                      false,
                                      favoriteVacancy.vacancy,
                                      favoriteButton: IconButton(
                                        onPressed: () => context
                                            .read<VacanciesBloc>()
                                            .add(VacanciesEvent.toggle(
                                                id: favoriteVacancy
                                                    .vacancy.id)),
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
      ),
    );
  }

}
