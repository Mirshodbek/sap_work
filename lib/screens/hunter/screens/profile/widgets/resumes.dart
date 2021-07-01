import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:formz/formz.dart';
import '../../../hunter.dart';

class ResumesWidget extends StatelessWidget {
  final ProfileScreenState _state;

  const ResumesWidget(this._state, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Text(
                      _state.buttons == 3
                          ? "Изменить имя резюме"
                          : "Выбор резюме",
                      style: AppTextTheme.mediumTextBlack,
                    ),
                  ),
                  _state.buttons == 3
                      ? IconButton(
                          onPressed: () => context.read<ProfileBloc>().add(
                              const ProfileEvent.onClick(
                                  page: 2, isMoved: false)),
                          icon: SvgPicture.asset(AppIcons.clear),
                        )
                      : IconButton(
                          onPressed: () => context.read<ProfileBloc>().add(
                              const ProfileEvent.editResumeName(
                                  name: '', id: 0, isPublished: false)),
                          icon: SvgPicture.asset(AppIcons.edit),
                        ),
                ],
              ),
              Divider(
                color: AppColor.black,
                thickness: 1.2,
              ),
            ],
          ),
        ),
        _state.buttons == 3
            ? _EditResumesBody(_state)
            : _SelectResumesBody(_state),
      ],
    );
  }
}

class _SelectResumesBody extends StatefulWidget {
  final ProfileScreenState _state;

  const _SelectResumesBody(this._state, {Key? key}) : super(key: key);

  @override
  __SelectResumesBodyState createState() => __SelectResumesBodyState();
}

class __SelectResumesBodyState extends State<_SelectResumesBody> {
  final _name = TextEditingController();

  @override
  void dispose() {
    _name.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            "Опубликование резюме",
            style: AppTextTheme.smallTextMediumBlack,
          ),
        ),
        if (widget._state.resumes.isEmpty)
          ListTile(
            title: Text(
              "Пусто",
              style: AppTextTheme.smallSizeText.copyWith(color: AppColor.grey),
            ),
          ),
        Column(
          children: widget._state.resumes.map((resume) {
            return ListTile(
              contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
              selected: resume.id == widget._state.id,
              selectedTileColor: AppColor.red,
              onTap: () => context.read<ProfileBloc>().add(
                  ProfileEvent.toggleResume(id: resume.id, isPublished: true,title: resume.name)),
              title: Text(
                resume.name,
                textAlign: TextAlign.center,
                style: AppTextTheme.smallTextMediumBlack.copyWith(
                  color: resume.id == widget._state.id
                      ? AppColor.white
                      : AppColor.black,
                ),
              ),
            );
          }).toList(),
        ),
        ListTile(
          title: Text(
            "Неопубликование резюме",
            style: AppTextTheme.smallTextMediumBlack,
          ),
        ),
        if (widget._state.localResumes.isEmpty)
          ListTile(
            title: Text(
              "Пусто",
              style: AppTextTheme.smallSizeText.copyWith(color: AppColor.grey),
            ),
          ),
        Column(
          children: widget._state.localResumes.map((localResume) {
            return ListTile(
              contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
              selected: localResume== widget._state.title,
              selectedTileColor: AppColor.red,
              onTap: () => context.read<ProfileBloc>().add(
                  ProfileEvent.toggleResume(
                      id: 0, isPublished: false,title: localResume)),
              title: Text(
                localResume,
                textAlign: TextAlign.center,
                style: AppTextTheme.smallTextMediumBlack.copyWith(
                  color: localResume == widget._state.title
                      ? AppColor.white
                      : AppColor.black,
                ),
              ),
            );
          }).toList(),
        ),
        widget._state.buttons == 2
            ? Column(
                children: [
                  TextField(
                    controller: _name,
                  ),
                  if (widget._state.status.isInvalid)
                    Text(
                      "Введите название резюме",
                      style: AppTextTheme.smallSizeText
                          .copyWith(color: AppColor.red),
                    ),
                  TextButton(
                    onPressed: () {
                      context.read<ProfileBloc>().add(
                          ProfileEvent.addResumeName(
                              name: _name.text,
                              id: widget._state.localResumes.length + 1));
                      _name.clear();
                    },
                    child: Text(
                      "Сохранить",
                      style: AppTextTheme.smallTextMediumBlack,
                    ),
                  ),
                ],
              )
            : TextButton.icon(
                onPressed: () => context
                    .read<ProfileBloc>()
                    .add(const ProfileEvent.resumeButtons(number: 2)),
                icon: SvgPicture.asset(AppIcons.plus_black),
                label: Text(
                  "Добавить резюме",
                  style: AppTextTheme.smallTextMediumBlack,
                ),
              ),
      ],
    );
  }
}

class _EditResumesBody extends StatefulWidget {
  final ProfileScreenState _state;

  const _EditResumesBody(this._state, {Key? key}) : super(key: key);

  @override
  __EditResumesBodyState createState() => __EditResumesBodyState();
}

class __EditResumesBodyState extends State<_EditResumesBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            "Опубликование резюме",
            style: AppTextTheme.smallTextMediumBlack,
          ),
        ),
        if (widget._state.resumes.isEmpty)
          ListTile(
            title: Text(
              "Пусто",
              style: AppTextTheme.smallSizeText.copyWith(color: AppColor.grey),
            ),
          ),
        Column(
          children: widget._state.resumes.map((e) {
            return GestureDetector(
              onTap: () {
                if (!widget._state.isEnabled) {
                }
              },
              child: TextField(
                key: ObjectKey(e),
                enabled: widget._state.isEnabled,
                controller: TextEditingController(text: e.name),
                textAlign: TextAlign.center,
                onChanged: (value) => context.read<ProfileBloc>().add(
                    ProfileEvent.editResumeName(
                        name: value, id: e.id, isPublished: true)),
                decoration: InputDecoration(
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 30.0),
                ),
              ),
            );
          }).toList(),
        ),
        ListTile(
          title: Text(
            "Неопубликование резюме",
            style: AppTextTheme.smallTextMediumBlack,
          ),
        ),
        if (widget._state.localResumes.isEmpty)
          ListTile(
            title: Text(
              "Пусто",
              style: AppTextTheme.smallSizeText.copyWith(color: AppColor.grey),
            ),
          ),
        Column(
          children: widget._state.localResumes.map((e) {
            return TextField(
              key: ObjectKey(e),
              controller: TextEditingController(text: e),
              textAlign: TextAlign.center,
              onChanged: (value) => context.read<ProfileBloc>().add(
                  ProfileEvent.editResumeName(
                      name: value, id: 0, isPublished: false)),
              decoration: InputDecoration(
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 30.0),
              ),
            );
          }).toList(),
        ),
        const SizedBox(
          height: 40.0,
        ),
      ],
    );
  }
}
