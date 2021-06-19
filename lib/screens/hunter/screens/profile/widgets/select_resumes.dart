import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:formz/formz.dart';
import 'package:sap_work/bloc/hunter/profile/profile_bloc.dart';

import '../../../hunter.dart';

class SelectResumesWidget extends StatefulWidget {
  final SelectResumesProfileState _state;

  const SelectResumesWidget(this._state, {Key? key}) : super(key: key);

  @override
  _SelectResumesWidgetState createState() => _SelectResumesWidgetState();
}

class _SelectResumesWidgetState extends State<SelectResumesWidget> {
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
        Divider(
          color: AppColor.black,
          thickness: 1.2,
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Text(
                "Выбор резюме",
                style: AppTextTheme.mediumTextBlack,
              ),
              const SizedBox(
                height: 40.0,
              ),
             Column(
               children: widget._state.resumes.map((resume) {
                 return ListTile(
                   selected: resume.id == widget._state.id,
                   selectedTileColor: AppColor.red,
                   onTap: () => context
                       .read<ProfileBloc>()
                       .add(ProfileEvent.toggleResume(id: resume.id)),
                   title: Text(
                     resume.body,
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
              widget._state.isAdd
                  ? Column(
                      children: [
                        TextField(
                          controller: _name,
                        ),
                        if (widget._state.status.isInvalid)
                          Text(
                            "Введите название резюме",
                            style: AppTextTheme.smallSizeText.copyWith(
                              color: AppColor.red,
                            ),
                          ),
                        TextButton(
                          onPressed: widget._state.status.isSubmissionInProgress
                              ? null
                              : () => context.read<ProfileBloc>().add(
                                  ProfileEvent.addResumeName(name: _name.text)),
                          child: widget._state.status.isSubmissionInProgress
                              ? CircularProgressIndicator()
                              : Text(
                                  "Сохранить",
                                  style: AppTextTheme.smallTextMediumBlack,
                                ),
                        ),
                      ],
                    )
                  : TextButton.icon(
                      onPressed: () => context.read<ProfileBloc>().add(
                          ProfileEvent.addResumeButton(
                              isAdd: widget._state.isAdd)),
                      icon: SvgPicture.asset(AppIcons.plus_black),
                      label: Text(
                        "Добавить резюме",
                        style: AppTextTheme.smallTextMediumBlack,
                      ),
                    ),
            ],
          ),
        ),
      ],
    );
  }
}
