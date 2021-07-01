import 'package:flutter/material.dart';
import 'package:sap_work/models/vacancy/vacancy.dart';
import 'package:sap_work/screens/widgets/widget.dart';
import 'package:sap_work/theme/theme.dart';

class VacancyBodyWidget extends StatelessWidget {
  final Vacancy vacancy;

  const VacancyBodyWidget({Key? key, required this.vacancy}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      ResumeButtonsWidget(
          pdf: () {},
          share: () {},
          visible: () {},
          active: vacancy.active,
          titlePdf: "Вакансия в PDF",
          titleVisible: "Скрыть вакансию"),
      Padding(
          padding: const EdgeInsets.all(18.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("Описание вакансии", style: AppTextTheme.mediumTextBlack),
            const SizedBox(height: 20),
            Text(vacancy.body, style: AppTextTheme.smallTextMediumBlack),
            const SizedBox(height: 20),
            Text("Зароботная плата", style: AppTextTheme.smallTextMediumBlack),
            Text("По договоренности",
                style: AppTextTheme.smallTextMediumBlack
                    .copyWith(color: AppColor.grey)),
            const SizedBox(height: 20),
            Row(children: [
              Flexible(
                  child: Text("от ${vacancy.minsalary}₽",
                      style: AppTextTheme.smallTextMediumBlack)),
              const SizedBox(width: 10),
              Flexible(
                  child: Text("до ${vacancy.maxsalary}₽",
                      style: AppTextTheme.smallTextMediumBlack)),
            ]),
            const SizedBox(height: 30),
            Text("Занятость", style: AppTextTheme.smallTextMediumBlack),
            const SizedBox(height: 10),
            Text(vacancy.schedule,
                style: AppTextTheme.smallTextMediumBlack
                    .copyWith(color: AppColor.grey)),
            const SizedBox(height: 30),
            Text("График работы", style: AppTextTheme.smallTextMediumBlack),
            const SizedBox(height: 10),
            Text(vacancy.type,
                style: AppTextTheme.smallTextMediumBlack
                    .copyWith(color: AppColor.grey)),
            const SizedBox(height: 30),
            Text("Опыт", style: AppTextTheme.smallTextMediumBlack),
            const SizedBox(height: 10),
            Text(vacancy.stage,
                style: AppTextTheme.smallTextMediumBlack
                    .copyWith(color: AppColor.grey)),
            const SizedBox(height: 30),
            Text("Локация", style: AppTextTheme.smallTextMediumBlack),
            const SizedBox(height: 10),
            Text(vacancy.city,
                style: AppTextTheme.smallTextMediumBlack
                    .copyWith(color: AppColor.grey)),
            const SizedBox(height: 30),
            Text("Навыки", style: AppTextTheme.smallTextMediumBlack),
            const SizedBox(height: 10),
            Text(vacancy.abilities,
                style: AppTextTheme.smallTextMediumBlack
                    .copyWith(color: AppColor.grey)),
          ])),
    ]);
  }
}
