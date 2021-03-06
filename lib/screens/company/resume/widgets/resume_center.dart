import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sap_work/bloc/company/resume_buttons/resume_company_btn_cubit.dart';
import 'package:sap_work/models/models.dart';
import 'package:sap_work/resources/icons.dart';
import 'package:sap_work/resources/theme/color_theme.dart';
import 'package:sap_work/resources/theme/text_theme.dart';

class ResumeCenterWidget extends StatelessWidget {
  final Resume resume;
  final bool subscribe;

  const ResumeCenterWidget(
      {Key? key, required this.resume, required this.subscribe})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text("Контакты", style: AppTextTheme.mediumTextBlack),
        if (subscribe)
          Column(children: [
            const SizedBox(height: 10),
            Text("Почта: info@mail.ru",
                style: AppTextTheme.smallTextMediumBlack),
            const SizedBox(height: 10),
            Text("Телефон: ${resume.user!.phone}",
                style: AppTextTheme.smallTextMediumBlack),
          ])
        else
          TextButton(
              onPressed: () => context.read<ResumeCompanyBtnCubit>().payment(),
              child: Row(children: [
                Text("Оплатить подписку",
                    style: AppTextTheme.smallTextMediumBlack
                        .copyWith(color: AppColor.red)),
                SvgPicture.asset(AppIcons.right_arrow_ios, color: AppColor.red),
              ])),
        const SizedBox(height: 30),
        Text("Опыт работы", style: AppTextTheme.mediumTextBlack),
        const SizedBox(height: 10),
        if (resume.stages != null)
          ...resume.stages!.map((item) {
            return Column(children: [
              Text(item.company_name, style: AppTextTheme.smallTextMediumBlack),
              const SizedBox(height: 5),
              Text(item.position, style: AppTextTheme.smallTextMediumBlack),
              const SizedBox(height: 5),
              Text(item.period, style: AppTextTheme.smallTextMediumBlack),
              const SizedBox(height: 5),
              Text(item.description, style: AppTextTheme.smallTextMediumBlack),
            ]);
          }),
        const SizedBox(height: 30),
        Text("Образование", style: AppTextTheme.mediumTextBlack),
        if (resume.grades != null)
          ...resume.grades!.map((item) {
            return Column(children: [
              Text(item.university_name,
                  style: AppTextTheme.smallTextMediumBlack),
              Text(item.period, style: AppTextTheme.smallTextMediumBlack),
              Text(item.grade, style: AppTextTheme.smallTextMediumBlack),
            ]);
          }),
      ]),
    );
  }
}
