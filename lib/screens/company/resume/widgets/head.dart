import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sap_work/bloc/company/company.dart';
import 'package:sap_work/resources/icons.dart';
import 'package:sap_work/resources/lists.dart';
import 'package:sap_work/resources/small_widgets.dart';
import 'package:sap_work/resources/theme/color_theme.dart';
import 'package:sap_work/resources/theme/text_theme.dart';

class ResumeHeadWidget extends StatelessWidget {
  final FeedbackVacancy resume;
  final bool subscribe;

  const ResumeHeadWidget(
      {Key? key, required this.resume, required this.subscribe})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(resume.user.name, style: AppTextTheme.mediumTextBlack),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          if (subscribe)
            Wrap(
                children: Lists.linkList.map((item) {
              return TextButton(
                  onPressed: () {},
                  child: Row(children: [
                    Text(item, style: AppTextTheme.smallTextMediumBlack),
                    SvgPicture.asset(AppIcons.link_arrow),
                  ]));
            }).toList())
          else
            Text.rich(TextSpan(children: [
              WidgetSpan(
                  child: SvgPicture.asset(AppIcons.save, color: AppColor.red)),
              TextSpan(
                  text: "Для просмотра контактов требуется подписка",
                  style: AppTextTheme.smallTextMediumBlack
                      .copyWith(color: AppColor.red))
            ])),
          SmallWidgets.circleAvatar(url:resume.user.avatar,height: 80,width: 80),
        ]),
        const SizedBox(height: 20),
        Align(
            alignment: Alignment.center,
            child: SmallWidgets.textRich(resume.resume.name)),
      ]),
    );
  }
}
