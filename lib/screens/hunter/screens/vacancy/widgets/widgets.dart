import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import '../../../hunter.dart';

class AnnounceCategories extends StatelessWidget {
  final FavoriteVacancy vacancies;
  final VoidCallback onPressed;

  const AnnounceCategories(this.vacancies, this.onPressed);

  Vacancy get vacancy => vacancies.vacancy;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(AppImages.want),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "WANT",
                    style: AppTextTheme.smallTextMediumBlack,
                  ),
                ],
              ),
              IconButton(
                onPressed: onPressed,
                icon: SvgPicture.asset(
                  vacancies.isFavorite ? AppIcons.selected_star : AppIcons.star,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 25.0,
          ),
          Text(
            vacancy.name,
            style: AppTextTheme.mediumTextBlack,
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              Text(
                "${vacancy.minsalary}₸-${vacancy.maxsalary}",
                style: AppTextTheme.smallTextMediumBlack,
              ),
              const SizedBox(
                width: 20.0,
              ),
              SvgPicture.asset(AppIcons.location),
              const SizedBox(
                width: 5.0,
              ),
              Text(
                vacancy.city,
                style: AppTextTheme.smallTextMediumBlack,
              ),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            "Опыт: ${vacancy.stage}",
            style: AppTextTheme.smallTextMediumBlack,
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            "Занятость: ${vacancy.type}",
            style: AppTextTheme.smallTextMediumBlack,
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            "Опубликовано ${DateFormat('dd.MM.yyyy в kk:mm').format(DateTime.parse(vacancy.updated_at))}",
            style: AppTextTheme.smallTextMediumBlack.copyWith(
              color: AppColor.grey,
            ),
          )
        ],
      ),
    );
  }
}

class RespondWidget extends StatelessWidget {
  final LoadedVacanciesState _state;
  final FavoriteVacancy vacancies;

  const RespondWidget(this._state, this.vacancies, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10.0),
      color: AppColor.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Прикрепите резюме",
            style: AppTextTheme.smallTextWhite,
          ),
          const SizedBox(
            height: 20.0,
          ),
          TextButton(
            onPressed: () => onPressed(context),
            child: Row(
              children: [
                Text(
                  _state.resume.name,
                  style: AppTextTheme.smallTextWhite,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                SvgPicture.asset(
                  AppIcons.arrows,
                  color: AppColor.white,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          TextButton(
            onPressed: () => onPressed(context),
            child: Row(
              children: [
                Text(
                  "Добавить резюме",
                  style: AppTextTheme.smallTextWhite,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                SvgPicture.asset(AppIcons.plus_white),
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Text(
                  "Прикрепить PDF",
                  style: AppTextTheme.smallTextWhite,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                SvgPicture.asset(
                  AppIcons.pdf,
                  color: AppColor.white,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          WhiteButtonWidget(
            child: Text(
              vacancies.isFeedback ? "Резюме отправлено" : "Отправить резюме",
              style: AppTextTheme.smallTextWhite,
            ),
            onPressed: () => vacancies.isFeedback
                ? null
                : context.read<VacanciesBloc>().add(
                    VacanciesEvent.sendFeedback(id: vacancies.vacancy.id)),
          ),
        ],
      ),
    );
  }

  void onPressed(BuildContext context) {
    context.read<NavigationCubit>().onChanged(BottomNavItem.profile);
    Navigator.pushNamed(context, NavigationBar.id,
        arguments: {"role": "searcher"});
  }
}
