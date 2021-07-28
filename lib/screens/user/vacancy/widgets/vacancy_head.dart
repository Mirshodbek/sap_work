import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sap_work/bloc/user/vacancies/vacancies_user_bloc.dart';
import 'package:sap_work/bloc/user/vacancy/vacancy_user_bloc.dart';
import 'package:sap_work/resources/icons.dart';
import 'package:sap_work/resources/small_widgets.dart';
import 'package:sap_work/resources/theme/color_theme.dart';
import 'package:sap_work/resources/theme/text_theme.dart';
import 'package:sap_work/resources/validator.dart';

class VacancyHeadWidget extends StatelessWidget {
  final LoadedVacancyUserState vacancy;
  const VacancyHeadWidget({Key? key,required this.vacancy}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: const EdgeInsets.all(18),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  Expanded(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                        SmallWidgets.circleAvatar(
                            url: vacancy.vacancy.company.avatar,
                            height: 40,
                            width: 40),
                        const SizedBox(width: 10),
                        Text(vacancy.vacancy.company.name,
                            style: AppTextTheme.smallTextMediumBlack),
                      ])),
                  BlocBuilder<VacanciesUserBloc, VacanciesUserState>(
                    builder: (context, state) {
                      return state.maybeMap(
                          orElse: () => const SizedBox.shrink(),
                          loaded: (_loaded) {
                            return IconButton(
                                onPressed: () => context
                                    .read<VacanciesUserBloc>()
                                    .add(
                                      VacanciesUserEvent.postOrDeleteFavorites(
                                        id: vacancy.vacancy.id,
                                        type: !_loaded.favorites.any(
                                          (it) => it.id == vacancy.vacancy.id,
                                        ),
                                      ),
                                    ),
                                icon: SvgPicture.asset(!_loaded.favorites
                                        .any((it) => it.id == vacancy.vacancy.id)
                                    ? AppIcons.star
                                    : AppIcons.selected_star));
                          });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text(vacancy.vacancy.name, style: AppTextTheme.mediumTextBlack),
              const SizedBox(height: 20),
              Row(children: [
                Expanded(
                    child: Text(
                        "${vacancy.vacancy.minsalary}-${vacancy.vacancy.maxsalary}",
                        style: AppTextTheme.smallSizeText)),
                Expanded(
                    child: SmallWidgets.textRichLocation(vacancy.vacancy.city)),
              ]),
              const SizedBox(height: 20),
              Text("Опыт: ${vacancy.vacancy.stage}",
                  style: AppTextTheme.smallSizeText),
              const SizedBox(height: 20),
              Text("Занятость: ${vacancy.vacancy.schedule}",
                  style: AppTextTheme.smallSizeText),
            ])),
        const Divider(height: 60, thickness: 1.2, color: Color(0xFF000000)),
        Padding(
            padding: const EdgeInsets.all(18),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(vacancy.vacancy.body, style: AppTextTheme.smallSizeText),
              const SizedBox(height: 20),
              Text(
                  "Опубликовано ${Utils.dateTimeFormat(vacancy.vacancy.updated_at)}",
                  style: AppTextTheme.smallSizeText
                      .copyWith(color: AppColor.grey)),
            ])),
      ],
    );
  }
}
