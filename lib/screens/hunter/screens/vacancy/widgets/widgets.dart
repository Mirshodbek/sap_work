import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sap_work/bloc/hunter/profile/profile_bloc.dart';
import 'package:sap_work/models/vacancy/vacancy.dart';
import 'package:sap_work/router/app_router.dart';

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
                "${vacancy.salary}₸",
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
        ],
      ),
    );
  }
}

class RespondWidget extends StatelessWidget {
  final FavoriteVacancy announce;

  const RespondWidget(this.announce);

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
          _button(
            Row(
              children: [
                Text(
                  "CV Customer Support Officer",
                  style: AppTextTheme.smallTextWhite,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                SvgPicture.asset(AppIcons.input),
              ],
            ),
            () {},
          ),
          const SizedBox(
            height: 20.0,
          ),
          _button(
            Row(
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
            () {},
          ),
          const SizedBox(
            height: 20.0,
          ),
          WhiteButtonWidget(
            child: Text(
              // announce.isResponse ? "Отменить отклик" :
              "Отправить резюме",
              style: AppTextTheme.smallTextWhite,
            ),
            onPressed: () => _showDialog(context),
          ),
        ],
      ),
    );
  }

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => SimpleDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        contentPadding: EdgeInsets.zero,
        title: Text(
          "Ваше резюме отправлено",
          textAlign: TextAlign.center,
          style: AppTextTheme.mediumTextBlack,
        ),
        children: [
          const SizedBox(
            height: 10.0,
          ),
          Text(
            "Вы можете отслеживать статус отклика и приглашений на собеседование",
            style: AppTextTheme.smallTextMediumBlack,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 40.0,
          ),
          SvgPicture.asset(
            AppIcons.success,
            alignment: Alignment.centerRight,
          ),
        ],
      ),
    );
  }

  Widget _button(Widget child, VoidCallback onPressed) => TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          alignment: Alignment.centerLeft,
        ),
        child: child,
      );
}
