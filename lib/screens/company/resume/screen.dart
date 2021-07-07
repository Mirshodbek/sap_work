import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sap_work/bloc/company/company.dart';
import 'package:sap_work/bloc/company/core_feedbacks/core_feedbacks_bloc.dart';
import 'package:sap_work/bloc/company/feedbacks_button/feedbacks_btn_cubit.dart';
import 'package:sap_work/resources/constants.dart';
import 'package:sap_work/screens/authorization/authorization.dart';
import 'package:sap_work/screens/company/resume/widgets/head.dart';
import 'package:sap_work/screens/company/resume/widgets/resume_body.dart';
import 'package:sap_work/screens/widgets/backward.dart';
import 'package:sap_work/resources/theme/color_theme.dart';

class ResumeScreenCompany extends StatelessWidget {
  static const String id = 'resume';

  const ResumeScreenCompany({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;
    return MultiBlocProvider(
      providers: [
        BlocProvider<CoreFeedbacksBloc>.value(
            value: arguments[CORE_FEEDBACKS_BLOC]),
        BlocProvider<FeedbacksBtnCubit>.value(
            value: arguments[FEEDBACKS_BTN_CUBIT]),
      ],
      child: Scaffold(
          backgroundColor: AppColor.white,
          appBar: AppBar(
              elevation: 0.0,
              backgroundColor: Colors.transparent,
              leading: BackWardWidget(
                () => Navigator.of(context).pop(),
              ),
              leadingWidth: MediaQuery.of(context).size.width),
          body: BlocBuilder<CoreFeedbacksBloc, CoreFeedbacksState>(
            builder: (context, state) {
              return state.maybeMap(
                  orElse: () => const SizedBox.shrink(),
                  loaded: (_state) {
                    return BlocBuilder<FeedbacksBtnCubit, FeedbacksBtnState>(
                      builder: (context, state) {
                        return state.maybeMap(
                            orElse: () => const SizedBox.shrink(),
                            resumeInvite: (_resume) {
                              return SingleChildScrollView(
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                    ResumeHeadWidget(
                                      resume: _resume.resume,
                                      subscribe: Utils.isValid(
                                          _state.subscribe.subscribe),
                                    ),
                                    const Divider(
                                        height: 20,
                                        color: Colors.black,
                                        thickness: 1.2),
                                    TextButton.icon(
                                        onPressed:
                                            _resume.resume.expires_at == null
                                                ? () => context
                                                    .read<FeedbacksBtnCubit>()
                                                    .resumeInvite(
                                                        _resume.resume, true)
                                                : null,
                                        icon: SvgPicture.asset(AppIcons.people),
                                        label: Text(
                                            _resume.resume.expires_at == null
                                                ? "Пригласить соискателя"
                                                : "Приглашение отправлено",
                                            style: AppTextTheme
                                                .smallTextMediumBlack)),
                                    const Divider(
                                        height: 20,
                                        color: Colors.black,
                                        thickness: 1.2),
                                    ResumeBodyWidget(
                                      resume: _resume.resume,
                                      subscribe: Utils.isValid(
                                          _state.subscribe.subscribe),
                                    ),
                                  ]));
                            });
                      },
                    );
                  });
            },
          )),
    );
  }
}
