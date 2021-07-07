import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sap_work/bloc/company/feedbacks_button/feedbacks_btn_cubit.dart';
import 'package:sap_work/resources/icons.dart';
import 'package:sap_work/resources/theme/text_theme.dart';

class RequestWidget extends StatelessWidget {
  final SumFeedbacksBtnState sum;
  const RequestWidget({Key? key,required this.sum}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Оставить заявку",
            style: AppTextTheme.mediumTextBlack),
        const SizedBox(height: 20),
        Text(
            "После заявку тариф будет подключен автоматически. Все полученые отклики станут доступны сразу.",
            style:
            AppTextTheme.smallTextMediumBlack),
        const SizedBox(height: 30),
        Table(
            border: TableBorder(
                verticalInside: BorderSide()),
            columnWidths: {
              0: FlexColumnWidth(1),
              1: FlexColumnWidth(5),
              2: FlexColumnWidth(1)
            },
            children: [
              TableRow(
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius:
                      BorderRadius.circular(5)),
                  children: [
                    _button(
                        onPressed: () => context
                            .read<
                            FeedbacksBtnCubit>()
                            .minus(),
                        leftRight: false),
                    Padding(
                      padding:
                      const EdgeInsets.only(
                          top: 10),
                      child: Text(
                          sum.sum.toString(),
                          textAlign:
                          TextAlign.center,
                          style: AppTextTheme
                              .smallTextMediumBlack),
                    ),
                    _button(
                        onPressed: () => context
                            .read<
                            FeedbacksBtnCubit>()
                            .plus(),
                        leftRight: true),
                  ]),
            ]),
        const SizedBox(height: 20),
        Text("Итого",
            style:
            AppTextTheme.smallTextMediumBlack),
        const SizedBox(height: 10),
        Text(sum.total.toString(),
            style: AppTextTheme.splashFirstText
                .copyWith(color: Colors.black)),
      ],
    );
  }


  TextButton _button(
      {required VoidCallback onPressed, required bool leftRight}) =>
      TextButton(
          onPressed: onPressed,
          child: SvgPicture.asset(
              leftRight ? AppIcons.plus_black : AppIcons.minus));
}
