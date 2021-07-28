import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sap_work/bloc/company/core_feedbacks/core_feedbacks_company_bloc.dart';
import 'package:sap_work/bloc/company/feedbacks/feedbacks_vacancy_bloc.dart';
import 'package:sap_work/bloc/company/feedbacks_button/feedbacks_company_btn_cubit.dart';
import 'package:sap_work/bloc/company/profile/profile_company_bloc.dart';
import 'package:sap_work/bloc/company/resumes_button/resumes_company_btn_cubit.dart';
import 'package:sap_work/resources/icons.dart';
import 'package:sap_work/resources/small_widgets.dart';
import 'package:sap_work/resources/theme/text_theme.dart';
import 'package:sap_work/screens/company/invite/screen.dart';
import 'package:sap_work/screens/company/payment/screen.dart';
import 'package:sap_work/screens/company/profile/widgets/widget.dart';
import 'package:sap_work/screens/company/resume/screen.dart';

class DecreaseResumesWidget extends StatelessWidget {
  final Resume resume;

  const DecreaseResumesWidget({Key? key, required this.resume})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.vertical(top: Radius.circular(5))),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(children: [
              SmallWidgets.circleAvatar(
                  url:
                      resume.user != null ? resume.user!.avatar : DEFAULT_PHOTO,
                  height: 40,
                  width: 40),
              const SizedBox(width: 10),
              Flexible(
                  child: Text(
                      resume.user != null ? resume.user!.name : "Соискатель",
                      style: AppTextTheme.smallTextMediumBlack)),
            ]),
            const SizedBox(height: 20),
            Text(resume.name, style: AppTextTheme.mediumTextBlack),
            const SizedBox(height: 10),
            Text(resume.body, style: AppTextTheme.smallTextMediumBlack),
            const SizedBox(height: 10),
          ])),
      Table(border: TableBorder(verticalInside: BorderSide()), columnWidths: {
        0: FlexColumnWidth(5),
        1: FlexColumnWidth(1)
      }, children: [
        TableRow(
            decoration: BoxDecoration(
                border: Border.all(),
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(5))),
            children: [
              BlocBuilder<CoreFeedbacksCompanyBloc, CoreFeedbacksCompanyState>(
                builder: (context, state) {
                  return state.maybeMap(
                      orElse: () => const SizedBox.shrink(),
                      loaded: (_state) {
                        return TextButton(
                            onPressed: () => context
                                .read<ResumesCompanyBtnCubit>()
                                .resume(resume),
                            child: SmallWidgets.textRichArrow(
                                "Просмотреть резюме"));
                      });
                },
              ),
              BlocBuilder<ProfileCompanyBloc, ProfileCompanyState>(
                builder: (context, state) {
                  return state.maybeMap(
                      orElse: () => const SizedBox.shrink(),
                      loaded: (_state) {
                        return IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(AppIcons.chat));
                      });
                },
              ),
            ]),
      ]),
    ]);
  }
}
