import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sap_work/bloc/user/core_profile/core_profile_user_bloc.dart';
import 'package:sap_work/bloc/user/profile_button/profile_user_btn_cubit.dart';
import 'package:sap_work/bloc/user/resume/resume_user_bloc.dart';
import 'package:sap_work/bloc/user/resumes/resumes_user_bloc.dart';
import 'package:sap_work/resources/constants.dart';
import 'package:sap_work/resources/icons.dart';
import 'package:sap_work/resources/small_widgets.dart';
import 'package:sap_work/resources/theme/text_theme.dart';
import 'package:sap_work/screens/company/widgets/loading.dart';
import 'package:sap_work/screens/user/profile/widgets/remote_resumes.dart';
import 'package:sap_work/screens/user/profile/widgets/resume.dart';

import 'local_resumes.dart';

class ResumesOrResumeWidget extends StatelessWidget {
  const ResumesOrResumeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileUserBtnCubit, ProfileUserBtnState>(
      builder: (context, state) {
        return state.map(onClick: (_click) {
          return Column(
            children: [
              if (!_click.selectResumes)
                ResumeWidget.create()
              else
                Column(children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Row(children: [
                        Expanded(
                            child: Text(
                                !_click.isEditNames
                                    ? "Выбор резюме"
                                    : "Изменить имя резюме",
                                style: AppTextTheme.mediumTextBlack)),
                        IconButton(
                            onPressed: () =>
                                context.read<ProfileUserBtnCubit>().editNames(),
                            icon: SvgPicture.asset(!_click.isEditNames
                                ? AppIcons.edit
                                : AppIcons.clear)),
                      ])),
                  const Divider(color: Color(0xFF000000), thickness: 1.2),
                  BlocConsumer<ResumesUserBloc, ResumesUserState>(
                      listener: (context, state) {
                    state.maybeMap(
                        orElse: () => state,
                        loaded: (_state) {
                          if (_state.status ==
                                  RESUMES_USER_BLOC_FAILURE_DELETE_RESUMES ||
                              _state.status ==
                                  RESUMES_USER_BLOC_FAILURE_EDIT_RESUMES_NAME) {
                            // SmallWidgets.scaffoldMessage(
                            //     context: context,
                            //     message: "Нет доступ к интернету");
                          }
                          if (_state.status ==
                              RESUMES_USER_BLOC_SUCCEED_DELETE_RESUMES) {
                            context.read<CoreProfileUserBloc>().add(
                                CoreProfileUserEvent.deleteLocalResume(
                                    id: _state.id));
                            context
                                .read<ResumeUserBloc>()
                                .add(const ResumeUserEvent.getResume());
                          }
                        });
                  }, builder: (context, state) {
                    return state.map(
                        empty: (_) => const SizedBox.shrink(),
                        loading: (_) => LoadingVacanciesWidget(),
                        loaded: (_loaded) {
                          return Column(children: [
                            RemotedResumesWidget(resumesState: _loaded),
                            LocalResumesWidget(resumesState: _loaded),
                          ]);
                        },
                        error: (_error) => Container(
                            height: 30,
                            child: Text(_error.message,
                                style: AppTextTheme.smallTextMediumBlack)));
                  }),
                ]),
            ],
          );
        });
      },
    );
  }
}
