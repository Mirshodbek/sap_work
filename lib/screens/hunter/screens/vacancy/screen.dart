import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sap_work/bloc/hunter/vacancies/vacancies_bloc.dart';
import '../../hunter.dart';

class VacancyScreen extends StatelessWidget {
  static const String id = '/announce';

  const VacancyScreen({Key? key}) : super(key: key);

  static Widget create(VacanciesBloc _bloc) {
    return BlocProvider<VacanciesBloc>.value(
      value: _bloc,
      child: VacancyScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: BackWardWidget(
          () => Navigator.of(context).pop(),
        ),
        leadingWidth: MediaQuery.of(context).size.width,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(10.0),
          child: Divider(
            thickness: 1.0,
            color: AppColor.black,
          ),
        ),
      ),
      body: BlocBuilder<VacanciesBloc, VacanciesState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => CircularProgressIndicator(),
            loadedState: (_state) {
              final arguments =
                  ModalRoute.of(context)!.settings.arguments as Map;
              final vacancies = _state.vacancies
                  .where((it) => it.vacancy.id == arguments["id"])
                  .single;
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AnnounceCategories(
                        vacancies,
                        () => context.read<VacanciesBloc>().add(
                            VacanciesEvent.toggleVacancies(
                                id: vacancies.vacancy.id))),
                    Divider(
                      thickness: 1.0,
                      color: AppColor.black,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18.0, vertical: 30.0),
                      child: Text(
                        vacancies.vacancy.body,
                        style: AppTextTheme.smallTextMediumBlack,
                      ),
                    ),
                    RespondWidget(vacancies),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
