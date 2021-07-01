import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sap_work/bloc/company/core/core_profile_bloc.dart';
import 'package:sap_work/bloc/company/profile_button/profile_btn_cubit.dart';
import 'package:sap_work/bloc/company/vacancies/vacancies_company_bloc.dart';
import 'package:sap_work/screens/company/screens/profile/widgets/vacancy.dart';
import 'package:sap_work/screens/hunter/hunter.dart';
import 'widget.dart';

class VacanciesOrVacancyWidget extends StatelessWidget {
  const VacanciesOrVacancyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileBtnCubit>(
      create: (context) => ProfileBtnCubit(),
      child: BlocBuilder<ProfileBtnCubit, ProfileBtnState>(
        builder: (context, state) {
          return state.map(onClick: (_click) {
            return Column(children: [
              if (!_click.isSelect)
                BlocBuilder<CoreProfileBloc, CoreProfileState>(
                  builder: (context, state) {
                    return state.map(
                        initial: (_) => const SizedBox.shrink(),
                        loading: (_) => Column(),
                        attributes: (_state) {
                          return Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextButton(
                                    onPressed: () => Future.sync(() => context
                                        .read<VacanciesCompanyBloc>()
                                        .add(const VacanciesCompanyEvent
                                        .getVacancies()))
                                        .whenComplete(() => context
                                        .read<ProfileBtnCubit>()
                                        .isSelect()),
                                    child: Text(_state.localVacancy.name,
                                        style: AppTextTheme.smallSizeText)),
                                const Divider(color: Color(0xFF000000)),
                                VacancyWidget(attributes: _state),
                              ]);
                        },
                        error: (_error) =>
                            Container(child: Text(_error.message)));
                  },
                ),
              if (_click.isSelect)
                Column(children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Row(children: [
                        Expanded(
                            child: Text(
                                !_click.isEdit
                                    ? "Выбор вакансии"
                                    : "Изменить имя вакансии",
                                style: AppTextTheme.mediumTextBlack)),
                        IconButton(
                            onPressed: () =>
                                context.read<ProfileBtnCubit>().isEdit(),
                            icon: SvgPicture.asset(!_click.isEdit
                                ? AppIcons.edit
                                : AppIcons.clear)),
                      ])),
                  const Divider(color: Color(0xFF000000)),
                  BlocBuilder<VacanciesCompanyBloc, VacanciesCompanyState>(
                      builder: (context, state) {
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
        },
      ),
    );
  }
}
