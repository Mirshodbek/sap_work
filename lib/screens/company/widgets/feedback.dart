import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sap_work/bloc/company/feedbacks/feedbacks_vacancy_bloc.dart';
import 'package:sap_work/screens/widgets/shimmer.dart';
import 'package:sap_work/resources/theme/text_theme.dart';
import 'profile.dart';

class FeedbackCountCompanyWidget extends StatelessWidget {
  const FeedbackCountCompanyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeedbacksVacancyBloc, FeedbacksVacancyState>(
        builder: (context, state) {
      return state.map(
          empty: (_) => const SizedBox.shrink(),
          loading: (_) =>
              const ShimmerWidget.rectangular(height: 40, width: 40),
          loaded: (_state) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                      _state.feedbacks
                          .where((it) => it.expires_at != null)
                          .length
                          .toString(),
                      style: AppTextTheme.mediumTextBlack),
                  Text("Приглашения", style: AppTextTheme.smallTextMediumBlack),
                ]),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(_state.feedbacks.length.toString(),
                      style: AppTextTheme.mediumTextBlack),
                  Text("Отклики", style: AppTextTheme.smallTextMediumBlack),
                ]),
                ProfileAvatarWidget(),
              ],
            );
          },
          error: (_) =>
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("0", style: AppTextTheme.mediumTextBlack),
                Text("Отклики", style: AppTextTheme.smallTextMediumBlack),
              ]),
          noFeedbacks: (_) =>
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("0", style: AppTextTheme.mediumTextBlack),
                Text("Отклики", style: AppTextTheme.smallTextMediumBlack),
              ]));
    });
  }
}
