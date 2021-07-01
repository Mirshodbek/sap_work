import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../hunter.dart';

class VacancyScreen extends StatelessWidget {
  static const String id = '/announce';

  const VacancyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;

    return BlocProvider<VacanciesBloc>.value(
      value: arguments["vacancies_bloc"],
      child: Scaffold(
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
        body: BlocConsumer<VacanciesBloc, VacanciesState>(
          listener: (context, state) {
            if (state is SuccessFeedbackVacanciesState) {
              _showDialog(context);
            }
          },
          builder: (context, state) {
            return state.maybeMap(
              orElse: () => Container(),
              loadedState: (_state) {
                final vacancies = _state.vacancies
                    .singleWhere((it) => it.vacancy.id == arguments["id"]);
                return SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AnnounceCategories(
                          vacancies,
                          () => context.read<VacanciesBloc>().add(
                              VacanciesEvent.toggle(id: vacancies.vacancy.id))),
                      Divider(
                        thickness: 1.0,
                        color: AppColor.black,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 18.0, vertical: 30.0),
                        child: Text(
                          vacancies.vacancy.name,
                          style: AppTextTheme.smallTextMediumBlack,
                        ),
                      ),
                      RespondWidget(_state, vacancies),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => SimpleDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        contentPadding: EdgeInsets.zero,
        title: Text(
          "Ваше резюме отправлено",
          textAlign: TextAlign.center,
          style: AppTextTheme.mediumTextBlack,
        ),
        children: [
          const SizedBox(
            height: 10.0,
          ),
          Text(
            "Вы можете отслеживать статус отклика и приглашений на собеседование",
            style: AppTextTheme.smallTextMediumBlack,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 40.0,
          ),
          SvgPicture.asset(
            AppIcons.success,
            alignment: Alignment.centerRight,
          ),
        ],
      ),
    ).whenComplete(() {
      context.read<VacanciesBloc>().add(const VacanciesEvent.refresh());
    });
  }
}
