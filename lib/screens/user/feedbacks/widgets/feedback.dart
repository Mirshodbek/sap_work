import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sap_work/bloc/user/feedbacks_button/feedbacks_user_btn_cubit.dart';
import 'package:sap_work/models/feedback_resume/feedback.dart';
import 'package:sap_work/resources/small_widgets.dart';
import 'package:sap_work/resources/theme/color_theme.dart';
import 'package:sap_work/screens/company/profile/widgets/widget.dart';

class FeedbackWidget extends StatelessWidget {
  final FeedbackResume feedback;

  const FeedbackWidget({Key? key, required this.feedback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        InkWell(
          onTap: () => context
              .read<FeedbacksUserBtnCubit>()
              .vacancy(feedback.vacancy_id),
          child: Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(5)),
                  border: Border.all(color: AppColor.red)),
              child: Column(children: [
                Row(children: [
                  SmallWidgets.circleAvatar(
                      url: feedback.vacancy.company.avatar,
                      height: 40,
                      width: 40),
                  const SizedBox(width: 10),
                  Text(feedback.vacancy.company.name,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextTheme.smallSizeText),
                  Expanded(
                      child: Text("Просмотрено",
                          style: AppTextTheme.smallSizeText,
                          textAlign: TextAlign.right)),
                ]),
                const SizedBox(height: 20),
                Text(feedback.vacancy.name,
                    style: AppTextTheme.smallTextMediumBlack),
                const SizedBox(height: 10),
                Row(children: [
                  Expanded(
                      child: Text(
                          "${feedback.vacancy.minsalary}-${feedback.vacancy.maxsalary}",
                          style: AppTextTheme.smallSizeText)),
                  Expanded(
                      child:
                          SmallWidgets.textRichLocation(feedback.vacancy.city)),
                ]),
                const SizedBox(height: 10),
                Text(feedback.vacancy.body,
                    style: AppTextTheme.smallSizeText,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3),
              ])),
        ),
      ],
    );
  }
}
