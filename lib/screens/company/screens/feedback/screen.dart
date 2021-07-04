import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sap_work/bloc/company/feedbacks/feedbacks_vacancy_bloc.dart';
import 'package:sap_work/bloc/navigation/navigation_cubit.dart';
import 'package:sap_work/screens/authorization/authorization.dart';
import 'package:sap_work/screens/company/screens/feedback/widgets/subscribe.dart';
import 'package:sap_work/screens/widgets/bottom_nav_bar.dart';
import 'package:sap_work/theme/color_theme.dart';

class FeedbackScreenCompany extends StatelessWidget {
  const FeedbackScreenCompany({Key? key}) : super(key: key);

  static Widget create() {
    return FeedbackScreenCompany();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar:
          BottomNavBarWidget(context.watch<NavigationCubit>().state),
      body: BlocBuilder<FeedbacksVacancyBloc, FeedbacksVacancyState>(
        builder: (context, state) {
          return state.map(
              empty: (_) => const SizedBox.shrink(),
              loading: (_) => Column(),
              loaded: (_state) {
                return SingleChildScrollView(
                    child: Column(children: [
                  Text("Отклики на вакансию",
                      style: AppTextTheme.mediumTextBlack),
                  const SizedBox(height: 25),
                  TextButton(
                      onPressed: () {},
                      child: Text(_state.vacancyName,
                          style: AppTextTheme.smallTextMediumBlack)),
                      const SizedBox(height: 40),
                      SubscribeWidget(),
                    ]));
              },
              error: (_err) => Container(child: Text(_err.message)));
        },
      ),
    );
  }
}
