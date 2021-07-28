import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sap_work/bloc/company/core_feedbacks/core_feedbacks_company_bloc.dart';
import 'package:sap_work/bloc/company/core_profile/core_profile_company_bloc.dart';
import 'package:sap_work/bloc/company/feedbacks/feedbacks_vacancy_bloc.dart';
import 'package:sap_work/bloc/company/feedbacks_button/feedbacks_company_btn_cubit.dart';
import 'package:sap_work/bloc/company/profile/profile_company_bloc.dart';
import 'package:sap_work/bloc/company/resumes/resumes_company_bloc.dart';
import 'package:sap_work/bloc/company/vacancies/vacancies_company_bloc.dart';
import 'package:sap_work/bloc/company/vacancy/vacancy_company_bloc.dart';
import 'package:sap_work/bloc/navigation/navigation_cubit.dart';
import 'package:sap_work/resources/small_widgets.dart';
import 'package:sap_work/screens/authorization/authorization.dart';
import 'package:sap_work/screens/company/chat/screen.dart';
import 'package:sap_work/screens/company/feedbacks/widgets/feedbacks.dart';
import 'package:sap_work/screens/company/feedbacks/widgets/subscribe.dart';
import 'package:sap_work/screens/company/invite/screen.dart';
import 'package:sap_work/screens/company/payment/screen.dart';
import 'package:sap_work/screens/company/resume/screen.dart';
import 'package:sap_work/screens/company/select_vacancy/screen.dart';
import 'package:sap_work/screens/widgets/loading.dart';
import 'package:sap_work/screens/widgets/bottom_nav_bar.dart';
import 'package:sap_work/resources/theme/color_theme.dart';
import 'package:sap_work/screens/widgets/shimmer.dart';

class FeedbacksScreenCompany extends StatelessWidget {
  const FeedbacksScreenCompany({Key? key}) : super(key: key);

