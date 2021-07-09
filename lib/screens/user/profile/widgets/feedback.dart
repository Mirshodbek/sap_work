import 'package:flutter/material.dart';
import 'package:sap_work/resources/theme/text_theme.dart';
import 'package:sap_work/screens/company/widgets/profile.dart';

class FeedbacksResumeCountWidget extends StatelessWidget {
  const FeedbacksResumeCountWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("0", style: AppTextTheme.mediumTextBlack),
          Text("Приглашения", style: AppTextTheme.smallTextMediumBlack),
        ]),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("0", style: AppTextTheme.mediumTextBlack),
          Text("Отклики", style: AppTextTheme.smallTextMediumBlack),
        ]),
        ProfileUserAvatarWidget(),
      ],
    );
  }
}
