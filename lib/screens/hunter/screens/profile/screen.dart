import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../hunter.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);


  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
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
          icon: SvgPicture.asset(AppIcons.settings),
        ),
      ),
      body: BlocConsumer<ProfileBloc, ProfileState>(
        listener: (context, state) {
          if(state is AccessResumeProfileState){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                behavior: SnackBarBehavior.floating,
                content: Text("Создайте имя резюме")));
          }
          if (state is ScreensProfileState) {
            if (state.page == 2)
              _pageController.nextPage(
                  duration: Duration(milliseconds: 500), curve: Curves.linear);
            else if (state.page == 1)
              _pageController.previousPage(
                  duration: Duration(milliseconds: 500), curve: Curves.linear);
          }
        },
        builder: (context, state) {
          return state.maybeMap(
              orElse: () => const SizedBox.shrink(),
              initial: (_) => InitialProfileWidget(),
              profileState: (_state) {
                return PageView(
                  controller: _pageController,
                  children: [
                    RefreshIndicator(
                      onRefresh: () async => context
                          .read<ProfileBloc>()
                          .add(const ProfileEvent.refresh()),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            HeadWidget(
                                _state.profile, _state.feedbacksCount),
                            // ResumeWidget(_state),
                          ],
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          SingleChildScrollView(
                              child: HeadWidget(
                                  _state.profile, _state.feedbacksCount)),
                          ResumesWidget(_state),
                        ],
                      ),
                    ),
                  ],
                );
              });
        },
      ),
      bottomNavigationBar:
          BottomNavBarWidget(context.watch<NavigationCubit>().state),
    );
  }
}
