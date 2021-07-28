import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sap_work/bloc/navigation/navigation_cubit.dart';
import 'package:sap_work/bloc/user/core_profile/core_profile_user_bloc.dart';
import 'package:sap_work/bloc/user/feedbacks/feedbacks_resume_bloc.dart';
import 'package:sap_work/bloc/user/feedbacks_button/feedbacks_user_btn_cubit.dart';
import 'package:sap_work/bloc/user/profile/profile_user_bloc.dart';
import 'package:sap_work/bloc/user/resume/resume_user_bloc.dart';
import 'package:sap_work/bloc/user/resumes/resumes_user_bloc.dart';
import 'package:sap_work/bloc/user/vacancies/vacancies_user_bloc.dart';
import 'package:sap_work/resources/small_widgets.dart';
import 'package:sap_work/resources/theme/color_theme.dart';
import 'package:sap_work/resources/theme/text_theme.dart';
import 'package:sap_work/screens/authorization/authorization.dart';
import 'package:sap_work/screens/user/chat/screen.dart';
import 'package:sap_work/screens/user/feedbacks/widgets/feedback.dart';
import 'package:sap_work/screens/user/feedbacks/widgets/invite.dart';
import 'package:sap_work/screens/user/select_resume/select_resume.dart';
import 'package:sap_work/screens/user/total_display/screen.dart';
import 'package:sap_work/screens/user/vacancy/screen.dart';
import 'package:sap_work/screens/widgets/bottom_nav_bar.dart';
import 'package:sap_work/screens/widgets/loading.dart';
import 'package:sap_work/screens/widgets/shimmer.dart';

class FeedbacksScreenUser extends StatelessWidget {
  const FeedbacksScreenUser({Key? key}) : super(key: key);

