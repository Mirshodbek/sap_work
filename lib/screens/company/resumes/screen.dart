import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sap_work/bloc/company/core_feedbacks/core_feedbacks_company_bloc.dart';
import 'package:sap_work/bloc/company/core_profile/core_profile_company_bloc.dart';
import 'package:sap_work/bloc/company/feedbacks/feedbacks_vacancy_bloc.dart';
import 'package:sap_work/bloc/company/profile/profile_company_bloc.dart';
import 'package:sap_work/bloc/company/resumes/resumes_company_bloc.dart';
import 'package:sap_work/bloc/company/resumes_button/resumes_company_btn_cubit.dart';
import 'package:sap_work/bloc/navigation/navigation_cubit.dart';
import 'package:sap_work/bloc/variable_filter/variable_filter_cubit.dart';
import 'package:sap_work/resources/constants.dart';
import 'package:sap_work/resources/icons.dart';
import 'package:sap_work/resources/small_widgets.dart';
import 'package:sap_work/resources/theme/text_theme.dart';
import 'package:sap_work/screens/company/resume/screen.dart';
import 'package:sap_work/screens/company/resumes/widgets/decrease.dart';
import 'package:sap_work/screens/filter/screen.dart';
import 'package:sap_work/screens/search/screen.dart';
import 'package:sap_work/screens/widgets/bottom_nav_bar.dart';
import 'package:sap_work/resources/theme/color_theme.dart';
import 'package:sap_work/screens/widgets/row.dart';
import 'package:sap_work/screens/widgets/search_field.dart';

class ResumesScreenCompany extends StatelessWidget {
  const ResumesScreenCompany({Key? key}) : super(key: key);

  static Widget create() {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ResumesCompanyBtnCubit>(
            create: (_) => ResumesCompanyBtnCubit()),
        BlocProvider<VariableFilterCubit>(create: (_) => VariableFilterCubit()),
      ],
      child: ResumesScreenCompany(),
    );
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
        body: BlocListener<ResumesCompanyBtnCubit, ResumesCompanyBtnState>(
          listener: (context, state) {
            if (state is FilterResumesCompanyBtnState) {
              Navigator.pushNamed(context, FilterScreen.id, arguments: {
                RESUMES_COMPANY_BTN_CUBIT:
                    context.read<ResumesCompanyBtnCubit>(),
                CORE_PROFILE_COMPANY_BLOC:
                    context.read<CoreProfileCompanyBloc>(),
                RESUMES_COMPANY_BLOC: context.read<ResumesCompanyBloc>(),
                VARIABLE_FILTER_CUBIT: context.read<VariableFilterCubit>(),
                ROLE: COMPANY_ROLE
              });
            }
            if (state is SearchcountryResumesCompanyBtnState) {
              context.read<VariableFilterCubit>().searchCountry(EMPTY_STRING);
              Navigator.pushNamed(context, SearchScreen.id, arguments: {
                VARIABLE_FILTER_CUBIT: context.read<VariableFilterCubit>(),
              });
            }
            if(state is ResumeResumesCompanyBtnState){
              Navigator.pushNamed(context, ResumeScreenCompany.id, arguments: {
                FEEDBACKS_VACANCY_BLOC: context.read<FeedbacksVacancyBloc>(),
                CORE_FEEDBACKS_BLOC: context.read<CoreFeedbacksCompanyBloc>(),
                PROFILE_COMPANY_BLOC: context.read<ProfileCompanyBloc>(),
                RESUMES_COMPANY_BLOC:context.read<ResumesCompanyBloc>(),
                RESUME: state.resume,
              });
            }
          },
          child: BlocConsumer<ResumesCompanyBloc, ResumesCompanyState>(
              listener: (context, state) {
            state.maybeMap(
                orElse: () => state,
                loaded: (_state) {
                  if (_state.status ==
                          RESUMES_COMPANY_BLOC_SEARCH_RESUMES_FAILURE ||
                      _state.status ==
                          RESUMES_COMPANY_BLOC_FILTER_RESUMES_FAILURE) {
                    SmallWidgets.scaffoldMessage(
                        context: context, message: "Нет доступ к интернету");
                  }
                });
          }, builder: (context, state) {
            return state.map(
                empty: (_) => const SizedBox.shrink(),
                loading: (_) => Center(child: CircularProgressIndicator()),
                loaded: (_state) {
                  return BlocBuilder<VariableFilterCubit,
                      VariableFilterState>(
                    builder: (context, state) {
                      return SingleChildScrollView(
                          padding: const EdgeInsets.all(18),
                          child: Column(children: [
                            Row(children: [
                              Expanded(
                                  child: SmallWidgets.textRichSearch(
                                      title: state.city,
                                      onTap: () {
                                        context
                                            .read<ResumesCompanyBtnCubit>()
                                            .searchCountry();
                                      })),
                              IconButton(
                                  onPressed: () {},
                                  icon: SvgPicture.asset(AppIcons.star)),
                            ]),
                            const SizedBox(height: 30),
                            SearchFieldWidget(
                                iconPressed: () => context
                                    .read<ResumesCompanyBloc>()
                                    .add(ResumesCompanyEvent.search(
                                        body: EMPTY_STRING)),
                                onChanged: (value) => context
                                    .read<ResumesCompanyBloc>()
                                    .add(ResumesCompanyEvent.search(
                                        body: value)),
                                onPressed: () => context
                                    .read<ResumesCompanyBtnCubit>()
                                    .filter(),
                                hintText: "Резюме"),
                            const SizedBox(height: 30),
                            RowViewWidget(
                                isExtension: _state.isExtension,
                                text: "Список резюме",
                                onPressed: () => context
                                    .read<ResumesCompanyBloc>()
                                    .add(ResumesCompanyEvent.selectedView(
                                        isExtension: _state.isExtension))),
                            const SizedBox(height: 20),
                            if (_state.resumes.isNotEmpty)
                              ..._state.resumes.map((item) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10),
                                  child: DecreaseResumesWidget(resume: item),
                                );
                              })
                            else
                              Container(
                                alignment: Alignment.center,
                                child: Text("Подходящие резюме не найдено",
                                    style: AppTextTheme.smallTextMediumBlack),
                              ),
                          ]));
                    },
                  );
                },
                error: (_error) => Container(
                      alignment: Alignment.center,
                      child: Text(_error.message),
                    ));
          }),
        ));
  }
}
