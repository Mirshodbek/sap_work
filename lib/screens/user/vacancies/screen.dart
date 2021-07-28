import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:sap_work/bloc/navigation/navigation_cubit.dart';
import 'package:sap_work/bloc/user/core_profile/core_profile_user_bloc.dart';
import 'package:sap_work/bloc/user/feedbacks/feedbacks_resume_bloc.dart';
import 'package:sap_work/bloc/user/resume/resume_user_bloc.dart';
import 'package:sap_work/bloc/user/resumes/resumes_user_bloc.dart';
import 'package:sap_work/bloc/user/vacancies/vacancies_user_bloc.dart';
import 'package:sap_work/bloc/user/vacancies_button/vacancies_user_btn_cubit.dart';
import 'package:sap_work/bloc/variable_filter/variable_filter_cubit.dart';
import 'package:sap_work/resources/constants.dart';
import 'package:sap_work/resources/icons.dart';
import 'package:sap_work/resources/small_widgets.dart';
import 'package:sap_work/resources/theme/color_theme.dart';
import 'package:sap_work/screens/user/favorites/screen.dart';
import 'package:sap_work/screens/filter/screen.dart';
import 'package:sap_work/screens/search/screen.dart';
import 'package:sap_work/screens/user/vacancies/widgets/increase.dart';
import 'package:sap_work/screens/user/vacancies/widgets/decrease.dart';
import 'package:sap_work/screens/user/vacancy/screen.dart';
import 'package:sap_work/screens/widgets/bottom_nav_bar.dart';
import 'package:sap_work/screens/widgets/row.dart';
import 'package:sap_work/screens/widgets/search_field.dart';

class VacanciesScreenUser extends StatelessWidget {
  VacanciesScreenUser({Key? key}) : super(key: key);
  final RefreshController refreshController = RefreshController();

  static Widget create() {
    return MultiBlocProvider(
      providers: [
        BlocProvider<VacanciesUserBtnCubit>(
            create: (_) => VacanciesUserBtnCubit()),
        BlocProvider<VariableFilterCubit>(
            create: (_) => VariableFilterCubit()),
      ],
      child: VacanciesScreenUser(),
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
      body: BlocListener<VacanciesUserBtnCubit, VacanciesUserBtnState>(
        listener: (context, state) {
          if (state is FavoritesVacanciesUserBtnState) {
            Navigator.pushNamed(context, FavoritesVacancyScreen.id, arguments: {
              VACANCIES_USER_BLOC: context.read<VacanciesUserBloc>()
            });
          }
          if (state is GetVacanciesUserBtnState) {
            Navigator.pushNamed(context, VacancyUserScreen.id, arguments: {
              FEEDBACKS_RESUME_BLOC: context.read<FeedbacksResumeBloc>(),
              RESUME_USER_BLOC: context.read<ResumeUserBloc>(),
              RESUMES_USER_BLOC: context.read<ResumesUserBloc>(),
              CORE_PROFILE_USER_BLOC: context.read<CoreProfileUserBloc>(),
              VACANCIES_USER_BLOC:context.read<VacanciesUserBloc>(),
              VACANCY_ID: state.id
            });
          }
          if (state is FilterVacanciesUserBtnState) {
            Navigator.pushNamed(context, FilterScreen.id, arguments: {
              VACANCIES_USER_BLOC: context.read<VacanciesUserBloc>(),
              VACANCIES_USER_BTN_CUBIT: context.read<VacanciesUserBtnCubit>(),
              CORE_PROFILE_USER_BLOC: context.read<CoreProfileUserBloc>(),
              VARIABLE_FILTER_CUBIT: context.read<VariableFilterCubit>(),
              ROLE:USER_ROLE
            });
          }
          if (state is SearchCountryVacanciesUserBtnState) {
            context.read<VariableFilterCubit>().searchCountry(EMPTY_STRING);
            Navigator.pushNamed(context, SearchScreen.id, arguments: {
              VARIABLE_FILTER_CUBIT: context.read<VariableFilterCubit>(),
            });
          }
        },
        child: BlocConsumer<VacanciesUserBloc, VacanciesUserState>(
          listener: (context, state) {
            state.maybeMap(
                orElse: () => state,
                loaded: (_state) {
                  if (_state.status ==
                          VACANCIES_USER_BLOC_SEARCH_VACANCIES_FAILURE ||
                      _state.status ==
                          VACANCIES_USER_BLOC_POST_OR_DELETE_FAILURE ||
                      _state.status ==
                          VACANCIES_USER_BLOC_FILTER_VACANCIES_FAILURE) {
                    SmallWidgets.scaffoldMessage(
                        context: context, message: "Нет доступ к интернету");
                  }
                  if(_state.status==VACANCIES_USER_BLOC_FILTER_VACANCIES_REQUIRED){
                    SmallWidgets.scaffoldMessage(
                        context: context, message: "Выбирайте профессиональная область");
                  }
                });
          },
          builder: (context, state) {
            return state.map(
                empty: (_) => const SizedBox.shrink(),
                loading: (_) => Center(child: CircularProgressIndicator()),
                loaded: (_state) {
                  return BlocBuilder<VariableFilterCubit,
                      VariableFilterState>(
                    builder: (context, state) {
                      return state.map(arguments: (_arguments) {
                        return SingleChildScrollView(
                          padding: const EdgeInsets.all(18),
                          child: Column(children: [
                            Row(children: [
                              Expanded(
                                  child: SmallWidgets.textRichSearch(
                                      title: _arguments.city,
                                      onTap: () => context
                                          .read<VacanciesUserBtnCubit>()
                                          .searchCountry())),
                              IconButton(
                                  onPressed: () => context
                                      .read<VacanciesUserBtnCubit>()
                                      .favorites(),
                                  icon: SvgPicture.asset(AppIcons.star)),
                            ]),
                            const SizedBox(height: 30),
                            SearchFieldWidget(
                                iconPressed: () => context
                                    .read<VacanciesUserBloc>()
                                    .add(VacanciesUserEvent.search(
                                        body: EMPTY_STRING)),
                                onChanged: (value) => context
                                    .read<VacanciesUserBloc>()
                                    .add(VacanciesUserEvent.search(
                                        body: value)),
                                onPressed: () => context
                                    .read<VacanciesUserBtnCubit>()
                                    .filter(),
                                hintText: "Профессия"),
                            const SizedBox(height: 30),
                            RowViewWidget(
                                isExtension: _state.isExtension,
                                text: "Подходящие вакансии",
                                onPressed: () => context
                                    .read<VacanciesUserBloc>()
                                    .add(VacanciesUserEvent.selectedView(
                                        isExtension: _state.isExtension))),
                            Column(
                              children: _state.vacancies.map((item) {
                                return !_state.isExtension
                                    ? DecreaseVacanciesWidget(
                                        vacancy: item,
                                        favorites: _state.favorites)
                                    : IncreaseVacanciesWidget(
                                        vacancy: item,
                                        favorites: _state.favorites);
                              }).toList(),
                            ),
                          ]),
                        );
                      });
                    },
                  );
                },
                error: (_error) => Container(child: Text(_error.message)));
          },
        ),
      ),
    );
  }
}
