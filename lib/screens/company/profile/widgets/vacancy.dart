import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sap_work/bloc/company/feedbacks/feedbacks_vacancy_bloc.dart';
import 'package:sap_work/screens/company/profile/widgets/create_vacancy.dart';
import 'package:sap_work/screens/company/profile/widgets/vacancy_body.dart';
import 'package:sap_work/screens/widgets/loading.dart';

import 'widget.dart';
import 'package:progress_indicators/progress_indicators.dart';

class VacancyWidget extends StatelessWidget {
  final AttributesCoreProfileCompanyState attributes;

  static Widget create() {
    return BlocBuilder<CoreProfileCompanyBloc, CoreProfileCompanyState>(
        builder: (context, state) {
      return state.map(
          empty: (_) => const SizedBox.shrink(),
          loading: (_) => ShimmerWidget.rectangular(height: 18, width: 100),
          attributes: (_state) {
            return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextButton(
                      onPressed: () => context
                          .read<ProfileCompanyBtnCubit>()
                          .selectVacancies(),
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
            if (_state.status == VACANCY_COMPANY_BLOC_GET_VACANCY_FAILURE ||
                _state.status ==
                    VACANCY_COMPANY_BLOC_ACTIVE_OR_DEACTIVATE_FAILURE ||
                _state.status == VACANCY_COMPANY_BLOC_CHANGE_VACANCY_FAILURE) {
              SmallWidgets.scaffoldMessage(
                  context: context, message: "Нет доступ к интернету");
            }
          },
          noVacancy: (_state) {
            if (_state.status == VACANCY_COMPANY_BLOC_POST_VACANCY_REQUIRED) {
              SmallWidgets.scaffoldMessage(
                  context: context, message: "Заполняте все строки");
            }
            if (_state.status == VACANCY_COMPANY_BLOC_POST_VACANCY_PROGRESS) {
              SmallWidgets.showDialogFunction(
                  context: context, title: "Опубликовывается вакансии...");
            }
            if (_state.status == VACANCY_COMPANY_BLOC_POST_VACANCY_SUCCEED) {
              _function(context);
            }
            if (_state.status == VACANCY_COMPANY_BLOC_POST_VACANCY_FAILURE) {
              SmallWidgets.scaffoldMessage(
                  context: context, message: "Нет доступ к интернету");
            }
          });
    }, builder: (context, state) {
      return state.map(
          empty: (_) => const SizedBox.shrink(),
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
                      titleVisible: _state.status ==
                              VACANCY_COMPANY_BLOC_ACTIVE_OR_DEACTIVATE_PROGRESS
                          ? JumpingText("Выполняется...",
                              style: AppTextTheme.smallTextMediumBlack)
                          : Text(
                              _state.vacancy.active == 1
                                  ? "Скрыть вакансию"
                                  : "Раскрывать вакансию",
                              style: AppTextTheme.smallTextMediumBlack)),
                  VacancyBodyWidget(
                      spheres: attributes.spheres,
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
                    spheres: attributes.spheres,
                    categories: attributes.categories,
                    vacancyName: attributes.localVacancy.name),
            ]);
          });
    });
  }

  void _function(BuildContext context) {
    context
        .read<VacancyCompanyBloc>()
        .add(const VacancyCompanyEvent.getVacancy());
    context
        .read<VacanciesCompanyBloc>()
        .add(const VacanciesCompanyEvent.getVacancies());
    context.read<FeedbacksVacancyBloc>().add(const FeedbacksVacancyEvent.getFeedbacks());
    context.read<VacanciesCompanyBloc>().add(
        VacanciesCompanyEvent.addOrDeleteLocalVacancy(
            nameVacancy: attributes.localVacancy.name, delete: true));
    Navigator.of(context).pop();
  }
}
