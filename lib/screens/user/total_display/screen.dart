import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sap_work/bloc/user/core_profile/core_profile_user_bloc.dart';
import 'package:sap_work/bloc/user/feedbacks/feedbacks_resume_bloc.dart';
import 'package:sap_work/bloc/user/feedbacks_button/feedbacks_user_btn_cubit.dart';
import 'package:sap_work/bloc/user/profile/profile_user_bloc.dart';
import 'package:sap_work/bloc/user/resume/resume_user_bloc.dart';
import 'package:sap_work/bloc/user/resumes/resumes_user_bloc.dart';
import 'package:sap_work/bloc/user/vacancies/vacancies_user_bloc.dart';
import 'package:sap_work/resources/constants.dart';
import 'package:sap_work/resources/small_widgets.dart';
import 'package:sap_work/resources/theme/text_theme.dart';
import 'package:sap_work/screens/user/feedbacks/widgets/feedback.dart';
import 'package:sap_work/screens/user/feedbacks/widgets/invite.dart';
import 'package:sap_work/screens/widgets/backward.dart';

class TotalDisplayScreen extends StatelessWidget {
  static const String id = 'total_display';

  const TotalDisplayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;
    return MultiBlocProvider(
      providers: [
        BlocProvider<VacanciesUserBloc>.value(
            value: arguments[VACANCIES_USER_BLOC]),
        BlocProvider<FeedbacksResumeBloc>.value(
            value: arguments[FEEDBACKS_RESUME_BLOC]),
        BlocProvider<ResumesUserBloc>.value(
            value: arguments[RESUMES_USER_BLOC]),
        BlocProvider<CoreProfileUserBloc>.value(
            value: arguments[CORE_PROFILE_USER_BLOC]),
        BlocProvider<ResumeUserBloc>.value(value: arguments[RESUME_USER_BLOC]),
        BlocProvider<FeedbacksUserBtnCubit>.value(
            value: arguments[FEEDBACKS_USER_BTN_CUBIT]),
        BlocProvider<ProfileUserBloc>.value(
            value: arguments[PROFILE_USER_BLOC]),
      ],
      child: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            leading: BackWardWidget(() => Navigator.of(context).pop()),
            leadingWidth: MediaQuery.of(context).size.width,
          ),
          body: Padding(
              padding: const EdgeInsets.all(18),
              child: Column(children: [
                const SizedBox(height: 20),
                if (arguments[TYPE] == FEEDBACK)
                  Text("Все отклики", style: AppTextTheme.mediumTextBlack),
                if (arguments[TYPE] == INVITE)
                  Text("Все приглашения", style: AppTextTheme.mediumTextBlack),
                if (arguments[TYPE] == CHAT)
                  Text("Чаты", style: AppTextTheme.mediumTextBlack),
                BlocBuilder<FeedbacksResumeBloc, FeedbacksResumeState>(
                    builder: (context, state) {
                  return state.maybeMap(
                      orElse: () => const SizedBox.shrink(),
                      loaded: (_state) {
                        return Expanded(
                          child: ListView(shrinkWrap: true, children: [
                            if (arguments[TYPE] == FEEDBACK)
                              ..._state.feedbacks.map((item) {
                                return Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: FeedbackWidget(feedback: item),
                                );
                              }),
                            if (arguments[TYPE] == INVITE)
                              ..._state.invites.map((item) {
                                return Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8),
                                  child: InviteWidget(
                                      invites: item,
                                      vacancy: _state.feedbacks.first),
                                );
                              }),
                            if (arguments[TYPE] == CHAT)
                              ..._state.invites.map((item) {
                                return ListTile(
                                  leading: SmallWidgets.circleAvatar(
                                      url: DEFAULT_PHOTO,
                                      height: 40,
                                      width: 40),
                                  title: Text("Работодатель",
                                      style: AppTextTheme.smallSizeText),
                                  subtitle: Text(item.answer,
                                      style: AppTextTheme.smallTextMediumBlack),
                                  onTap: () {
                                    context.read<FeedbacksUserBtnCubit>().chat(
                                        avatarUser: DEFAULT_PHOTO,
                                        avatarCompany: DEFAULT_PHOTO,
                                        name: _state.feedbacks.first.vacancy
                                            .company.name,
                                        companyId: item.vacancy.company_id);
                                  },
                                );
                              }),
                          ]),
                        );
                      });
                }),
              ]))),
    );
  }
}
