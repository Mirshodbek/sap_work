import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sap_work/bloc/user/core_profile/core_profile_user_bloc.dart';
import 'package:sap_work/bloc/user/feedbacks/feedbacks_resume_bloc.dart';
import 'package:sap_work/bloc/user/resume/resume_user_bloc.dart';
import 'package:sap_work/bloc/user/resumes/resumes_user_bloc.dart';
import 'package:sap_work/bloc/user/vacancies/vacancies_user_bloc.dart';
import 'package:sap_work/bloc/user/vacancy/vacancy_user_bloc.dart';
import 'package:sap_work/resources/constants.dart';
import 'package:sap_work/screens/authorization/authorization.dart';
import 'package:sap_work/screens/company/profile/widgets/widget.dart';
import 'package:sap_work/screens/user/select_resume/select_resume.dart';
import 'package:sap_work/screens/user/vacancy/widgets/vacancy_buttons.dart';
import 'package:sap_work/screens/user/vacancy/widgets/vacancy_head.dart';
import 'package:sap_work/screens/widgets/backward.dart';
import 'package:sap_work/screens/widgets/loading.dart';

import '../../../injection_container.dart';

class VacancyUserScreen extends StatelessWidget {
  static const String id = 'vacancy_user';

  const VacancyUserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;
    return MultiBlocProvider(
      providers: [
        BlocProvider<VacancyUserBloc>(
            create: (_) => VacancyUserBloc(sl())
              ..add(VacancyUserEvent.getVacancy(id: arguments[VACANCY_ID]))),
        BlocProvider<VacanciesUserBloc>.value(
            value: arguments[VACANCIES_USER_BLOC]),
        BlocProvider<FeedbacksResumeBloc>.value(
            value: arguments[FEEDBACKS_RESUME_BLOC]),
        BlocProvider<ResumesUserBloc>.value(
            value: arguments[RESUMES_USER_BLOC]),
        BlocProvider<CoreProfileUserBloc>.value(
            value: arguments[CORE_PROFILE_USER_BLOC]),
        BlocProvider<ResumeUserBloc>.value(value: arguments[RESUME_USER_BLOC]),
      ],
      child: Scaffold(
        appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            leading: BackWardWidget(() => Navigator.of(context).pop()),
            leadingWidth: MediaQuery.of(context).size.width,
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(10),
                child:
                    const Divider(thickness: 1.2, color: Color(0xFF000000)))),
        body: BlocListener<FeedbacksResumeBloc, FeedbacksResumeState>(
          listener: (context, state) {
            state.maybeMap(
                orElse: () => state,
                noFeedbacks: (_state){
                  if(_state.status==FEEDBACKS_RESUME_BLOC_SEND_FEEDBACKS_SUCCEED){
                    _function(context);
                  }
                },
                loaded: (_state) {
                  if (_state.status ==
                      FEEDBACKS_RESUME_BLOC_SEND_FEEDBACKS_SUCCEED) {
                    _function(context);
                  }
                });
          },
          child: BlocConsumer<VacancyUserBloc, VacancyUserState>(
            listener: (context, state) {
              state.maybeMap(
                  orElse: () => state,
                  loaded: (_state) {
                    if (_state.status == VACANCY_USER_BLOC_SELECT_RESUME) {
                      Navigator.pushNamed(context, SelectResumeScreen.id,
                          arguments: {
                            FEEDBACKS_RESUME_BLOC:
                                context.read<FeedbacksResumeBloc>(),
                            RESUME_USER_BLOC: context.read<ResumeUserBloc>(),
                            RESUMES_USER_BLOC: context.read<ResumesUserBloc>(),
                            CORE_PROFILE_USER_BLOC:
                                context.read<CoreProfileUserBloc>()
                          });
                    }
                  });
            },
            builder: (context, state) {
              return state.map(
                  empty: (_) => const SizedBox.shrink(),
                  loading: (_) => LoadingVacancyWidget(),
                  loaded: (_state) {
                    return RefreshIndicator(
                      onRefresh: () async => context
                          .read<VacancyUserBloc>()
                          .add(VacancyUserEvent.getVacancy(
                              id: arguments[VACANCY_ID])),
                      child: SingleChildScrollView(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                            VacancyHeadWidget(vacancy: _state),
                            const SizedBox(height: 10),
                            VacancyButtonWidget(vacancyId: _state.vacancy.id),
                          ])),
                    );
                  },
                  error: (_error) => Text(_error.message));
            },
          ),
        ),
      ),
    );
  }

  void _function(BuildContext context) {
    context
        .read<FeedbacksResumeBloc>()
        .add(const FeedbacksResumeEvent.getFeedbacks());
    showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)),
            title: Text("Ваше резюме отправлено",
                textAlign: TextAlign.center,
                style: AppTextTheme.mediumTextBlack),
            children: [
              const SizedBox(height: 10),
              Text(
                  "Вы можете отслеживать статус отклика и приглашений на собеседование",
                  textAlign: TextAlign.center,
                  style: AppTextTheme.smallTextMediumBlack),
              const SizedBox(height: 20),
              SvgPicture.asset(AppIcons.success,alignment: Alignment.bottomRight),
            ],
          );
        });
  }
}
