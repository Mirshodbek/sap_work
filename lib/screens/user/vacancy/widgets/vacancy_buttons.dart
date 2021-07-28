import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:progress_indicators/progress_indicators.dart';
import 'package:sap_work/bloc/navigation/navigation_cubit.dart';
import 'package:sap_work/bloc/user/feedbacks/feedbacks_resume_bloc.dart';
import 'package:sap_work/bloc/user/resume/resume_user_bloc.dart';
import 'package:sap_work/bloc/user/vacancy/vacancy_user_bloc.dart';
import 'package:sap_work/resources/constants.dart';
import 'package:sap_work/resources/icons.dart';
import 'package:sap_work/resources/theme/color_theme.dart';
import 'package:sap_work/resources/theme/text_theme.dart';
import 'package:sap_work/screens/widgets/bottom_nav_bar.dart';

class VacancyButtonWidget extends StatelessWidget {
  final int vacancyId;

  const VacancyButtonWidget({Key? key, required this.vacancyId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFF000000), width: 1.5),
          color: AppColor.red,
        ),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          const SizedBox(height: 10),
          Text("Прикрепите резюме", style: AppTextTheme.mediumTextWhite),
          const SizedBox(height: 20),
          BlocBuilder<ResumeUserBloc, ResumeUserState>(
              builder: (context, state) {
            return state.map(
                empty: (_) => const SizedBox.shrink(),
                loading: (_) => const SizedBox(height: 10),
                loaded: (_loaded) => Column(
                      children: [
                        TextButton(
                          onPressed: () => context
                              .read<VacancyUserBloc>()
                              .add(const VacancyUserEvent.selectResume()),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text.rich(
                                TextSpan(children: [
                                  TextSpan(text: _loaded.resume.name),
                                  WidgetSpan(
                                    child: Padding(
                                      padding: const EdgeInsets.all(4),
                                      child: SvgPicture.asset(AppIcons.arrows,
                                          color: AppColor.white),
                                    ),
                                  ),
                                ]),
                                style: AppTextTheme.smallTextWhite),
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                              context
                                  .read<NavigationCubit>()
                                  .onChanged(BottomNavItem.profile);
                            },
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text.rich(
                                  TextSpan(children: [
                                    TextSpan(text: "Добавить резюме"),
                                    WidgetSpan(
                                        child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child:
                                          SvgPicture.asset(AppIcons.plus_white),
                                    ))
                                  ]),
                                  style: AppTextTheme.smallTextWhite),
                            )),
                        const SizedBox(height: 20),
                        BlocBuilder<FeedbacksResumeBloc, FeedbacksResumeState>(
                          builder: (context, state) {
                            return state.maybeMap(
                                orElse: () => const SizedBox.shrink(),
                                noFeedbacks: (_s) {
                                  return _s.status ==
                                      FEEDBACKS_RESUME_BLOC_SEND_FEEDBACKS_PROGRESS
                                      ? JumpingDotsProgressIndicator(
                                    color: Colors.white,
                                    fontSize: 20,
                                  )
                                      :WhiteButtonWidget(
                                      child: Text("Отправить резюме",
                                          style: AppTextTheme.smallTextWhite),
                                      onPressed: () {
                                        context.read<FeedbacksResumeBloc>().add(
                                            FeedbacksResumeEvent.sendFeedbacks(
                                                accept: false,
                                                resumeId: _loaded.resume.id,
                                                vacancyId: vacancyId));
                                      });
                                },
                                loaded: (_feedbacks) {
                                  return WhiteButtonWidget(
                                      child: _feedbacks.status ==
                                              FEEDBACKS_RESUME_BLOC_SEND_FEEDBACKS_PROGRESS
                                          ? JumpingDotsProgressIndicator(
                                              color: Colors.white,
                                              fontSize: 20,
                                            )
                                          : Text(
                                              !_feedbacks.feedbacks
                                                      .any((it)=>it.vacancy_id==vacancyId)
                                                  ? "Отправить резюме"
                                                  : "Отправлено",
                                              style:
                                                  AppTextTheme.smallTextWhite),
                                      onPressed: () {
                                        if (!_feedbacks.feedbacks
                                            .any((it)=>it.vacancy_id==vacancyId))
                                          context
                                              .read<FeedbacksResumeBloc>()
                                              .add(FeedbacksResumeEvent
                                                  .sendFeedbacks(
                                                      accept: false,
                                                      resumeId:
                                                          _loaded.resume.id,
                                                      vacancyId: vacancyId));
                                      });
                                });
                          },
                        ),
                      ],
                    ),
                noResume: (_) => Text(EMPTY_TITLE_RESUME_VACANCY,
                    style: AppTextTheme.smallTextWhite));
          }),
        ]));
  }
}
