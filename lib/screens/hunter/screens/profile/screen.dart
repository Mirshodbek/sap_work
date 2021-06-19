import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sap_work/bloc/hunter/profile/profile_bloc.dart';
import 'package:sap_work/models/profile/profile.dart';
import 'package:sap_work/screens/hunter/screens/blocks_resume/screen.dart';
import 'package:sap_work/screens/hunter/screens/profile/widgets/resume_body.dart';
import 'package:sap_work/screens/hunter/screens/profile/widgets/select_resumes.dart';
import '../../hunter.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  static Widget create(BuildContext context) {
    return ProfileScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => Navigator.pushNamed(context, SettingsScreenS.id),
          icon: SvgPicture.asset(AppIcons.settings),
        ),
      ),
      body: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          return state.map(
              initial: (_) => const Center(
                    child: const CircularProgressIndicator(),
                  ),
              profileState: (_state) {
                return SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HeadProfileWidget(_state),
                      ResumeBodyWidget(_state),
                    ],
                  ),
                );
              },
              selectResumesState: (_state) {
                return SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HeadProfileWidget(_state),
                      SelectResumesWidget(_state),
                    ],
                  ),
                );
              });
        },
      ),
      bottomNavigationBar:
          BottomNavBarWidget(context.watch<NavigationCubit>().state),
    );
  }
}
