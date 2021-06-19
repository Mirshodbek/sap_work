import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sap_work/bloc/hunter/profile/profile_bloc.dart';
import 'package:sap_work/models/profile/profile.dart';
import 'package:sap_work/screens/hunter/screens/blocks_resume/screen.dart';

import '../../../hunter.dart';

class ResumeBodyWidget extends StatelessWidget {
  final ProfileScreenState _state;

  const ResumeBodyWidget(this._state, {Key? key}) : super(key: key);

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
                        .add(ProfileEvent.selectResumes()),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          _state.resume.body,
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
          pdf: () {},
          share: () {},
          visible: () {},
          add: () => Navigator.pushNamed(context, BlocksResumeScreen.id),
        ),
        const SizedBox(
          height: 20.0,
        ),
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
        _Info(_state.profile),
      ],
    );
  }
}

class _Info extends StatelessWidget {
  final ProfileHunter profileHunter;

  const _Info(this.profileHunter, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Контакты",
            style: AppTextTheme.mediumTextBlack,
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            "Почта: info@mail.ru",
            style: AppTextTheme.smallTextMediumBlack,
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            "Телефон: +${profileHunter.phone}",
            style: AppTextTheme.smallTextMediumBlack,
          ),
        ],
      ),
    );
  }
}
