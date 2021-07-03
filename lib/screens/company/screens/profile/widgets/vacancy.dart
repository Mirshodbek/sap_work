import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:sap_work/screens/company/screens/profile/widgets/create_vacancy.dart';

import 'widget.dart';
import 'package:progress_indicators/progress_indicators.dart';

class VacancyWidget extends StatelessWidget {
  final AttributesCoreProfileState attributes;

  const VacancyWidget({Key? key, required this.attributes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<VacancyCompanyBloc, VacancyCompanyState>(
      listener: (context, state) {
        state.maybeMap(
            orElse: () => state,
            loaded: (_state) {
              if (_state.status == FormzStatus.submissionFailure) {
                SmallWidgets.scaffoldMessage(
                    context: context,
                    message: "Проверяйте соединение интернет");
              }
            });
      },
      builder: (context, state) {
        return state.map(
            empty: (_) => const SizedBox.shrink(),
            loading: (_) =>
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  for (int i = 0; i < 4; i++)
                    Column(children: [
                      Padding(
                          padding: const EdgeInsets.all(8),
                          child: ShimmerWidget.rectangular(
                              height: 18,
                              width: MediaQuery.of(context).size.width / 2)),
                      for (int i = 0; i < 4; i++)
                        Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: ShimmerWidget.rectangular(height: 18)),
                    ]),
                ]),
            loaded: (_state) {
              return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ResumeButtonsWidget(
                        pdf: () {},
                        share: () {},
                        visible: () => context.read<VacancyCompanyBloc>().add(
                            VacancyCompanyEvent.activateOrDeactivate(
                                id: _state.vacancy.id,
                                active: _state.vacancy.active)),
                        active: _state.vacancy.active,
                        titlePdf: "Вакансия в PDF",
                        titleVisible:
                            _state.status == FormzStatus.submissionInProgress
                                ? JumpingText("Выполняется...",
                                    style: AppTextTheme.smallTextMediumBlack)
                                : Text(
                                    _state.vacancy.active == 1
                                        ? "Скрыть вакансию"
                                        : "Раскрывать вакансию",
                                    style: AppTextTheme.smallTextMediumBlack)),
                    Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Описание вакансии",
                                  style: AppTextTheme.mediumTextBlack),
                              const SizedBox(height: 20),
                              Text(_state.vacancy.body,
                                  style: AppTextTheme.smallTextMediumBlack),
                              const SizedBox(height: 20),
                              Text("Зароботная плата",
                                  style: AppTextTheme.smallTextMediumBlack),
                              Text("По договоренности",
                                  style: AppTextTheme.smallTextMediumBlack
                                      .copyWith(color: AppColor.grey)),
                              const SizedBox(height: 20),
                              Row(children: [
                                Flexible(
                                    child: Text(
                                        "от ${_state.vacancy.minsalary}₽",
                                        style:
                                            AppTextTheme.smallTextMediumBlack)),
                                const SizedBox(width: 10),
                                Flexible(
                                    child: Text(
                                        "до ${_state.vacancy.maxsalary}₽",
                                        style:
                                            AppTextTheme.smallTextMediumBlack)),
                              ]),
                              const SizedBox(height: 30),
                              Text("Занятость",
                                  style: AppTextTheme.smallTextMediumBlack),
                              const SizedBox(height: 10),
                              Text(_state.vacancy.schedule,
                                  style: AppTextTheme.smallTextMediumBlack
                                      .copyWith(color: AppColor.grey)),
                              const SizedBox(height: 30),
                              Text("График работы",
                                  style: AppTextTheme.smallTextMediumBlack),
                              const SizedBox(height: 10),
                              Text(_state.vacancy.type,
                                  style: AppTextTheme.smallTextMediumBlack
                                      .copyWith(color: AppColor.grey)),
                              const SizedBox(height: 30),
                              Text("Опыт",
                                  style: AppTextTheme.smallTextMediumBlack),
                              const SizedBox(height: 10),
                              Text(_state.vacancy.stage,
                                  style: AppTextTheme.smallTextMediumBlack
                                      .copyWith(color: AppColor.grey)),
                              const SizedBox(height: 30),
                              Text("Локация",
                                  style: AppTextTheme.smallTextMediumBlack),
                              const SizedBox(height: 10),
                              Text(_state.vacancy.city,
                                  style: AppTextTheme.smallTextMediumBlack
                                      .copyWith(color: AppColor.grey)),
                              const SizedBox(height: 30),
                              Text("Навыки",
                                  style: AppTextTheme.smallTextMediumBlack),
                              const SizedBox(height: 10),
                              Text(_state.vacancy.abilities,
                                  style: AppTextTheme.smallTextMediumBlack
                                      .copyWith(color: AppColor.grey)),
                            ])),
                  ]);
            },
            noVacancy: (_) {
              return Column(
                children: [
                  if (attributes.localVacancy.name == EMPTY_TITLE_VACANCY)
                    Container(
                      alignment: Alignment.center,
                      child: Text("Введите название вакансии",
                          style: AppTextTheme.mediumTextBlack),
                    )
                  else
                    CreateVacancyWidget(
                        categories: attributes.categories,
                        vacancyName: attributes.localVacancy.name),
                ],
              );
            });
      },
    );
  }
}
