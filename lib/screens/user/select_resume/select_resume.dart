import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sap_work/bloc/user/core_profile/core_profile_user_bloc.dart';
import 'package:sap_work/bloc/user/feedbacks/feedbacks_resume_bloc.dart';
import 'package:sap_work/bloc/user/resume/resume_user_bloc.dart';
import 'package:sap_work/bloc/user/resumes/resumes_user_bloc.dart';
import 'package:sap_work/resources/theme/text_theme.dart';
import 'package:sap_work/screens/authorization/authorization.dart';
import 'package:sap_work/screens/widgets/loading.dart';

class SelectResumeScreen extends StatelessWidget {
  static const String id = 'select_resume';

  const SelectResumeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;
    return MultiBlocProvider(
      providers: [
        BlocProvider<FeedbacksResumeBloc>.value(
            value: arguments[FEEDBACKS_RESUME_BLOC]),
        BlocProvider<ResumesUserBloc>.value(
            value: arguments[RESUMES_USER_BLOC]),
        BlocProvider<CoreProfileUserBloc>.value(
            value: arguments[CORE_PROFILE_USER_BLOC]),
        BlocProvider<ResumeUserBloc>.value(value: arguments[RESUME_USER_BLOC]),
      ],
      child: BlocBuilder<ResumesUserBloc, ResumesUserState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: AppColor.white,
              leading: CloseButton(
                color: AppColor.black,
              ),
              elevation: 0,
            ),
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Выбор резюме", style: AppTextTheme.mediumTextBlack),
                    const SizedBox(height: 20),
                    Column(
                        children: state.map(
                            empty: (_) => const <Widget>[],
                            loading: (_) => List.generate(
                                5, (index) => LoadingSelectResume()),
                            loaded: (_state) {
                              return List.generate(_state.resumes.length,
                                  (index) {
                                final item = _state.resumes[index];
                                return BlocBuilder<CoreProfileUserBloc,
                                        CoreProfileUserState>(
                                    builder: (context, state) {
                                  return state.maybeMap(
                                      orElse: () => const SizedBox.shrink(),
                                      attributes: (_attributes) {
                                        return ListTile(
                                            onTap: () => _onTap(
                                                context, item.name, item.id),
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    vertical: 15),
                                            selectedTileColor: AppColor.red,
                                            selected: item.id ==
                                                _attributes.resume.id,
                                            title: Text(item.name,
                                                textAlign: TextAlign.center,
                                                style: AppTextTheme
                                                    .smallTextMediumBlack
                                                    .copyWith(
                                                        color: item.id ==
                                                                _attributes
                                                                    .resume.id
                                                            ? AppColor.white
                                                            : AppColor.black)));
                                      });
                                });
                              });
                            },
                            error: (_error) => <Widget>[
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text(_error.message,
                                        style: AppTextTheme.smallSizeText),
                                  )
                                ])),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Future<void> _onTap(BuildContext context, String name, int id) async {
    return Future.sync(() => context
            .read<CoreProfileUserBloc>()
            .add(CoreProfileUserEvent.onSelect(title: name, id: id)))
        .whenComplete(() {
      context
          .read<FeedbacksResumeBloc>()
          .add(const FeedbacksResumeEvent.getFeedbacks());
      context.read<ResumeUserBloc>().add(const ResumeUserEvent.getResume());
      Navigator.of(context).pop();
    });
  }
}
