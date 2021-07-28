import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sap_work/bloc/user/core_profile/core_profile_user_bloc.dart';
import 'package:sap_work/bloc/user/feedbacks/feedbacks_resume_bloc.dart';
import 'package:sap_work/bloc/user/profile_button/profile_user_btn_cubit.dart';
import 'package:sap_work/bloc/user/resume/resume_user_bloc.dart';
import 'package:sap_work/bloc/user/resumes/resumes_user_bloc.dart';
import 'package:sap_work/resources/icons.dart';
import 'package:sap_work/resources/theme/color_theme.dart';
import 'package:sap_work/resources/theme/text_theme.dart';

class RemotedResumesWidget extends StatelessWidget {
  final LoadedResumesUserState resumesState;

  const RemotedResumesWidget({Key? key, required this.resumesState})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileUserBtnCubit, ProfileUserBtnState>(
      builder: (context, state) {
        return state.map(onClick: (_onClick) {
          return Column(children: [
            Text("Опубликованные резюме",
                style: AppTextTheme.smallTextMediumBlack),
            if (resumesState.resumes.isEmpty)
              Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Пусто",
                      style: AppTextTheme.smallSizeText
                          .copyWith(color: AppColor.grey))),
            if (!_onClick.isEditNames)
              ...resumesState.resumes.map((item) {
                return BlocBuilder<CoreProfileUserBloc, CoreProfileUserState>(
                  builder: (context, state) {
                    return state.maybeMap(
                        orElse: () => const SizedBox.shrink(),
                        attributes: (_attributes) {
                          return ListTile(
                              horizontalTitleGap: 0,
                              trailing: IconButton(
                                  onPressed: () => context
                                      .read<ResumesUserBloc>()
                                      .add(ResumesUserEvent.deleteResumes(
                                          id: item.id)),
                                  icon: SvgPicture.asset(AppIcons.trash,
                                      color: _attributes.resume.id == item.id
                                          ? AppColor.white
                                          : AppColor.black)),
                              selected: _attributes.resume.id == item.id,
                              selectedTileColor: AppColor.red,
                              contentPadding:
                                  const EdgeInsets.symmetric(vertical: 15.0),
                              onTap: () => _onTap(context, item.name, item.id),
                              title: Text(item.name,
                                  textAlign: TextAlign.center,
                                  style: AppTextTheme.smallTextMediumBlack
                                      .copyWith(
                                          color:
                                              _attributes.resume.id == item.id
                                                  ? AppColor.white
                                                  : AppColor.black)));
                        });
                  },
                );
              }),
            if (_onClick.isEditNames)
              ...resumesState.resumes.map((item) {
                return TextField(
                    key: ObjectKey(item),
                    controller: TextEditingController(text: item.name),
                    onSubmitted: (value) => context.read<ResumesUserBloc>().add(
                        ResumesUserEvent.editRemotedName(
                            category: item.category_id,
                            id: item.id,
                            nameResume: value,
                            phone: item.phone,
                            email: item.email)),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 30.0)));
              }),
          ]);
        });
      },
    );
  }

  Future<void> _onTap(BuildContext context, String name, int id) async {
    return Future.sync(() => context
            .read<CoreProfileUserBloc>()
            .add(CoreProfileUserEvent.onSelect(title: name, id: id)))
        .whenComplete(() {
      context.read<ResumeUserBloc>().add(const ResumeUserEvent.getResume());
      context.read<FeedbacksResumeBloc>().add(const FeedbacksResumeEvent.getFeedbacks());
      context.read<ProfileUserBtnCubit>().selectResumes();
    });
  }
}
