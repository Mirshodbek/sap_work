import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:formz/formz.dart';
import 'package:sap_work/screens/company/screens/profile/widgets/local_vacancies.dart';
import 'package:sap_work/screens/company/screens/profile/widgets/remote_vacancies.dart';
import 'package:sap_work/screens/company/screens/profile/widgets/vacancy.dart';
import 'widget.dart';

class VacanciesOrVacancyWidget extends StatelessWidget {
  const VacanciesOrVacancyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileBtnCubit>(
        create: (context) => ProfileBtnCubit(),
        child: BlocProvider<VariableVacancyCubit>(
          create: (context) => VariableVacancyCubit(),
          child: BlocBuilder<ProfileBtnCubit, ProfileBtnState>(
              builder: (context, state) {
            return state.map(onClick: (_click) {
              return Column(children: [
                if (!_click.isSelectVacancies)
                  BlocBuilder<CoreProfileBloc, CoreProfileState>(
                      builder: (context, state) {
                    return state.map(
                        initial: (_) => const SizedBox.shrink(),
                        loading: (_) => Column(),
                        attributes: (_state) {
                          return Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                TextButton(
                                    onPressed: () => Future.sync(() => context
                                        .read<ProfileBtnCubit>()
                                        .selectVacancies()),
                                    child: Text(_state.localVacancy.name,
                                        style:
                                            AppTextTheme.smallTextMediumBlack)),
                                const Divider(
                                    color: Color(0xFF000000), thickness: 1.2),
                                VacancyWidget(attributes: _state),
                              ]);
                        },
                        error: (_error) =>
                            Container(child: Text(_error.message)));
                  }),
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
                            if (_state.status ==
                                FormzStatus.submissionFailure) {
                              SmallWidgets.scaffoldMessage(
                                  context: context,
                                  message: "Нет доступ к интернету");
                            }
                          });
                    }, builder: (context, state) {
                      return state.map(
                          empty: (_) => const SizedBox.shrink(),
                          loading: (_) => LoadingListVacanciesWidget(),
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
          }),
        ));
  }
}
