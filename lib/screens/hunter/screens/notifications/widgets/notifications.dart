import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import '../../../hunter.dart';

class NotificationsWidget extends StatelessWidget {
  final List<FeedbackResume> feedbacks;

  const NotificationsWidget(this.feedbacks, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
        Column(
          children: feedbacks.map((vacancies) {
            return Column(
              children: [
                InkWell(
                  key: ObjectKey(vacancies),
                  onTap: () => _onTapVacancy(context, vacancies.vacancy),
                  child: VacancyListItemWidget(
                    false,
                    true,
                    vacancies.vacancy,
                  ),
                ),
                TextButton(
                  onPressed: () => context.read<NotificationsBloc>().add(
                      NotificationsEvent.message(id: vacancies.vacancy.company.id)),
                  child: SvgPicture.asset(AppIcons.chat),
                ),
              ],
            );
          }).toList(),
        ),
      ],
    );
  }

  Future<Object?> _onTapVacancy(BuildContext context, Vacancy vacancy) =>
      Navigator?.pushNamed<String>(
        context,
        VacancyScreen.id,
        arguments: {"id": vacancy.id},
      );
}
