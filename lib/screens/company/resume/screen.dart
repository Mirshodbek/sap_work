import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sap_work/bloc/company/company.dart';
import 'package:sap_work/bloc/company/core_feedbacks/core_feedbacks_bloc.dart';
import 'package:sap_work/bloc/company/feedbacks_button/feedbacks_btn_cubit.dart';
import 'package:sap_work/resources/constants.dart';
import 'package:sap_work/screens/authorization/authorization.dart';
import 'package:sap_work/screens/widgets/backward.dart';
import 'package:sap_work/resources/theme/color_theme.dart';

class ResumeScreen extends StatelessWidget {
  static const String id = 'resume';

  const ResumeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;
    final FeedbackVacancy resume = arguments[FEEDBACKS_RESUME];
    return MultiBlocProvider(
      providers: [
        BlocProvider<CoreFeedbacksBloc>.value(
            value: arguments[CORE_FEEDBACKS_BLOC]),
        BlocProvider<FeedbacksBtnCubit>.value(
            value: arguments[FEEDBACKS_BTN_CUBIT]),
      ],
      child: Scaffold(
          backgroundColor: AppColor.white,
          appBar: AppBar(
              elevation: 0.0,
              backgroundColor: Colors.transparent,
              leading: BackWardWidget(
                () => Navigator.of(context).pop(),
              ),
              leadingWidth: MediaQuery.of(context).size.width),
          body: BlocBuilder<CoreFeedbacksBloc, CoreFeedbacksState>(
            builder: (context, state) {
              return state.maybeMap(
                  orElse: () => const SizedBox.shrink(),
                  statusSubscribe: (_state) {
                    return SingleChildScrollView(
                        padding: const EdgeInsets.all(18),
                        child: Column(children: [
                          Text(resume.user.name,
                              style: AppTextTheme.mediumTextBlack),

                        ]));
                  });
            },
          )),
    );
  }
}
