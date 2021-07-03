import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sap_work/screens/hunter/screens/profile/widgets/blocks.dart';
import 'package:share/share.dart';
import '../../../hunter.dart';

class ResumeWidget extends StatelessWidget {
  final ProfileScreenState _state;

  const ResumeWidget(this._state, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 14.0, left: 14.0, right: 14.0),
          child: Center(
            child: TextButton(
              onPressed: () => context
                  .read<ProfileBloc>()
                  .add(ProfileEvent.onClick(page: 2, isMoved: true)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    _state.resume.name,
                    style: AppTextTheme.smallTextMediumBlack,
                  ),
                  SvgPicture.asset(AppIcons.right_arrow_ios),
                ],
              ),
            ),
          ),
        ),
        Divider(
          color: AppColor.black,
          thickness: 1.2,
        ),
        ResumeButtonsWidget(
          titlePdf: "Резюме PDF",
          titleVisible:   Text("Видимость резюме",style: AppTextTheme.smallTextMediumBlack),
          pdf: () async {
            FilePickerResult? result = await FilePicker.platform.pickFiles();
            if (result != null) {
              context.read<ProfileBloc>().add(ProfileEvent.addFileToResume(
                    title: result.files.first.name,
                    filename: result.files.first.path!,
                  ));
            }
          },
          share: () {
            Share.share('http://google.com');
          },
          visible: () => context.read<ProfileBloc>().add(
              ProfileEvent.deActivatedResume(active: _state.resume.active)),
          active: _state.resume.active,
        ),
        const SizedBox(
          height: 20.0,
        ),
        if (_state.blocks.isEmpty)
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    "Добавьте первый блок в резюме",
                    style: AppTextTheme.mediumTextBlack,
                  ),
                ),
                SvgPicture.asset(AppIcons.indicator),
              ],
            ),
          ),
        if (_state.title == _state.resume.name) BlocksWidget(_state),

      ],
    );
  }
}
