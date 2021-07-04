import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:sap_work/screens/company/screens/profile/widgets/create_vacancy.dart';
import 'package:sap_work/screens/company/screens/profile/widgets/vacancy_body.dart';

import 'widget.dart';
import 'package:progress_indicators/progress_indicators.dart';

class VacancyWidget extends StatelessWidget {
  final AttributesCoreProfileState attributes;

  const VacancyWidget({Key? key, required this.attributes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<VacancyCompanyBloc, VacancyCompanyState>(
        listener: (_, state) {
      if (state is NoInternetCompanyState) {
        SmallWidgets.scaffoldMessage(
            context: context, message: "Нет доступ к интернету");
      }
    }, builder: (context, state) {
      return state.maybeMap(
          orElse: () => const SizedBox.shrink(),
          loading: (_) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                for (int i = 0; i < 2; i++)
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ShimmerWidget.rectangular(
                            height: 18,
                            width: MediaQuery.of(context).size.width / 2),
                        for (int i = 0; i < 4; i++)
                          Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: ShimmerWidget.rectangular(height: 18)),
                      ]),
              ]),
            );
          },
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
                  VacancyBodyWidget(
                      vacancy: _state.vacancy,
                      categories: attributes.categories),
                ]);
          },
          noVacancy: (_) {
            return Column(children: [
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
            ]);
          });
    });
  }
}
