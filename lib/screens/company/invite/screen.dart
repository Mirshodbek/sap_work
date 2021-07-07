import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:sap_work/bloc/company/feedbacks/feedbacks_vacancy_bloc.dart';
import 'package:sap_work/bloc/company/feedbacks_button/feedbacks_btn_cubit.dart';
import 'package:sap_work/bloc/company/variable_feedback/variable_feedback_cubit.dart';
import 'package:sap_work/resources/constants.dart';
import 'package:sap_work/resources/small_widgets.dart';
import 'package:sap_work/resources/theme/text_theme.dart';
import 'package:sap_work/resources/validator.dart';
import 'package:sap_work/screens/widgets/backward.dart';
import 'package:sap_work/screens/widgets/buttons.dart';

class InviteScreen extends StatelessWidget {
  static const String id = 'invite';

  const InviteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;
    return MultiBlocProvider(
      providers: [
        BlocProvider<VariableFeedbackCubit>(
            create: (_) => VariableFeedbackCubit()),
        BlocProvider<FeedbacksVacancyBloc>.value(
            value: arguments[FEEDBACKS_VACANCY_BLOC]),
        BlocProvider<FeedbacksBtnCubit>.value(
            value: arguments[FEEDBACKS_BTN_CUBIT]),
      ],
      child: BlocListener<FeedbacksVacancyBloc, FeedbacksVacancyState>(
        listener: (context, state) {
          state.maybeMap(
              orElse: () => state,
              loaded: (_state) {
                if (_state.status.isInvalid) {
                  SmallWidgets.scaffoldMessage(
                      context: context, message: "Заполняте все строки");
                }
                if (_state.status.isSubmissionFailure) {
                  SmallWidgets.scaffoldMessage(
                      context: context, message: "Нет доступ к интернету");
                }
                if (_state.status.isSubmissionInProgress) {
                  SmallWidgets.showDialogFunction(
                      context: context, title: "Выполняется...");
                }
                if (_state.status.isSubmissionSuccess) {
                  Navigator.of(context).pop();
                  SmallWidgets.scaffoldMessage(
                      context: context, message: "Приглашение отправлено");
                }
              });
        },
        child: BlocBuilder<FeedbacksBtnCubit, FeedbacksBtnState>(
          builder: (context, state) {
            return state.maybeMap(
                orElse: () => const SizedBox.shrink(),
                resumeInvite: (_invite) {
                  return Scaffold(
                    appBar: AppBar(
                        elevation: 0.0,
                        backgroundColor: Colors.transparent,
                        leading:
                            BackWardWidget(() => Navigator.of(context).pop()),
                        leadingWidth: MediaQuery.of(context).size.width),
                    body: SingleChildScrollView(
                      padding: const EdgeInsets.all(18),
                      child: BlocBuilder<VariableFeedbackCubit,
                          VariableFeedbackState>(
                        builder: (context, _state) {
                          if (_state is ArgumentsVariableFeedbackState) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text("Пригласить соискателя",
                                    style: AppTextTheme.mediumTextBlack),
                                const SizedBox(height: 20),
                                TextField(
                                  onChanged: (value) => context
                                      .read<VariableFeedbackCubit>()
                                      .contactType(value),
                                  decoration: SmallWidgets.inputDecoration(
                                      "Ссылка Zoom"),
                                ),
                                const SizedBox(height: 20),
                                TextField(
                                  onChanged: (value) => context
                                      .read<VariableFeedbackCubit>()
                                      .contact(value),
                                  decoration: SmallWidgets.inputDecoration(
                                      "Логин Skype"),
                                ),
                                const SizedBox(height: 20),
                                TextField(
                                  onChanged: (value) => context
                                      .read<VariableFeedbackCubit>()
                                      .answer(value),
                                  decoration: SmallWidgets.inputDecoration(
                                      "Личная встреча"),
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  children: [
                                    Expanded(
                                        child: TextField(
                                      onChanged: (value) => context
                                          .read<VariableFeedbackCubit>()
                                          .date(value),
                                      keyboardType: TextInputType.datetime,
                                      inputFormatters: [Utils.date],
                                      decoration:
                                          SmallWidgets.inputDecoration("Дата"),
                                    )),
                                    const SizedBox(width: 10),
                                    Expanded(
                                        child: TextField(
                                      onChanged: (value) => context
                                          .read<VariableFeedbackCubit>()
                                          .time(value),
                                      keyboardType: TextInputType.datetime,
                                      inputFormatters: [Utils.time],
                                      decoration:
                                          SmallWidgets.inputDecoration("Время"),
                                    )),
                                  ],
                                ),
                                const SizedBox(height: 20),
                                RedButtonWidget(
                                    "Отправить приглашение",
                                    () => context
                                        .read<FeedbacksVacancyBloc>()
                                        .add(FeedbacksVacancyEvent.postInvite(
                                            date:
                                                _state.date + " " + _state.time,
                                            contact: _state.contact,
                                            contactType: _state.contactType,
                                            answer: _state.answer,
                                            resume: _invite.resume.id,
                                            vacancy:
                                                _invite.resume.vacancy_id)),
                                    true),
                                const SizedBox(height: 20),
                                TextButton(
                                    onPressed: () {},
                                    child: Text("Отменить приглашение",
                                        style:
                                            AppTextTheme.smallTextMediumBlack)),
                              ],
                            );
                          }
                          return const SizedBox.shrink();
                        },
                      ),
                    ),
                  );
                });
          },
        ),
      ),
    );
  }
}
