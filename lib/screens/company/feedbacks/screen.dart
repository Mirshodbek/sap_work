import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sap_work/bloc/company/core_feedbacks/core_feedbacks_bloc.dart';
import 'package:sap_work/bloc/company/feedbacks/feedbacks_vacancy_bloc.dart';
import 'package:sap_work/bloc/company/feedbacks_button/feedbacks_btn_cubit.dart';
import 'package:sap_work/bloc/company/profile/profile_company_bloc.dart';
import 'package:sap_work/bloc/navigation/navigation_cubit.dart';
import 'package:sap_work/resources/small_widgets.dart';
import 'package:sap_work/screens/authorization/authorization.dart';
import 'package:sap_work/screens/company/chat/screen.dart';
import 'package:sap_work/screens/company/feedbacks/widgets/feedbacks.dart';
import 'package:sap_work/screens/company/feedbacks/widgets/subscribe.dart';
import 'package:sap_work/screens/company/invite/screen.dart';
import 'package:sap_work/screens/company/payment/screen.dart';
import 'package:sap_work/screens/company/resume/screen.dart';
import 'package:sap_work/screens/company/widgets/loading.dart';
import 'package:sap_work/screens/widgets/bottom_nav_bar.dart';
import 'package:sap_work/resources/theme/color_theme.dart';

class FeedbacksScreenCompany extends StatelessWidget {
  const FeedbacksScreenCompany({Key? key}) : super(key: key);

  static Widget create() {
    return MultiBlocProvider(providers: [
      BlocProvider<FeedbacksBtnCubit>(create: (_) => FeedbacksBtnCubit()),
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
        body: BlocListener<FeedbacksBtnCubit, FeedbacksBtnState>(
          listener: (context, state) {
            if (state is PaymentFeedbacksBtnState) {
              Navigator.pushNamed(context, PaymentScreen.id, arguments: {
                PROFILE_COMPANY_BLOC: context.read<ProfileCompanyBloc>(),
                CORE_FEEDBACKS_BLOC: context.read<CoreFeedbacksBloc>(),
                FEEDBACKS_VACANCY_BLOC: context.read<FeedbacksVacancyBloc>(),
                FEEDBACKS_BTN_CUBIT: context.read<FeedbacksBtnCubit>()
              });
            }
            if (state is ResumeInviteFeedbacksBtnState) {
              if (state.isInvite) {
                Navigator.pushNamed(context, InviteScreen.id, arguments: {
                  FEEDBACKS_VACANCY_BLOC: context.read<FeedbacksVacancyBloc>(),
                  FEEDBACKS_BTN_CUBIT: context.read<FeedbacksBtnCubit>()
                });
              } else {
                Navigator.pushNamed(context, ResumeScreenCompany.id, arguments: {
                  CORE_FEEDBACKS_BLOC: context.read<CoreFeedbacksBloc>(),
                  FEEDBACKS_BTN_CUBIT: context.read<FeedbacksBtnCubit>()
                });
              }
            }
            if (state is ChatFeedbacksBtnState) {
              Navigator.pushNamed(context, ChatScreenCompany.id, arguments: {
                FEEDBACKS_BTN_CUBIT: context.read<FeedbacksBtnCubit>()
              });
            }
          },
          child: BlocBuilder<FeedbacksVacancyBloc, FeedbacksVacancyState>(
              builder: (context, state) {
            return state.map(
                noFeedbacks: (_) => Container(
                      alignment: Alignment.center,
                      child: Text("Вы не выбрали вакансии",
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
                            Text("Отклики на вакансию",
                                style: AppTextTheme.mediumTextBlack),
                            const SizedBox(height: 25),
                            SmallWidgets.textRich(_state.vacancyName),
                            const SizedBox(height: 30),
                            BlocBuilder<CoreFeedbacksBloc, CoreFeedbacksState>(
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
                                        Container(
                                          alignment: Alignment.center,
                                          child: Text("У вас еще нет отклики",
                                              style:
                                                  AppTextTheme.mediumTextBlack),
                                        ),
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
                      child: Text("Добавте вакансии",
                          style: AppTextTheme.mediumTextBlack),
                    ));
          }),
        ));
  }
}
