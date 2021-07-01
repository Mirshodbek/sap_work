import 'package:flutter/material.dart';
import 'package:sap_work/theme/theme.dart';

import 'widget.dart';

class FeedbackCountWidget extends StatelessWidget {
  const FeedbackCountWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text("2", style: AppTextTheme.mediumTextBlack),
        Text("Приглашения", style: AppTextTheme.smallTextMediumBlack),
      ]),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text("4", style: AppTextTheme.mediumTextBlack),
        Text("Отклика", style: AppTextTheme.smallTextMediumBlack),
      ]),
      ProfileAvatarWidget(),
    ]);
  }
}
