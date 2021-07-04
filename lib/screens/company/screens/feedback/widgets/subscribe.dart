import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sap_work/screens/authorization/authorization.dart';

class SubscribeWidget extends StatelessWidget {
  const SubscribeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(color: AppColor.red),
            borderRadius: BorderRadius.circular(5.0)),
        child: Row(children: [
          Flexible(child: SvgPicture.asset(AppIcons.question)),
          Flexible(
              child: Column(children: [
            Text(
                "Чтобы увидеть контакты соискателя оплатите подписку на использование сервиса, сейчас вы можете ознакомиться с резюмеи вводным письмом",
                style: AppTextTheme.smallTextMediumBlack),
                SvgPicture.asset(AppIcons.long_arrow),
          ])),
        ]));
  }
}
