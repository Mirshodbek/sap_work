import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sap_work/bloc/user/feedbacks/feedbacks_resume_bloc.dart';
import 'package:sap_work/bloc/user/feedbacks_button/feedbacks_user_btn_cubit.dart';
import 'package:sap_work/bloc/user/profile/profile_user_bloc.dart';
import 'package:sap_work/models/feedback_resume/feedback.dart';
import 'package:sap_work/models/invite/invite.dart';
import 'package:sap_work/resources/icons.dart';
import 'package:sap_work/resources/small_widgets.dart';
import 'package:sap_work/resources/theme/color_theme.dart';
import 'package:sap_work/resources/theme/text_theme.dart';

class InviteWidget extends StatelessWidget {
  final Invite invites;
  final FeedbackResume vacancy;

  const InviteWidget({Key? key, required this.invites, required this.vacancy})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
              border: Border.all(color: AppColor.red),
              borderRadius: BorderRadius.vertical(top: Radius.circular(5))),
          child: Column(children: [
            Row(children: [
              SmallWidgets.circleAvatar(
                  url: vacancy.vacancy.company.name, height: 40, width: 40),
              const SizedBox(width: 10),
              Text(vacancy.vacancy.company.name,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextTheme.smallSizeText),
              Expanded(
                  child: Text.rich(
                      TextSpan(children: [
                        WidgetSpan(
                            child: SvgPicture.asset(AppIcons.save,
                                color: AppColor.green)),
                        TextSpan(text: "Приглашение")
                      ]),
                      style: AppTextTheme.smallSizeText,
                      textAlign: TextAlign.right)),
            ]),
            const SizedBox(height: 20),
            Text("Авто отмена приглашения через ${invites.expires_at}",
                style:
                    AppTextTheme.smallSizeText.copyWith(color: AppColor.grey)),
            Text(invites.vacancy.name,
                style: AppTextTheme.smallTextMediumBlack),
            const SizedBox(height: 10),
            Text(invites.answer, style: AppTextTheme.smallSizeText),
            const SizedBox(height: 20),
          ])),
      Table(
          border: TableBorder(verticalInside: BorderSide(color: AppColor.red)),
          columnWidths: {
            0: FlexColumnWidth(5),
            1: FlexColumnWidth(1)
          },
          children: [
            TableRow(
                decoration: BoxDecoration(
                    border: Border.all(color: AppColor.red),
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(5))),
                children: [
                  TextButton(
                      onPressed: () => context.read<FeedbacksResumeBloc>().add(
                          FeedbacksResumeEvent.sendFeedbacks(
                              accept: true,
                              resumeId: invites.resume_id,
                              vacancyId: invites.vacancy_id)),
                      child: FittedBox(
                        child: SmallWidgets.textRichArrow(invites.accepted != null
                            ? "Принять приглашение"
                            : "Вы приняли приглашение"),
                      )),
                  BlocBuilder<ProfileUserBloc, ProfileUserState>(
                    builder: (context, state) {
                      return state.maybeMap(
                          orElse: () => const SizedBox.shrink(),
                          loaded: (_state) {
                            return IconButton(
                                onPressed: () => context
                                    .read<FeedbacksUserBtnCubit>()
                                    .chat(
                                        avatarUser:
                                            _state.profile.profile.avatar,
                                        avatarCompany:
                                            vacancy.vacancy.company.avatar,
                                        name: vacancy.vacancy.company.name,
                                        companyId: invites.vacancy.company_id),
                                icon: SvgPicture.asset(AppIcons.chat));
                          });
                    },
                  ),
                ]),
          ]),
    ]);
  }
}
