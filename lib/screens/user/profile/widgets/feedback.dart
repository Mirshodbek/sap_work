import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sap_work/bloc/user/feedbacks/feedbacks_resume_bloc.dart';
import 'package:sap_work/resources/theme/text_theme.dart';
import 'package:sap_work/screens/user/profile/widgets/profile.dart';
import 'package:sap_work/screens/widgets/shimmer.dart';

class FeedbacksResumeCountWidget extends StatelessWidget {
  const FeedbacksResumeCountWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeedbacksResumeBloc, FeedbacksResumeState>(
      builder: (context, state) {
        return state.map(
            empty: (_) => const SizedBox.shrink(),
            loading: (_) =>
                const ShimmerWidget.rectangular(height: 40, width: 40),
            noFeedbacks: (_) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("0", style: AppTextTheme.mediumTextBlack),
                        Text("Приглашения",
                            style: AppTextTheme.smallTextMediumBlack),
                      ]),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("0", style: AppTextTheme.mediumTextBlack),
                        Text("Отклики",
                            style: AppTextTheme.smallTextMediumBlack),
                      ]),
                  ProfileUserAvatarWidget(),
                ],
              );
            },
            loaded: (_state) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            _state.feedbacks
                                .where((it) => it.expires_at != null)
                                .length
                                .toString(),
                            style: AppTextTheme.mediumTextBlack),
                        Text("Приглашения",
                            style: AppTextTheme.smallTextMediumBlack),
                      ]),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(_state.feedbacks.length.toString(),
                            style: AppTextTheme.mediumTextBlack),
                        Text("Отклики",
                            style: AppTextTheme.smallTextMediumBlack),
                      ]),
                  ProfileUserAvatarWidget(),
                ],
              );
            },
            error: (_error) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("0", style: AppTextTheme.mediumTextBlack),
                        Text("Приглашения",
                            style: AppTextTheme.smallTextMediumBlack),
                      ]),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("0", style: AppTextTheme.mediumTextBlack),
                        Text("Отклики",
                            style: AppTextTheme.smallTextMediumBlack),
                      ]),
                  ProfileUserAvatarWidget(),
                ],
              );
            });
      },
    );
  }
}
