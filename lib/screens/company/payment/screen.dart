import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:formz/formz.dart';
import 'package:sap_work/bloc/company/core_feedbacks/core_feedbacks_bloc.dart';
import 'package:sap_work/bloc/company/feedbacks/feedbacks_vacancy_bloc.dart';
import 'package:sap_work/bloc/company/feedbacks_button/feedbacks_btn_cubit.dart';
import 'package:sap_work/bloc/company/profile/profile_company.dart';
import 'package:sap_work/resources/constants.dart';
import 'package:sap_work/resources/small_widgets.dart';
import 'package:sap_work/screens/authorization/authorization.dart';
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
      child: BlocListener<CoreFeedbacksBloc, CoreFeedbacksState>(
        listener: (context, state) {
          state.maybeMap(
              orElse: () => state,
              statusSubscribe: (_state) {
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
        child: Scaffold(
          appBar: AppBar(
              elevation: 0.0,
              backgroundColor: Colors.transparent,
              leading: BackWardWidget(() => Navigator.of(context).pop()),
              leadingWidth: MediaQuery.of(context).size.width),
          body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ProfileNameWidget(),
                        FeedbackCountWidget(),
                      ])),
              const Divider(
                  height: 40, thickness: 1.2, color: Color(0xFF000000)),
              Padding(
                padding: const EdgeInsets.all(18),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Тарифы", style: AppTextTheme.mediumTextBlack),
                      BlocBuilder<FeedbacksBtnCubit, FeedbacksBtnState>(
                          builder: (context, state) {
                        return state.maybeMap(
                            orElse: () => const SizedBox(),
                            sum: (_sum) {
                              return Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    TariffsWidget(title: _sum.title),
                                    const SizedBox(height: 30),
                                    Text("Оставить заявку",
                                        style: AppTextTheme.mediumTextBlack),
                                    const SizedBox(height: 20),
                                    Text(
                                        "После заявку тариф будет подключен автоматически. Все полученые отклики станут доступны сразу.",
                                        style:
                                            AppTextTheme.smallTextMediumBlack),
                                    const SizedBox(height: 30),
                                    Table(
                                        border: TableBorder(
                                            verticalInside: BorderSide()),
                                        columnWidths: {
                                          0: FlexColumnWidth(1),
                                          1: FlexColumnWidth(8),
                                          2: FlexColumnWidth(1)
                                        },
                                        children: [
                                          TableRow(
                                              decoration: BoxDecoration(
                                                  border: Border.all(),
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              children: [
                                                _button(
                                                    onPressed: () => context
                                                        .read<
                                                            FeedbacksBtnCubit>()
                                                        .minus(),
                                                    leftRight: false),
                                                Text(_sum.sum.toString(),
                                                    style: AppTextTheme
                                                        .smallTextMediumBlack),
                                                _button(
                                                    onPressed: () => context
                                                        .read<
                                                            FeedbacksBtnCubit>()
                                                        .plus(),
                                                    leftRight: true),
                                              ]),
                                        ]),
                                    const SizedBox(height: 20),
                                    Text("Итого",
                                        style:
                                            AppTextTheme.smallTextMediumBlack),
                                    const SizedBox(height: 10),
                                    Text(_sum.total.toString(),
                                        style: AppTextTheme.splashFirstText
                                            .copyWith(color: Colors.black)),
                                    const SizedBox(height: 30),
                                    RedButtonWidget(
                                        "Перейти к оплате",
                                        () => context
                                            .read<CoreFeedbacksBloc>()
                                            .add(CoreFeedbacksEvent.payStatus(
                                                sum: _sum.sum *
                                                    days(_sum.title))),
                                        true),
                                  ]);
                            });
                      }),
                    ]),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  int days(String title) {
    if (title == Lists.tariffs[0].title) {
      return 4;
    } else if (title == Lists.tariffs[1].title) {
      return 8;
    }
    return 0;
  }

  TextButton _button(
          {required VoidCallback onPressed, required bool leftRight}) =>
      TextButton(
          onPressed: onPressed,
          child: SvgPicture.asset(
              leftRight ? AppIcons.plus_black : AppIcons.minus));
}
