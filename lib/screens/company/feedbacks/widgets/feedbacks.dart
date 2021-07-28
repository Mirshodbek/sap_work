import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sap_work/bloc/company/company.dart';
import 'package:sap_work/bloc/company/feedbacks_button/feedbacks_company_btn_cubit.dart';
import 'package:sap_work/screens/authorization/authorization.dart';
import 'package:sap_work/screens/company/profile/widgets/widget.dart';

class FeedbacksWidget extends StatelessWidget {
  final List<dynamic> feedbacks;
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
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Column(children: [
              InkWell(
                  onTap: () => context
                      .read<FeedbacksCompanyBtnCubit>()
                      .resume(item.resume),
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
                              SmallWidgets.circleAvatar(
                                  url: item.user!.avatar,
                                  height: 40,
                                  width: 40),
                              const SizedBox(width: 10),
                              Text(item.user!.name,
                                  overflow: TextOverflow.ellipsis,
                                  style: AppTextTheme.smallSizeText),
                              Expanded(
                                  child: Text.rich(
                                TextSpan(children: [
                                  WidgetSpan(
                                      child: SvgPicture.asset(AppIcons.save,
                                          color: subscribe
                                              ? AppColor.red
                                              : AppColor.green)),
                                  TextSpan(
                                      text: _text(
                                          time: item.expires_at,
                                          date: item.date)),
                                ]),
                                maxLines: 2,
                                textAlign: TextAlign.right,
                                style: AppTextTheme.smallSizeText.copyWith(
                                    color: subscribe
                                        ? AppColor.red
                                        : AppColor.green),
                              )),
                            ]),
                            const SizedBox(width: 15),
                            _autoCancel(time: item.expires_at),
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
                          if (item.expires_at == null)
                            TextButton(
                                onPressed: subscribe
                                    ? () => context
                                        .read<FeedbacksCompanyBtnCubit>()
                                        .payment()
                                    : () => context
                                        .read<FeedbacksCompanyBtnCubit>()
                                        .invite(item.resume),
                                child: SmallWidgets.textRichArrow(subscribe
                                    ? "Оплатить подписку"
                                    : "Пригласить соискателя")),
                          BlocBuilder<ProfileCompanyBloc, ProfileCompanyState>(
                            builder: (context, state) {
                              return state.maybeMap(
                                  orElse: () => const SizedBox.shrink(),
                                  loaded: (_state) {
                                    return IconButton(
                                        onPressed: subscribe
                                            ? () => context
                                                .read<
                                                    FeedbacksCompanyBtnCubit>()
                                                .resume(item.resume)
                                            : () => context
                                                .read<
                                                    FeedbacksCompanyBtnCubit>()
                                                .chat(
                                                    avatarUser:
                                                        item.user!.avatar,
                                                    avatarCompany: _state
                                                        .profile.profile.avatar,
                                                    name: item.user!.name,
                                                    userId: item.user!.id),
                                        icon: SvgPicture.asset(subscribe
                                            ? AppIcons.people
                                            : AppIcons.chat));
                                  });
                            },
                          ),
                        ]),
                  ]),
            ]),
          );
        }).toList()));
  }

  Widget _autoCancel({required String? time}) {
    if (time != null) {
      return Text("Авто отмена приглашения через $time",
          style: AppTextTheme.smallSizeText.copyWith(color: AppColor.grey));
    }
    return const SizedBox.shrink();
  }

  String _text({required String? time, required String? date}) {
    if (subscribe) {
      return "Требуется подписка";
    } else {
      if (time != null && date != null) {
        return "Приглашение отправлено";
      }
      return "Отклик получен";
    }
  }
}
