import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sap_work/bloc/hunter/notifications/notifications_bloc.dart';
import '../../hunter.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  static Widget create(BuildContext context) {
    return NotificationsScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar:
          BottomNavBarWidget(context.watch<NavigationCubit>().state),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Приглашения",
              style: AppTextTheme.mediumTextBlack,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Column(
              children: [
                BodyInvites(),
                // InvitesButton(),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              "Все отклики",
              style: AppTextTheme.mediumTextBlack,
            ),
            BlocBuilder<NotificationsBloc, NotificationsState>(
              builder: (context, state) {
                return state.map(
                  initial: (_) => Center(
                    child: CircularProgressIndicator(),
                  ),
                  notificationsState: (_state) {
                    return Column(
                      children: _state.feedbacks.map((vacancies) {
                        return InkWell(
                          key: ObjectKey(vacancies),
                          onTap: () =>
                              _onTapVacancy(context, vacancies.vacancy),
                          child: VacancyListItemWidget(
                            false,
                            true,
                            vacancies.vacancy,
                          ),
                        );
                      }).toList(),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<Object?> _onTapVacancy(BuildContext context, Vacancy vacancy) =>
      Navigator?.pushNamed<String>(
        context,
        VacancyScreen.id,
        arguments: {"id": vacancy.id},
      );
}
