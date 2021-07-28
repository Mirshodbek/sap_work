import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sap_work/bloc/user/vacancies/vacancies_user_bloc.dart';
import 'package:sap_work/bloc/user/vacancies_button/vacancies_user_btn_cubit.dart';
import 'package:sap_work/models/vacancy/vacancy.dart';
import 'package:sap_work/resources/icons.dart';
import 'package:sap_work/resources/small_widgets.dart';
import 'package:sap_work/resources/theme/color_theme.dart';
import 'package:sap_work/resources/theme/text_theme.dart';
import 'package:sap_work/screens/authorization/authorization.dart';

class IncreaseVacanciesWidget extends StatelessWidget {
  final Vacancy vacancy;
  final List<Vacancy> favorites;

  bool get isFavorite => favorites.any((it) => it.id == vacancy.id);

  const IncreaseVacanciesWidget(
      {Key? key, required this.vacancy, required this.favorites})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: () => context.read<VacanciesUserBtnCubit>().vacancy(vacancy.id),
        child: Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
                border: Border.all(color: AppColor.red),
                borderRadius: BorderRadius.circular(5)),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(children: [
                Expanded(
                    child: Row(children: [
                  SmallWidgets.circleAvatar(
                      url: vacancy.company.avatar, height: 40, width: 40),
                  const SizedBox(width: 10),
                  Text(vacancy.company.name,
                      style: AppTextTheme.smallTextMediumBlack),
                ])),
                Text("${vacancy.minsalary}-${vacancy.maxsalary}",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextTheme.smallTextMediumBlack)
              ]),
              const SizedBox(height: 20),
              Text(vacancy.city, style: AppTextTheme.smallSizeText),
              const SizedBox(height: 10),
              Text(vacancy.name, style: AppTextTheme.mediumTextBlack),
              const SizedBox(height: 10),
              Text(vacancy.body,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 7,
                  style: AppTextTheme.smallTextMediumBlack),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: TextButton.icon(
                        style: ButtonStyle(
                            padding:
                                MaterialStateProperty.all(EdgeInsets.zero)),
                        onPressed: () {
                          if (!isFavorite)
                            context.read<VacanciesUserBloc>().add(
                                VacanciesUserEvent.postOrDeleteFavorites(
                                    id: vacancy.id, type: !isFavorite));
                        },
                        icon: SvgPicture.asset(AppIcons.cancel),
                        label: Text("Отклонить",
                            style: AppTextTheme.smallSizeText)),
                  ),
                  Expanded(
                    child: TextButton.icon(
                        style: ButtonStyle(
                            padding:
                                MaterialStateProperty.all(EdgeInsets.zero)),
                        onPressed: () {
                          if (isFavorite)
                            context.read<VacanciesUserBloc>().add(
                                VacanciesUserEvent.postOrDeleteFavorites(
                                    id: vacancy.id, type: !isFavorite));
                        },
                        icon: SvgPicture.asset(AppIcons.save),
                        label: Text((!isFavorite) ? "Сохранень" : "Сохранить",
                            style: AppTextTheme.smallSizeText.copyWith(
                              color: !isFavorite?AppColor.green:AppColor.black
                            ))),
                  ),
                ],
              )
            ])),
      ),
    );
  }
}
