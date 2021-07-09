import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sap_work/bloc/user/core_profile/core_profile_user_bloc.dart';
import 'package:sap_work/bloc/user/profile_button/profile_user_btn_cubit.dart';
import 'package:sap_work/bloc/user/resume/resume_user_bloc.dart';
import 'package:sap_work/bloc/user/resumes/resumes_user_bloc.dart';
import 'package:sap_work/resources/icons.dart';
import 'package:sap_work/resources/theme/color_theme.dart';
import 'package:sap_work/resources/theme/text_theme.dart';

class LocalResumesWidget extends StatefulWidget {
  final LoadedResumesUserState resumesState;

  const LocalResumesWidget({Key? key, required this.resumesState})
      : super(key: key);

  @override
  _LocalResumesWidgetState createState() => _LocalResumesWidgetState();
}

class _LocalResumesWidgetState extends State<LocalResumesWidget> {
  String nameResume = '';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileUserBtnCubit, ProfileUserBtnState>(
      builder: (context, state) {
        return state.map(onClick: (_click) {
          return Column(children: [
            const SizedBox(height: 10),
            Text("Скрытые резюме", style: AppTextTheme.smallTextMediumBlack),
            if (widget.resumesState.localResumesName.isEmpty)
              Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Пусто",
                      style: AppTextTheme.smallSizeText
                          .copyWith(color: AppColor.grey))),
            if (!_click.isEditNames)
              ...widget.resumesState.localResumesName.map((item) {
                return BlocBuilder<CoreProfileUserBloc, CoreProfileUserState>(
                    builder: (context, state) {
                  return state.maybeMap(
                      orElse: () => const SizedBox.shrink(),
                      attributes: (_state) {
                        return ListTile(
                            trailing: IconButton(
                              onPressed: () => context
                                  .read<ResumesUserBloc>()
                                  .add(ResumesUserEvent.addOrDeleteLocalResume(
                                      nameResume: item.name, delete: true)),
                              icon: SvgPicture.asset(AppIcons.trash),
                            ),
                            selected: _state.vacancyId == item.id,
                            selectedTileColor: AppColor.red,
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 15),
                            onTap: () => _onTap(context, item.name, item.id),
                            title: Center(
                                child: Text(item.name,
                                    style: AppTextTheme.smallTextMediumBlack
                                        .copyWith(
                                            color: _state.vacancyId == item.id
                                                ? AppColor.white
                                                : AppColor.black))));
                      });
                });
              }),
            if (_click.isEditNames)
              ...widget.resumesState.localResumesName.map((item) {
                return TextField(
                    key: ObjectKey(item),
                    onSubmitted: (value) => context.read<ResumesUserBloc>().add(
                        ResumesUserEvent.editLocalName(
                            nameResume: value, id: item.id)),
                    controller: TextEditingController(text: item.name),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(
                            borderSide: BorderSide.none),
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 30.0)));
              }),
            if (!_click.isEditNames)
              Column(children: [
                if (_click.isExtraName)
                  TextField(onChanged: (value) {
                    nameResume = value;
                  }),
                if (nameResume.isEmpty && _click.isExtraName)
                  Text("Вводите имя вакансии",
                      style: AppTextTheme.smallSizeText),
                TextButton.icon(
                    onPressed: () {
                      context.read<ProfileUserBtnCubit>().extraName();
                      if (_click.isExtraName && nameResume.isNotEmpty) {
                        context.read<ResumesUserBloc>().add(
                            ResumesUserEvent.addOrDeleteLocalResume(
                                delete: false, nameResume: nameResume));
                      }
                    },
                    icon: !_click.isExtraName
                        ? SvgPicture.asset(AppIcons.plus_black)
                        : const SizedBox.shrink(),
                    label: Text(
                        !_click.isExtraName
                            ? "Добавить вакансии"
                            : "Сохранить вакансии",
                        style: AppTextTheme.smallTextMediumBlack)),
              ]),
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
      // context
      //     .read<FeedbacksVacancyBloc>()
      //     .add(const FeedbacksVacancyEvent.getFeedbacks());
      context.read<ProfileUserBtnCubit>().selectResumes();
    });
  }
}
