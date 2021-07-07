import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:formz/formz.dart';
import 'package:sap_work/screens/company/profile/widgets/local_vacancies.dart';
import 'package:sap_work/screens/company/profile/widgets/remote_vacancies.dart';
import 'package:sap_work/screens/company/profile/widgets/vacancy.dart';
import 'package:sap_work/screens/company/widgets/loading.dart';
import 'widget.dart';

class VacanciesOrVacancyWidget extends StatelessWidget {
  const VacanciesOrVacancyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBtnCubit, ProfileBtnState>(
        builder: (context, state) {
      return state.map(onClick: (_click) {
        return Column(children: [
          if (!_click.isSelectVacancies) VacancyWidget.create(),
          if (_click.isSelectVacancies)
            Column(children: [
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Row(children: [
                    Expanded(
                        child: Text(
                            !_click.isEditNames
                                ? "Выбор вакансии"
                                : "Изменить имя вакансии",
                            style: AppTextTheme.mediumTextBlack)),
                    IconButton(
                        onPressed: () =>
                            context.read<ProfileBtnCubit>().editNames(),
                        icon: SvgPicture.asset(!_click.isEditNames
                            ? AppIcons.edit
                            : AppIcons.clear)),
                  ])),
              const Divider(color: Color(0xFF000000), thickness: 1.2),
              BlocConsumer<VacanciesCompanyBloc, VacanciesCompanyState>(
                  listener: (context, state) {
                state.maybeMap(
                    orElse: () => state,
                    loaded: (_state) {
                      if (_state.status == FormzStatus.submissionFailure) {
                        SmallWidgets.scaffoldMessage(
                            context: context,
                            message: "Нет доступ к интернету");
                      }
                    });
              }, builder: (context, state) {
                return state.map(
                    empty: (_) => const SizedBox.shrink(),
                    loading: (_) => LoadingVacanciesWidget(),
                    loaded: (_loaded) {
                      return Column(children: [
                        RemotedVacanciesWidget(vacanciesState: _loaded),
                        LocalVacanciesWidget(vacanciesState: _loaded),
                      ]);
                    },
                    error: (_error) => Container(
                        height: 30,
                        child: Text(_error.message,
                            style: AppTextTheme.smallTextMediumBlack)));
              }),
            ]),
        ]);
      });
    });
  }
}
