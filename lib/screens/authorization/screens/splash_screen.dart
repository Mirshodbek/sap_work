import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sap_work/bloc/splash/splash_bloc.dart';

import '../authorization.dart';

class SplashScreen extends StatelessWidget {
  static const String id = '/';

  const SplashScreen({Key? key}) : super(key: key);

  static Widget create() {
    return BlocProvider<SplashBloc>(
      create: (_) => SplashBloc()..add(SplashEvent.initial()),
      child: SplashScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SplashBloc, SplashState>(
      listener: (context, state) {
        if (state == SplashState.selectedRole()) {
          Navigator.pushReplacementNamed(context, RoleScreen.id);
        }
        if (state == SplashState.hunter()) {
          Navigator.pushReplacementNamed(context, NavigationBar.id,
              arguments: {"role": "searcher"});
        }
        if (state == SplashState.employer()) {
          Navigator.pushReplacementNamed(context, NavigationBar.id,
              arguments: {"role": "employer"});
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColor.red,
          body: state.maybeWhen(
            initial: () => Container(),
            splash: () => Stack(
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Image.asset(AppImages.splash_background),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 67.0,
                      ),
                      Text(
                        "Найдите работу своей мечты",
                        textAlign: TextAlign.center,
                        style: AppTextTheme.splashFirstText,
                      ),
                      const SizedBox(
                        height: 37.0,
                      ),
                      _chatForm(
                        text: "Более 120 вакансий",
                        left: true,
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      _chatForm(
                        text: "В 32 городах",
                        left: false,
                      ),
                      const Spacer(),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 50.0,
                            horizontal: 38.0,
                          ),
                          child: TextButton(
                            onPressed: () => context
                                .read<SplashBloc>()
                                .add(const SplashEvent.selectedRole()),
                            style: ButtonStyle(
                              elevation: MaterialStateProperty.all(0.0),
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.symmetric(vertical: 24.0)),
                              side: MaterialStateProperty.all(
                                BorderSide(
                                  color: AppColor.white,
                                  width: 1.0,
                                ),
                              ),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                              ),
                            ),
                            child: SvgPicture.asset(
                              AppIcons.right_arrow,
                              color: AppColor.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            orElse: () => Container(),
          ),
        );
      },
    );
  }

  Widget _chatForm({String? text, bool? left}) => Align(
        alignment: left! ? Alignment.centerLeft : Alignment.centerRight,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
              bottomLeft: Radius.circular(left ? 20.0 : 0.0),
              bottomRight: Radius.circular(left ? 0.0 : 20.0),
            ),
            color: AppColor.white100,
          ),
          child: Text(
            text!,
            style: AppTextTheme.splashSecondText,
          ),
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
        ),
      );
}
