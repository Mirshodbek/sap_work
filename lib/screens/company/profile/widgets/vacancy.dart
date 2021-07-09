import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:sap_work/bloc/company/feedbacks/feedbacks_vacancy_bloc.dart';
import 'package:sap_work/screens/company/profile/widgets/create_vacancy.dart';
import 'package:sap_work/screens/company/profile/widgets/vacancy_body.dart';
import 'package:sap_work/screens/company/widgets/loading.dart';

import 'widget.dart';
import 'package:progress_indicators/progress_indicators.dart';

class VacancyWidget extends StatelessWidget {
  final AttributesCoreProfileState attributes;

  static Widget create() {
    return BlocBuilder<CoreProfileBloc, CoreProfileState>(
        builder: (context, state) {
      return state.map(
          empty: (_) => const SizedBox.shrink(),
          loading: (_) => ShimmerWidget.rectangular(height: 18, width: 100),
          attributes: (_state) {
            return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextButton(
                      onPressed: () =>
                          context.read<ProfileBtnCubit>().selectVacancies(),
                      child: Text(_state.localVacancy.name,
                          style: AppTextTheme.smallTextMediumBlack)),
                  const Divider(color: Color(0xFF000000), thickness: 1.2),
                  VacancyWidget(attributes: _state),
                ]);
          },
          error: (_error) => Container(child: Text(_error.message)));
    });
  }

  const VacancyWidget({Key? key, required this.attributes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<VacancyCompanyBloc, VacancyCompanyState>(
        listener: (_, state) {
      state.maybeMap(
          orElse: () => state,
          loaded: (_state) {
            if (_state.status.isSubmissionFailure) {
              SmallWidgets.scaffoldMessage(
                  context: context, message: "Нет доступ к интернету");
            }
          },
          noInternet: (_) {
            SmallWidgets.scaffoldMessage(
                context: context, message: "Нет доступ к интернету");
          });
    }, builder: (context, state) {
      return state.maybeMap(
          orElse: () => const SizedBox.shrink(),
          noInternet: (_) => Center(
              child: Text("Нет доступ к интернету...",
                  style: AppTextTheme.mediumTextBlack)),
          loading: (_) => LoadingWidget(),
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
                  child: Text("Добавьте первое вакансии",
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
