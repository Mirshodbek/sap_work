import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sap_work/bloc/navigation/navigation_cubit.dart';
import 'package:sap_work/bloc/user/profile_button/profile_user_btn_cubit.dart';
import 'package:sap_work/bloc/user/variable_resume/variable_resume_cubit.dart';
import 'package:sap_work/resources/icons.dart';
import 'package:sap_work/resources/theme/color_theme.dart';
import 'package:sap_work/screens/settings/screen.dart';
import 'package:sap_work/screens/user/profile/widgets/feedback.dart';
import 'package:sap_work/screens/user/profile/widgets/profile.dart';
import 'package:sap_work/screens/user/profile/widgets/resumes_or_resume.dart';
import 'package:sap_work/screens/widgets/bottom_nav_bar.dart';

class ProfileScreenUser extends StatelessWidget {
  const ProfileScreenUser({Key? key}) : super(key: key);

  static Widget create() {
    return MultiBlocProvider(
      providers: [
        BlocProvider<VariableResumeCubit>(create: (_) => VariableResumeCubit()),
        BlocProvider<ProfileUserBtnCubit>(create: (_) => ProfileUserBtnCubit()),
      ],
      child: ProfileScreenUser(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.white,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              onPressed: () => Navigator.pushNamed(context, SettingsScreen.id),
              icon: SvgPicture.asset(AppIcons.settings)),
        ),
        bottomNavigationBar:
            BottomNavBarWidget(context.watch<NavigationCubit>().state),
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
                padding: const EdgeInsets.all(18),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProfileUserNameWidget(),
                      const SizedBox(height: 5),
                      FeedbacksResumeCountWidget(),
                      const SizedBox(height: 5),
                      LinksUserWidget(),
                    ])),
            ResumesOrResumeWidget(),
          ]),
        ));
  }
}
