import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sap_work/bloc/company/core_profile/core_profile_company_bloc.dart';
import 'package:sap_work/bloc/company/feedbacks/feedbacks_vacancy_bloc.dart';
import 'package:sap_work/bloc/company/vacancies/vacancies_company_bloc.dart';
import 'package:sap_work/bloc/company/vacancy/vacancy_company_bloc.dart';
import 'package:sap_work/resources/constants.dart';
import 'package:sap_work/resources/theme/color_theme.dart';
import 'package:sap_work/resources/theme/text_theme.dart';
import 'package:sap_work/screens/widgets/loading.dart';

class SelectVacancyScreen extends StatelessWidget {
  static const String id = 'select_vacancy';

  const SelectVacancyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;
    return MultiBlocProvider(
      providers: [
        BlocProvider<FeedbacksVacancyBloc>.value(
            value: arguments[FEEDBACKS_VACANCY_BLOC]),
        BlocProvider<VacancyCompanyBloc>.value(
            value: arguments[VACANCY_COMPANY_BLOC]),
        BlocProvider<CoreProfileCompanyBloc>.value(
            value: arguments[CORE_PROFILE_COMPANY_BLOC]),
        BlocProvider<VacanciesCompanyBloc>.value(
            value: arguments[VACANCIES_COMPANY_BLOC]),
      ],
      child: BlocBuilder<VacanciesCompanyBloc, VacanciesCompanyState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: AppColor.white,
              leading: CloseButton(
                color: AppColor.black,
              ),
              elevation: 0,
            ),
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column( crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Выбор резюме", style: AppTextTheme.mediumTextBlack),
                    const SizedBox(height: 20),
                    Column(
                        children: state.map(
                            empty: (_) => const <Widget>[],
                            loading: (_) => List.generate(
                                5, (index) => LoadingSelectResume()),
                            loaded: (_state) {
                              return List.generate(_state.vacancies.length,
                                  (index) {
                                final item = _state.vacancies[index];
                                return BlocBuilder<CoreProfileCompanyBloc,
                                        CoreProfileCompanyState>(
                                    builder: (context, state) {
                                  return state.maybeMap(
                                      orElse: () => const SizedBox.shrink(),
                                      attributes: (_attributes) {
                                        return ListTile(
                                            onTap: () => _onTap(
                                                context, item.name, item.id),
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    vertical: 15),
                                            selectedTileColor: AppColor.red,
                                            selected: item.id ==
                                                _attributes.vacancyId,
                                            title: Text(item.name,
                                                textAlign: TextAlign.center,
                                                style: AppTextTheme
                                                    .smallTextMediumBlack
                                                    .copyWith(
                                                        color: item.id ==
                                                                _attributes
                                                                    .vacancyId
                                                            ? AppColor.white
                                                            : AppColor.black)));
                                      });
                                });
                              });
                            },
                            error: (_error) => <Widget>[
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text(_error.message,
                                        style: AppTextTheme.smallSizeText),
                                  )
                                ])),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Future<void> _onTap(BuildContext context, String name, int id) async {
    return Future.sync(() => context
            .read<CoreProfileCompanyBloc>()
            .add(CoreProfileCompanyEvent.onSelect(title: name, id: id)))
        .whenComplete(() {
      context
          .read<FeedbacksVacancyBloc>()
          .add(const FeedbacksVacancyEvent.getFeedbacks());
      context
          .read<VacancyCompanyBloc>()
          .add(const VacancyCompanyEvent.getVacancy());
      Navigator.of(context).pop();
    });
  }
}
