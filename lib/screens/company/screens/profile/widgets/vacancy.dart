import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sap_work/bloc/company/core/core_profile_bloc.dart';
import 'package:sap_work/bloc/company/vacancy/vacancy_company_bloc.dart';
import 'package:sap_work/repository/usercases.dart';
import 'package:sap_work/screens/hunter/hunter.dart';

import 'widget.dart';

class VacancyWidget extends StatelessWidget {
  final AttributesCoreProfileState attributes;

  const VacancyWidget({Key? key, required this.attributes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VacancyCompanyBloc, VacancyCompanyState>(
      builder: (context, state) {
        return state.map(
            empty: (_) => const SizedBox.shrink(),
            loading: (_) => Column(children: [
                  for (int i = 0; i < 4; i++)
                    Column(children: [
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ShimmerWidget.rectangular(
                              height: 18,
                              width: MediaQuery.of(context).size.width / 2)),
                      for (int i = 0; i < 4; i++)
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ShimmerWidget.rectangular(
                              height: 18,
                              width: Random.secure().nextInt(350).toDouble(),
                            )),
                    ]),
                ]),
            loaded: (_state) {
              return VacancyBodyWidget(vacancy: _state.vacancy);
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
