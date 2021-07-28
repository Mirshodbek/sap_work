import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sap_work/bloc/company/company.dart';
import 'package:sap_work/bloc/user/vacancies/vacancies_user_bloc.dart';
import 'package:sap_work/bloc/user/vacancies_button/vacancies_user_btn_cubit.dart';
import 'package:sap_work/models/vacancy/vacancy.dart';
import 'package:sap_work/resources/icons.dart';
import 'package:sap_work/resources/small_widgets.dart';
import 'package:sap_work/resources/theme/color_theme.dart';
import 'package:sap_work/resources/theme/text_theme.dart';

class DecreaseVacanciesWidget extends StatelessWidget {
  final Vacancy vacancy;
  final List<Vacancy> favorites;

  const DecreaseVacanciesWidget({
    Key? key,
    required this.vacancy,
    required this.favorites,
  }) : super(key: key);

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
              IconButton(
                  onPressed: () => context.read<VacanciesUserBloc>().add(
                      VacanciesUserEvent.postOrDeleteFavorites(
                          id: vacancy.id,
                          type: !favorites.any((it) => it.id == vacancy.id))),
                  icon: SvgPicture.asset(
                      !favorites.any((it) => it.id == vacancy.id)
                          ? AppIcons.star
                          : AppIcons.selected_star)),
            ]),
            const SizedBox(height: 10),
            Row(children: [
              Expanded(
                  child: Text("${vacancy.minsalary}-${vacancy.maxsalary}",
                      style: AppTextTheme.smallTextMediumBlack)),
              Expanded(child: SmallWidgets.textRichLocation(vacancy.city)),
            ]),
            const SizedBox(height: 20),
            Text(vacancy.name, style: AppTextTheme.mediumTextBlack),
            const SizedBox(height: 10),
            Text(vacancy.body,
                style: AppTextTheme.smallTextMediumBlack,
                maxLines: 2,
                overflow: TextOverflow.ellipsis),
            const SizedBox(height: 10),
            Wrap(
              children: vacancy.abilities.split(",").map((item) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Chip(
                    shape: StadiumBorder(),
                    side: BorderSide(),
                    backgroundColor: Colors.white,
                    label: Text(item),
                  ),
                );
              }).toList(),
            )
          ]),
        ),
      ),
    );
  }
}
