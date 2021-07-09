import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:progress_indicators/progress_indicators.dart';
import 'package:sap_work/bloc/user/core_profile/core_profile_user_bloc.dart';
import 'package:sap_work/bloc/user/profile_button/profile_user_btn_cubit.dart';
import 'package:sap_work/bloc/user/resume/resume_user_bloc.dart';
import 'package:sap_work/bloc/user/resumes/resumes_user_bloc.dart';
import 'package:sap_work/resources/constants.dart';
import 'package:sap_work/resources/small_widgets.dart';
import 'package:sap_work/resources/theme/text_theme.dart';
import 'package:sap_work/screens/company/widgets/loading.dart';
import 'package:sap_work/screens/user/profile/widgets/resume_body.dart';
import 'package:sap_work/screens/widgets/resume_buttons.dart';
import 'package:sap_work/screens/widgets/shimmer.dart';
import 'package:share/share.dart';

import 'create_resume.dart';

class ResumeWidget extends StatelessWidget {
  final AttributesCoreProfileUserState attributes;

  const ResumeWidget({Key? key, required this.attributes}) : super(key: key);

  static Widget create() {
    return BlocBuilder<CoreProfileUserBloc, CoreProfileUserState>(
        builder: (context, state) {
      return state.map(
          empty: (_) => const SizedBox.shrink(),
          loading: (_) => ShimmerWidget.rectangular(height: 18, width: 100),
          attributes: (_state) {
            return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextButton(
                      onPressed: () =>
                          context.read<ProfileUserBtnCubit>().selectResumes(),
                      child: Text(_state.resume.name,
                          style: AppTextTheme.smallTextMediumBlack)),
                  const Divider(color: Color(0xFF000000), thickness: 1.2),
                  ResumeWidget(attributes: _state),
                ]);
          },
          error: (_error) => Container(child: Text(_error.message)));
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ResumeUserBloc, ResumeUserState>(listener: (_, state) {
      state.maybeMap(
          orElse: () => state,
          noVacancy: (_state) {
            if (_state.status.isSubmissionFailure) {
              // SmallWidgets.scaffoldMessage(
              //     context: context, message: "Нет доступ к интернету");
            }
            if (!_state.status.isValidated) {
              SmallWidgets.scaffoldMessage(
                  context: context, message: "Заполните все строки");
            }
            if (_state.status.isSubmissionInProgress) {
              SmallWidgets.showDialogFunction(
                  context: context, title: "Опубликовывается резюме...");
            } else if (_state.status.isSubmissionSuccess) {
              _function(context);
            }
          },
          loaded: (_loaded) {
            if (_loaded.status ==
                    RESUME_USER_BLOC_ACTIVE_OR_DEACTIVATE_FAILURE ||
                _loaded.status == RESUME_USER_BLOC_CHANGE_EXTRA_BLOCK_FAILURE ||
                _loaded.status == RESUME_USER_BLOC_CHANGE_RESUME_FAILURE ||
                _loaded.status == RESUME_USER_BLOC_POST_RESUME_FAILURE ||
                _loaded.status == RESUME_USER_BLOC_ADD_STAGES_FAILURE ||
                _loaded.status == RESUME_USER_BLOC_DELETE_EXTRA_BLOCK_FAILURE) {
              SmallWidgets.scaffoldMessage(
                  context: context, message: "Нет доступ к интернету");
            }
          });
    }, builder: (context, state) {
      return state.maybeMap(
          orElse: () => const SizedBox.shrink(),
          noInternet: (_) => Center(
              child: Text("Нет доступ к интернету...",
                  style: AppTextTheme.mediumTextBlack)),
          loading: (_) => LoadingWidget(),
          loaded: (_state) {
            return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ResumeButtonsWidget(
                      pdf: () async {
                        FilePickerResult? result =
                            await FilePicker.platform.pickFiles();
                        if (result != null) {
                          context.read<ResumeUserBloc>().add(
                              ResumeUserEvent.addFile(
                                  path: result.files.first.path!,
                                  id: _state.resume.id));
                        }
                      },
                      share: () {
                        Share.share('http://google.com');
                      },
                      visible: () => context.read<ResumeUserBloc>().add(
                          ResumeUserEvent.activateOrDeactivate(
                              id: _state.resume.id,
                              active: _state.resume.active)),
                      active: _state.resume.active,
                      titlePdf: "Резюме в PDF",
                      titleVisible: _state.status ==
                              RESUME_USER_BLOC_ACTIVE_OR_DEACTIVATE_PROGRESS
                          ? JumpingText("Выполняется...",
                              style: AppTextTheme.smallTextMediumBlack)
                          : Text(
                              _state.resume.active == 1
                                  ? "Скрыть резюме"
                                  : "Раскрывать резюме",
                              style: AppTextTheme.smallTextMediumBlack)),
                  ResumeBodyWidget(
                      resume: _state.resume, categories: attributes.categories),
                ]);
          },
          noVacancy: (_) {
            return Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (attributes.resume.name == EMPTY_TITLE_RESUME)
                      Container(
                        alignment: Alignment.center,
                        child: Text("Добавьте первое резюме!",
                            style: AppTextTheme.mediumTextBlack),
                      )
                    else
                      CreateResumeWidget(
                          categories: attributes.categories,
                          nameResume: attributes.resume.name),
                  ]),
            );
          });
    });
  }

  Future<void> _function(BuildContext context) {
    return Future.sync(() => context.read<ResumesUserBloc>().add(
            ResumesUserEvent.addOrDeleteLocalResume(
                nameResume: attributes.resume.name, delete: true)))
        .whenComplete(() => context
            .read<ResumesUserBloc>()
            .add(const ResumesUserEvent.getResumes()))
        .whenComplete(() => Navigator.of(context).pop());
  }
}
