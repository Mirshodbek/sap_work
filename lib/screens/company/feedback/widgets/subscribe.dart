import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sap_work/bloc/company/feedbacks_button/feedbacks_btn_cubit.dart';
import 'package:sap_work/screens/authorization/authorization.dart';

class NoSubscribeWidget extends StatelessWidget {
  const NoSubscribeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>context.read<FeedbacksBtnCubit>().payment(),
      child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              border: Border.all(color: AppColor.red),
              borderRadius: BorderRadius.circular(5.0)),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SvgPicture.asset(AppIcons.question),
            const SizedBox(width: 10),
            Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Text(
                      "Чтобы увидеть контакты соискателя оплатите подписку на использование сервиса, сейчас вы можете ознакомиться с резюмеи вводным письмом",
                      style: AppTextTheme.smallTextMediumBlack),
                  const SizedBox(height: 10),
                  SvgPicture.asset(AppIcons.long_arrow),
                ])),
          ])),
    );
  }
}

class SubscribeWidget extends StatelessWidget {
  final String status;

  const SubscribeWidget({Key? key, required this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>context.read<FeedbacksBtnCubit>().payment(),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            border: Border.all(), borderRadius: BorderRadius.circular(5.0)),
        child: Row(children: [
          SvgPicture.asset(AppIcons.save),
          const SizedBox(width: 10),
          Expanded(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
              Text("Подписка оформлена до $status",
                  style: AppTextTheme.smallTextMediumBlack),
              const SizedBox(height: 10),
              Text.rich(TextSpan(children: [
                TextSpan(
                    text: "Продлить подписку",
                    style: AppTextTheme.smallTextMediumBlack),
                WidgetSpan(child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SvgPicture.asset(AppIcons.long_arrow),
                )),
              ])),
            ]),
          ),
        ]),
      ),
    );
  }
}