  static Widget create() {
    return MultiBlocProvider(providers: [
      BlocProvider<FeedbacksCompanyBtnCubit>(
          create: (_) => FeedbacksCompanyBtnCubit()),
    ], child: FeedbacksScreenCompany());
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
        body: BlocListener<FeedbacksCompanyBtnCubit, FeedbacksCompanyBtnState>(
          listener: (context, state) {
            if (state is SelectVacancyFeedbacksCompanyBtnState) {
              Navigator.pushNamed(context, SelectVacancyScreen.id, arguments: {
                FEEDBACKS_VACANCY_BLOC: context.read<FeedbacksVacancyBloc>(),
                VACANCY_COMPANY_BLOC: context.read<VacancyCompanyBloc>(),
                VACANCIES_COMPANY_BLOC: context.read<VacanciesCompanyBloc>(),
                CORE_PROFILE_COMPANY_BLOC:
                    context.read<CoreProfileCompanyBloc>()
              });
            }
            if (state is PaymentVacancyFeedbacksCompanyBtnState) {
              Navigator.pushNamed(context, PaymentScreen.id, arguments: {
                PROFILE_COMPANY_BLOC: context.read<ProfileCompanyBloc>(),
                CORE_FEEDBACKS_BLOC: context.read<CoreFeedbacksCompanyBloc>(),
                FEEDBACKS_VACANCY_BLOC: context.read<FeedbacksVacancyBloc>(),
                RESUMES_COMPANY_BLOC: context.read<ResumesCompanyBloc>(),
              });
            }
            if (state is InviteFeedbacksCompanyBtnState) {
              Navigator.pushNamed(context, InviteScreen.id, arguments: {
                FEEDBACKS_VACANCY_BLOC: context.read<FeedbacksVacancyBloc>(),
                RESUME: state.resume,
              });
            }
            if(state is ResumeFeedbacksCompanyBtnState){
                Navigator.pushNamed(context, ResumeScreenCompany.id,
                    arguments: {
                      FEEDBACKS_VACANCY_BLOC: context.read<FeedbacksVacancyBloc>(),
                      CORE_FEEDBACKS_BLOC:
                          context.read<CoreFeedbacksCompanyBloc>(),
                      PROFILE_COMPANY_BLOC: context.read<ProfileCompanyBloc>(),
                      RESUME: state.resume,
                    });
            }
            if (state is ChatFeedbacksCompanyBtnState) {
              Navigator.pushNamed(context, ChatScreenCompany.id, arguments: {
                FEEDBACKS_COMPANY_BTN_CUBIT:
                    context.read<FeedbacksCompanyBtnCubit>()
              });
            }
          },
          child: BlocBuilder<FeedbacksVacancyBloc, FeedbacksVacancyState>(
              builder: (context, state) {
            return state.map(
                noVacancy: (_) => Container(
                      alignment: Alignment.center,
                      child: Text("Добавте ваканси",
                          style: AppTextTheme.mediumTextBlack),
                    ),
                noFeedbacks: (_) => Container(
                      alignment: Alignment.center,
                      child: Text("Скоро тут появятся отклики",
                          style: AppTextTheme.mediumTextBlack),
                    ),
                empty: (_) => const SizedBox.shrink(),
                loading: (_) => LoadingWidget(),
                loaded: (_state) {
                  return SingleChildScrollView(
                      padding: const EdgeInsets.all(18),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text("Отклики на резюме",
                                style: AppTextTheme.mediumTextBlack),
                            const SizedBox(height: 25),
                            BlocBuilder<VacancyCompanyBloc,
                                VacancyCompanyState>(
                              builder: (context, state) {
                                return state.map(
                                    empty: (_) => const SizedBox.shrink(),
                                    loading: (_) =>
                                        const ShimmerWidget.rectangular(
                                            height: 18, width: 100),
                                    loaded: (_loaded) {
                                      return TextButton(
                                        onPressed: () => context
                                            .read<FeedbacksCompanyBtnCubit>()
                                            .selectVacancy(),
                                        child: SmallWidgets.textRichArrow(
                                            _loaded.vacancy.name),
                                      );
                                    },
                                    noVacancy: (_noVacancy) {
                                      return SmallWidgets.textRichArrow(
                                          EMPTY_TITLE_VACANCY);
                                    });
                              },
                            ),
                            const SizedBox(height: 30),
                            BlocBuilder<CoreFeedbacksCompanyBloc,
                                    CoreFeedbacksCompanyState>(
                                builder: (context, state) {
                              return state.map(
                                  error: (_error) =>
                                      Container(child: Text(_error.error)),
                                  empty: (_) => const SizedBox.shrink(),
                                  loading: (_) => Column(),
                                  loaded: (_status) {
                                    return Column(children: [
                                      if (Utils.isValid(
                                          _status.subscribe.subscribe))
                                        SubscribeWidget(
                                            subscribe:
                                                _status.subscribe.subscribe)
                                      else
                                        NoSubscribeWidget(),
                                      if (_state.feedbacks.isEmpty)
                                        _noFeedback(),
                                      if (_state.feedbacks.isNotEmpty)
                                        FeedbacksWidget(
                                            feedbacks: _state.feedbacks,
                                            subscribe: !Utils.isValid(
                                                _status.subscribe.subscribe)),
                                    ]);
                                  });
                            }),
                          ]));
                },
                error: (_err) => Container(
                      alignment: Alignment.center,
                      child: Text(_err.message,
                          style: AppTextTheme.mediumTextBlack),
                    ));
          }),
        ));
  }

  Widget _noFeedback() => Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Text("У вас пока нет откликов",
                style: AppTextTheme.mediumTextBlack),
            const SizedBox(height: 40),
            Text.rich(
                TextSpan(text: "Перейдите на  ", children: [
                  TextSpan(
                      text: "главную страницу, ",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: AppColor.red)),
                  TextSpan(
                      text: "чтобы посмотреть резюме и пригласить соискателей")
                ]),
                style: AppTextTheme.smallTextMediumBlack),
          ]);
}
