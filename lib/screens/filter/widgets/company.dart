import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sap_work/bloc/company/core_profile/core_profile_company_bloc.dart';
import 'package:sap_work/bloc/company/resumes/resumes_company_bloc.dart';
import 'package:sap_work/bloc/company/resumes_button/resumes_company_btn_cubit.dart';
import 'package:sap_work/bloc/variable_filter/variable_filter_cubit.dart';
import 'package:sap_work/resources/constants.dart';
import 'package:sap_work/resources/icons.dart';
import 'package:sap_work/resources/lists.dart';
import 'package:sap_work/resources/theme/color_theme.dart';
import 'package:sap_work/resources/theme/text_theme.dart';
import 'package:sap_work/screens/filter/widgets/widgets.dart';
import 'package:sap_work/screens/search/screen.dart';
import 'package:sap_work/screens/widgets/backward.dart';
import 'package:sap_work/screens/widgets/buttons.dart';
import 'package:sap_work/screens/widgets/drop_down.dart';

class CompanyFilterWidget extends StatelessWidget {
  const CompanyFilterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<ResumesCompanyBtnCubit, ResumesCompanyBtnState>(
      listener: (context, state) {
        if (state is SearchcountryResumesCompanyBtnState) {
          context.read<VariableFilterCubit>().searchCountry(EMPTY_STRING);
          Navigator.pushNamed(context, SearchScreen.id, arguments: {
            VARIABLE_FILTER_CUBIT: context.read<VariableFilterCubit>(),
          });
        }
      },
      child: BlocBuilder<VariableFilterCubit, VariableFilterState>(
        builder: (context, state) {
          return state.maybeMap(
              orElse: () => Container(),
              arguments: (_state) {
                return Scaffold(
                  backgroundColor: AppColor.white,
                  appBar: AppBar(
                    elevation: 0.0,
                    backgroundColor: Colors.transparent,
                    leading: BackWardWidget(
                      () => Navigator.of(context).pop(),
                    ),
                    leadingWidth: MediaQuery.of(context).size.width,
                    actions: [
                      TextButton(
                        onPressed: () =>
                            context.read<VariableFilterCubit>().clear(),
                        child: Row(
                          children: [
                            SvgPicture.asset(AppIcons.clear),
                            const SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              "Очистить",
                              style: AppTextTheme.smallTextBlack,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  body: SingleChildScrollView(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          "Фильтр вакансий",
                          style: AppTextTheme.mediumTextBlack,
                        ),
                        const SizedBox(
                          height: 25.0,
                        ),
                        ExpansionWidget(_state.stage),
                        const SizedBox(
                          height: 30.0,
                        ),
                        FilterButton(
                          _state.city,
                          () => context
                              .read<ResumesCompanyBtnCubit>()
                              .searchCountry(),
                        ),
                        const SizedBox(
                          height: 18.0,
                        ),
                        BlocBuilder<CoreProfileCompanyBloc,
                            CoreProfileCompanyState>(
                          builder: (context, state) {
                            return state.maybeMap(
                                orElse: () => const SizedBox.shrink(),
                                attributes: (_attr) {
                                  return DropDownWidget(
                                      value: _state.categoryTitle.isNotEmpty
                                          ? _state.categoryTitle
                                          : null,
                                      title: "Профессиональная область",
                                      onChanged: (value) => context
                                          .read<VariableFilterCubit>()
                                          .categoryTitle(value!),
                                      items: _attr.categories
                                          .map((type) => DropdownMenuItem<
                                                  String>(
                                              onTap: () => context
                                                  .read<VariableFilterCubit>()
                                                  .category(type.id),
                                              value: type.name,
                                              child: Text(type.name)))
                                          .toList());
                                });
                          },
                        ),
                        const SizedBox(
                          height: 18.0,
                        ),
                        EmploymentTypeWidget(
                          _state.type,
                          (String? value) =>
                              context.read<VariableFilterCubit>().type(value!),
                        ),
                        const SizedBox(
                          height: 18.0,
                        ),
                        DropDownWidget(
                            value: _state.schedule.isNotEmpty
                                ? _state.schedule
                                : null,
                            title: "Тип занятости",
                            onChanged: (value) => context
                                .read<VariableFilterCubit>()
                                .schedule(value!),
                            items: Lists.scheduleList
                                .map((type) => DropdownMenuItem<String>(
                                    value: type, child: Text(type)))
                                .toList()),
                        const SizedBox(
                          height: 30.0,
                        ),
                        RedButtonWidget(
                          "Сохранить фильтры",
                          () {
                            context.read<ResumesCompanyBloc>().add(
                                ResumesCompanyEvent.filter(
                                    category: _state.category,
                                    city: _state.city,
                                    abilities: _state.abilities));
                            Navigator.of(context).pop();
                          },
                          true,
                        ),
                      ],
                    ),
                  ),
                );
              });
        },
      ),
    );
  }
}
