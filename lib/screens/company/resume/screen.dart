import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sap_work/bloc/company/company.dart';
import 'package:sap_work/bloc/company/core_feedbacks/core_feedbacks_company_bloc.dart';
import 'package:sap_work/bloc/company/feedbacks/feedbacks_vacancy_bloc.dart';
import 'package:sap_work/bloc/company/profile/profile_company_bloc.dart';
import 'package:sap_work/bloc/company/resume_buttons/resume_company_btn_cubit.dart';
import 'package:sap_work/bloc/company/resumes/resumes_company_bloc.dart';
import 'package:sap_work/resources/constants.dart';
import 'package:sap_work/screens/authorization/authorization.dart';
import 'package:sap_work/screens/company/invite/screen.dart';
import 'package:sap_work/screens/company/payment/screen.dart';
import 'package:sap_work/screens/company/resume/widgets/head.dart';
import 'package:sap_work/screens/company/resume/widgets/resume_center.dart';
import 'package:sap_work/screens/widgets/backward.dart';
import 'package:sap_work/resources/theme/color_theme.dart';

class ResumeScreenCompany extends StatelessWidget {
  static const String id = 'resume';

  const ResumeScreenCompany({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;
    final resume = arguments[RESUME];
    return MultiBlocProvider(
        providers: [
          BlocProvider<ResumeCompanyBtnCubit>(
              create: (_) => ResumeCompanyBtnCubit()),
          BlocProvider<CoreFeedbacksCompanyBloc>.value(
              value: arguments[CORE_FEEDBACKS_BLOC]),
          BlocProvider<FeedbacksVacancyBloc>.value(
              value: arguments[FEEDBACKS_VACANCY_BLOC]),
          BlocProvider<ProfileCompanyBloc>.value(
              value: arguments[PROFILE_COMPANY_BLOC]),
          BlocProvider<ResumesCompanyBloc>.value(
              value: arguments[RESUMES_COMPANY_BLOC]),
        ],
        child: BlocListener<ResumeCompanyBtnCubit, ResumeCompanyBtnState>(
          listener: (context, state) {
            if (state is PaymentResumeCompanyBtnState) {
              Navigator.pushNamed(context, PaymentScreen.id, arguments: {
                PROFILE_COMPANY_BLOC: context.read<ProfileCompanyBloc>(),
                CORE_FEEDBACKS_BLOC: context.read<CoreFeedbacksCompanyBloc>(),
                FEEDBACKS_VACANCY_BLOC: context.read<FeedbacksVacancyBloc>(),
                RESUMES_COMPANY_BLOC: context.read<ResumesCompanyBloc>(),
              });
            }
            if (state is InviteResumeCompanyBtnState) {
              Navigator.pushNamed(context, InviteScreen.id, arguments: {
                FEEDBACKS_VACANCY_BLOC: context.read<FeedbacksVacancyBloc>(),
                RESUME: state.resume,
              });
            }
          },
          child: Scaffold(
            backgroundColor: AppColor.white,
            appBar: AppBar(
                elevation: 0.0,
                backgroundColor: Colors.transparent,
                leading: BackWardWidget(
                  () => Navigator.of(context).pop(),
                ),
                leadingWidth: MediaQuery.of(context).size.width),
            body: BlocBuilder<CoreFeedbacksCompanyBloc,
                CoreFeedbacksCompanyState>(
              builder: (context, state) {
                return state.maybeMap(
                    orElse: () => const SizedBox.shrink(),
                    loaded: (_state) {
                      return SingleChildScrollView(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                            ResumeHeadWidget(
                              resume: resume,
                              subscribe:
                                  Utils.isValid(_state.subscribe.subscribe),
                            ),
                            const Divider(
                                height: 20,
                                color: Colors.black,
                                thickness: 1.2),
                            TextButton.icon(
                                onPressed: () {
                                  if (Utils.isValid(
                                      _state.subscribe.subscribe)) {
                                    context
                                        .read<ResumeCompanyBtnCubit>()
                                        .invite(resume);
                                  }
                                },
                                icon: SvgPicture.asset(AppIcons.people),
                                label: Expanded(
                                  child: Text(
                                      Utils.isValid(_state.subscribe.subscribe)
                                          ? "Пригласить соискателя"
                                          : "Чтобы отправить приглашение соискателя оплатите подписку",
                                      style: Utils.isValid(
                                              _state.subscribe.subscribe)
                                          ? AppTextTheme.smallTextMediumBlack
                                          : AppTextTheme.smallSizeText),
                                )),
                            const Divider(
                                height: 20,
                                color: Colors.black,
                                thickness: 1.2),
                            ResumeCenterWidget(
                              resume: resume,
                              subscribe:
                                  Utils.isValid(_state.subscribe.subscribe),
                            ),
                          ]));
                    });
              },
            ),
          ),
        ));
  }
}