  static Widget create() {
    return MultiBlocProvider(
      providers: [
        BlocProvider<FeedbacksUserBtnCubit>(
            create: (_) => FeedbacksUserBtnCubit()),
      ],
      child: FeedbacksScreenUser(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.white,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
        ),
        bottomNavigationBar:
            BottomNavBarWidget(context.watch<NavigationCubit>().state),
        body: BlocListener<FeedbacksUserBtnCubit, FeedbacksUserBtnState>(
          listener: (context, state) {
            if (state is ChatFeedbacksUserBtnState) {
              Navigator.pushNamed(context, ChatScreenUser.id, arguments: {
                FEEDBACKS_USER_BTN_CUBIT: context.read<FeedbacksUserBtnCubit>()
              });
            }
            if (state is SelectResumeFeedbacksUserBtnState) {
              Navigator.pushNamed(context, SelectResumeScreen.id, arguments: {
                FEEDBACKS_RESUME_BLOC: context.read<FeedbacksResumeBloc>(),
                RESUME_USER_BLOC: context.read<ResumeUserBloc>(),
                RESUMES_USER_BLOC: context.read<ResumesUserBloc>(),
                CORE_PROFILE_USER_BLOC: context.read<CoreProfileUserBloc>()
              });
            }
            if (state is VacancyFeedbacksUserBtnState) {
              Navigator.pushNamed(context, VacancyUserScreen.id, arguments: {
                FEEDBACKS_RESUME_BLOC: context.read<FeedbacksResumeBloc>(),
                RESUME_USER_BLOC: context.read<ResumeUserBloc>(),
                RESUMES_USER_BLOC: context.read<ResumesUserBloc>(),
                CORE_PROFILE_USER_BLOC: context.read<CoreProfileUserBloc>(),
                VACANCIES_USER_BLOC: context.read<VacanciesUserBloc>(),
                VACANCY_ID: state.id
              });
            }
            if (state is TotalDisplayFeedbacksUserBtnState) {
              Navigator.pushNamed(context, TotalDisplayScreen.id, arguments: {
                FEEDBACKS_RESUME_BLOC: context.read<FeedbacksResumeBloc>(),
                RESUME_USER_BLOC: context.read<ResumeUserBloc>(),
                RESUMES_USER_BLOC: context.read<ResumesUserBloc>(),
                CORE_PROFILE_USER_BLOC: context.read<CoreProfileUserBloc>(),
                VACANCIES_USER_BLOC: context.read<VacanciesUserBloc>(),
                FEEDBACKS_USER_BTN_CUBIT: context.read<FeedbacksUserBtnCubit>(),
                PROFILE_USER_BLOC: context.read<ProfileUserBloc>(),
                TYPE: state.status,
              });
            }
          },
          child: BlocBuilder<FeedbacksResumeBloc, FeedbacksResumeState>(
              builder: (context, state) {
            return state.map(
                empty: (_) => const SizedBox.shrink(),
                loading: (_) => LoadingWidget(),
                noFeedbacks: (_) => Container(
                    padding: const EdgeInsets.all(18),
                    alignment: Alignment.center,
                    child: Text("Скоро тут появятся отклики",
                        style: AppTextTheme.mediumTextBlack)),
                loaded: (_state) {
                  return RefreshIndicator(
                    onRefresh: () async {
                      context
                          .read<FeedbacksResumeBloc>()
                          .add(const FeedbacksResumeEvent.getFeedbacks());
                    },
                    child: SingleChildScrollView(
                        padding: const EdgeInsets.all(18),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text("Отклики на вакансию",
                                  style: AppTextTheme.mediumTextBlack),
                              BlocBuilder<ResumeUserBloc, ResumeUserState>(
                                builder: (context, state) {
                                  return state.map(
                                      empty: (_) => const SizedBox.shrink(),
                                      loading: (_) =>
                                          const ShimmerWidget.rectangular(
                                              height: 18, width: 100),
                                      loaded: (_loaded) {
                                        return TextButton(
                                            onPressed: () => context
                                                .read<FeedbacksUserBtnCubit>()
                                                .selectResume(),
                                            child: SmallWidgets.textRichArrow(
                                                _loaded.resume.name));
                                      },
                                      noResume: (_) =>
                                          SmallWidgets.textRichArrow(
                                              EMPTY_TITLE_RESUME));
                                },
                              ),
                              if (_state.feedbacks.isEmpty)
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const SizedBox(height: 100),
                                      Text("У вас пока нет откликов",
                                          style: AppTextTheme.mediumTextBlack),
                                      const SizedBox(height: 20),
                                      Text(
                                          "Перейдите на главную страницу, чтобы посмотреть вакансии и откликнуться на интересующие вас",
                                          style: AppTextTheme
                                              .smallTextMediumBlack),
                                    ])
                              else
                                Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    const SizedBox(height: 10),
                                    Text("Приглашения",
                                        style: AppTextTheme.mediumTextBlack),
                                    const SizedBox(height: 10),
                                    if (_state.invites.isEmpty)
                                      Text("У вас пока нет приглашения",
                                          style: AppTextTheme.smallSizeText)
                                    else
                                      Column(
                                        children: [
                                          InviteWidget(
                                              vacancy: _state.feedbacks.first,
                                              invites: _state.invites.first),
                                          if (_state.invites.length > 1)
                                            TextButton.icon(
                                              onPressed: () => context
                                                  .read<FeedbacksUserBtnCubit>()
                                                  .totalDisplay(INVITE),
                                              label: Text("Все приглашения",
                                                  style: AppTextTheme
                                                      .smallSizeText
                                                      .copyWith(
                                                          color: AppColor.red)),
                                              icon: SvgPicture.asset(
                                                  AppIcons.more),
                                            )
                                        ],
                                      ),
                                    const SizedBox(height: 20),
                                    Text("Последние чаты",
                                        style: AppTextTheme.mediumTextBlack),
                                    if (_state.invites.isNotEmpty)
                                      TextButton(
                                          onPressed: () {
                                            context
                                                .read<FeedbacksUserBtnCubit>()
                                                .chat(
                                                    avatarUser: DEFAULT_PHOTO,
                                                    avatarCompany:
                                                        DEFAULT_PHOTO,
                                                    name: _state.feedbacks.first
                                                        .vacancy.company.name,
                                                    companyId: _state
                                                        .invites
                                                        .first
                                                        .vacancy
                                                        .company_id);
                                          },
                                          child: Row(
                                            children: [
                                              SmallWidgets.circleAvatar(
                                                  url: DEFAULT_PHOTO,
                                                  height: 40,
                                                  width: 40),
                                              Column(
                                                children: [
                                                  Text("Работодатель",
                                                      style: AppTextTheme
                                                          .smallSizeText),
                                                  Text(
                                                      _state
                                                          .invites.first.answer,
                                                      style: AppTextTheme
                                                          .smallTextMediumBlack)
                                                ],
                                              )
                                            ],
                                          ))
                                    else
                                      Text("У вас пока нет чаты",
                                          style: AppTextTheme.smallSizeText),
                                    const SizedBox(height: 10),
                                    if (_state.allChats.length > 1)
                                      TextButton.icon(
                                          onPressed: () => context
                                              .read<FeedbacksUserBtnCubit>()
                                              .totalDisplay(CHAT),
                                          icon: SvgPicture.asset(AppIcons.chat),
                                          label: Text(
                                            "Все чаты",
                                            style: AppTextTheme.smallSizeText
                                                .copyWith(color: AppColor.red),
                                          )),
                                    const SizedBox(height: 20),
                                    Text("Все отклики",
                                        style: AppTextTheme.mediumTextBlack),
                                    const SizedBox(height: 10),
                                    FeedbackWidget(
                                        feedback: _state.feedbacks.first),
                                    const SizedBox(height: 10),
                                    if (_state.feedbacks.length > 1)
                                      TextButton.icon(
                                        onPressed: () => context
                                            .read<FeedbacksUserBtnCubit>()
                                            .totalDisplay(FEEDBACK),
                                        icon: SvgPicture.asset(AppIcons.save,
                                            color: AppColor.red),
                                        label: Text(
                                          "Все отклики",
                                          textAlign: TextAlign.center,
                                          style: AppTextTheme.smallSizeText
                                              .copyWith(color: AppColor.red),
                                        ),
                                      )
                                  ],
                                ),
                            ])),
                  );
                },
                error: (_error) => Container(
                      alignment: Alignment.center,
                      child: Text(_error.message,
                          style: AppTextTheme.mediumTextBlack),
                    ));
          }),
        ));
  }
}
