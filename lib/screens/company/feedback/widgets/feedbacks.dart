import 'package:extended_image/extended_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sap_work/bloc/company/company.dart';
import 'package:sap_work/bloc/company/feedbacks_button/feedbacks_btn_cubit.dart';
import 'package:sap_work/data_source/common_urls.dart';
import 'package:sap_work/screens/authorization/authorization.dart';
import 'package:sap_work/screens/company/profile/widgets/widget.dart';

class FeedbacksWidget extends StatelessWidget {
  final List<FeedbackVacancy> feedbacks;
  final bool subscribe;

  const FeedbacksWidget(
      {Key? key, required this.feedbacks, required this.subscribe})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Column(
            children: feedbacks.map((item) {
          return Column(children: [
            InkWell(
                onTap: () => context.read<FeedbacksBtnCubit>().resume(item),
                child: Container(
                    padding: const EdgeInsets.all(25),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: subscribe ? AppColor.red : Colors.black),
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(5))),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: [
                            SmallWidgets.circleAvatar(item.user.avatar),
                            const SizedBox(width: 10),
                            Text(item.user.name,
                                overflow: TextOverflow.ellipsis,
                                style: AppTextTheme.smallTextMediumBlack),
                            Expanded(
                                child: Text.rich(
                              TextSpan(children: [
                                WidgetSpan(
                                    child: SvgPicture.asset(AppIcons.save,
                                        color: subscribe
                                            ? AppColor.red
                                            : AppColor.green)),
                                TextSpan(
                                    text: subscribe
                                        ? "Требуется подписка"
                                        : "Отклик получен"),
                              ]),
                              maxLines: 2,
                              textAlign: TextAlign.center,
                              style: AppTextTheme.smallSizeText.copyWith(
                                  color: subscribe
                                      ? AppColor.red
                                      : AppColor.green),
                            )),
                          ]),
                          const SizedBox(width: 15),
                          Text("Авто отмена приглашения через 23:45",
                              style: AppTextTheme.smallSizeText
                                  .copyWith(color: AppColor.grey)),
                          Text(item.resume.name,
                              style: AppTextTheme.smallTextMediumBlack),
                          const SizedBox(width: 10),
                          if (item.answer != null)
                            Text(item.answer!,
                                style: AppTextTheme.smallTextMediumBlack),
                        ]))),
            Table(
                border: TableBorder(
                    verticalInside: BorderSide(
                        color: subscribe ? AppColor.red : Colors.black)),
                columnWidths: {
                  0: FlexColumnWidth(5),
                  1: FlexColumnWidth(1)
                },
                children: [
                  TableRow(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: subscribe ? AppColor.red : Colors.black),
                          borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(5))),
                      children: [
                        TextButton(
                            onPressed: subscribe
                                ? () =>
                                    context.read<FeedbacksBtnCubit>().payment()
                                : null,
                            child: Text.rich(TextSpan(children: [
                              TextSpan(
                                  text: subscribe
                                      ? "Оплатить подписку"
                                      : "Пригласить соискателя",
                                  style: AppTextTheme.smallTextMediumBlack),
                              WidgetSpan(
                                  child: SvgPicture.asset(
                                      AppIcons.right_arrow_ios))
                            ]))),
                        IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                                subscribe ? AppIcons.people : AppIcons.chat)),
                      ]),
                ]),
          ]);
        }).toList()));
  }
}
