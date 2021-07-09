import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:sap_work/bloc/company/core_feedbacks/core_feedbacks_bloc.dart';
import 'package:sap_work/bloc/company/feedbacks/feedbacks_vacancy_bloc.dart';
import 'package:sap_work/bloc/company/feedbacks_button/feedbacks_btn_cubit.dart';
import 'package:sap_work/bloc/company/profile/profile_company_bloc.dart';
import 'package:sap_work/resources/constants.dart';
import 'package:sap_work/resources/small_widgets.dart';
import 'package:sap_work/screens/authorization/authorization.dart';
import 'package:sap_work/screens/company/payment/widgets/request.dart';
import 'package:sap_work/screens/company/payment/widgets/tariff.dart';
import 'package:sap_work/screens/company/widgets/feedback.dart';
import 'package:sap_work/screens/company/widgets/profile.dart';
import 'package:sap_work/screens/widgets/backward.dart';

class PaymentScreen extends StatelessWidget {
  static const String id = 'payment';

  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;

    return MultiBlocProvider(
      providers: [
        BlocProvider<ProfileCompanyBloc>.value(
            value: arguments[PROFILE_COMPANY_BLOC]),
        BlocProvider<CoreFeedbacksBloc>.value(
            value: arguments[CORE_FEEDBACKS_BLOC]),
        BlocProvider<FeedbacksVacancyBloc>.value(
            value: arguments[FEEDBACKS_VACANCY_BLOC]),
        BlocProvider<FeedbacksBtnCubit>.value(
            value: arguments[FEEDBACKS_BTN_CUBIT]),
      ],
      child: BlocConsumer<CoreFeedbacksBloc, CoreFeedbacksState>(
        listener: (context, state) {
          state.maybeMap(
              orElse: () => state,
              loaded: (_state) {
                if (_state.status.isSubmissionInProgress) {
                  SmallWidgets.showDialogFunction(
                      context: context, title: "Выполняется...");
                }
                if (_state.status.isSubmissionSuccess) {
                  Navigator.of(context).pop();
                }
                if (_state.status.isSubmissionFailure) {
                  Navigator.of(context).pop();
                  SmallWidgets.scaffoldMessage(
                      context: context, message: "Нет доступ к интернету");
                }
              });
        },
        builder: (context, state) {
          return state.maybeMap(
              orElse: () => const SizedBox.shrink(),
              loaded: (_status) {
                return Scaffold(
                  appBar: AppBar(
                      elevation: 0.0,
                      backgroundColor: Colors.transparent,
                      leading:
                          BackWardWidget(() => Navigator.of(context).pop()),
                      leadingWidth: MediaQuery.of(context).size.width),
                  body: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: const EdgeInsets.all(18),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ProfileCompanyNameWidget(),
                                    FeedbacksVacancyCountWidget(),
                                  ])),
                          const Divider(
                              height: 40,
                              thickness: 1.2,
                              color: Color(0xFF000000)),
                          Padding(
                            padding: const EdgeInsets.all(18),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Тарифы",
                                      style: AppTextTheme.mediumTextBlack),
                                  BlocBuilder<FeedbacksBtnCubit,
                                          FeedbacksBtnState>(
                                      builder: (context, state) {
                                    return state.maybeMap(
                                        orElse: () => const SizedBox(),
                                        sum: (_sum) {
                                          return Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.stretch,
                                              children: [
                                                TariffsWidget(
                                                    title: _sum.title,
                                                    price: _status
                                                        .subscribe.price),
                                                const SizedBox(height: 30),
                                                RequestWidget(sum: _sum),
                                                const SizedBox(height: 30),
                                                _redButton(context, _sum.sum,
                                                    _sum.title),
                                              ]);
                                        });
                                  }),
                                ]),
                          ),
                        ]),
                  ),
                );
              });
        },
      ),
    );
  }

  Widget _redButton(
          BuildContext context, int sum, String title) =>
      RedButtonWidget(
          "Перейти к оплате",
          () => context
              .read<CoreFeedbacksBloc>()
              .add(CoreFeedbacksEvent.payStatus(sum: sum * Utils.days(title))),
          true);
}
