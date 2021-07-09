import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widget.dart';

class VacancyBodyWidget extends StatelessWidget {
  final List<Category> categories;
  final Vacancy vacancy;

  const VacancyBodyWidget(
      {Key? key, required this.vacancy, required this.categories})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBtnCubit, ProfileBtnState>(
        builder: (context, state) {
      return state.map(onClick: (_onClick) {
        return BlocBuilder<VariableVacancyCubit, VariableVacancyState>(
            builder: (context, state) {
          return state.map(arguments: (_arguments) {
            return Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SmallWidgets.title(
                          title: "Описание вакансии",
                          onPressed: () {
                            context.read<ProfileBtnCubit>().editBody();
                            if (_onClick.isEditBody &&
                                _arguments.body.isNotEmpty) {
                              context.read<VacancyCompanyBloc>().add(
                                  VacancyCompanyEvent.editVacancy(
                                      body: _arguments.body,
                                      categoryId: vacancy.category.id,
                                      id: vacancy.id));
                            }
                          },
                          changeIcon: _onClick.isEditBody),
                      const SizedBox(height: 20),
                      SmallWidgets.bodyText(
                          body: vacancy.body,
                          changeWidget: _onClick.isEditBody,
                          onChanged: (value) =>
                              context.read<VariableVacancyCubit>().body(value)),
                      const SizedBox(height: 20),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SmallWidgets.title(
                                title: "Зароботная плата",
                                onPressed: () {
                                  context
                                      .read<ProfileBtnCubit>()
                                      .editMinAndMaxSalary();
                                  if (_onClick.isEditMinAndMaxSalary &&
                                          _arguments.minsalary.isNotEmpty ||
                                      _arguments.maxsalary.isNotEmpty) {
                                    context.read<VacancyCompanyBloc>().add(
                                        VacancyCompanyEvent.editVacancy(
                                            minsalary: _arguments.minsalary,
                                            maxsalary: _arguments.maxsalary,
                                            categoryId: vacancy.category.id,
                                            id: vacancy.id));
                                  }
                                },
                                changeIcon: _onClick.isEditMinAndMaxSalary),
                            Text("По договоренности",
                                style: AppTextTheme.smallTextMediumBlack
                                    .copyWith(color: AppColor.grey)),
                          ]),
                      const SizedBox(height: 20),
                      Row(children: [
                        Flexible(
                            child: Row(children: [
                          if (!_onClick.isEditMinAndMaxSalary)
                            Text("от ",
                                style: AppTextTheme.smallTextMediumBlack),
                          Flexible(
                              child: SmallWidgets.bodyText(
                                  body: vacancy.minsalary,
                                  changeWidget: _onClick.isEditMinAndMaxSalary,
                                  onChanged: (value) => context
                                      .read<VariableVacancyCubit>()
                                      .minsalary(value))),
                          if (!_onClick.isEditMinAndMaxSalary)
                            Text("₽", style: AppTextTheme.smallTextMediumBlack),
                        ])),
                        const SizedBox(width: 10),
                        Flexible(
                            child: Row(children: [
                          if (!_onClick.isEditMinAndMaxSalary)
                            Text("до ",
                                style: AppTextTheme.smallTextMediumBlack),
                          Flexible(
                              child: SmallWidgets.bodyText(
                                  body: vacancy.maxsalary,
                                  changeWidget: _onClick.isEditMinAndMaxSalary,
                                  onChanged: (value) => context
                                      .read<VariableVacancyCubit>()
                                      .maxsalary(value))),
                          if (!_onClick.isEditMinAndMaxSalary)
                            Text("₽", style: AppTextTheme.smallTextMediumBlack),
                        ])),
                      ]),
                      const SizedBox(height: 30),
                      SmallWidgets.title(
                          title: "Занятость",
                          onPressed: () {
                            context.read<ProfileBtnCubit>().editSchedule();
                            if (_onClick.isEditSchedule &&
                                _arguments.schedule.isNotEmpty) {
                              context.read<VacancyCompanyBloc>().add(
                                  VacancyCompanyEvent.editVacancy(
                                      schedule: _arguments.schedule,
                                      categoryId: vacancy.category.id,
                                      id: vacancy.id));
                            }
                          },
                          changeIcon: _onClick.isEditSchedule),
                      const SizedBox(height: 10),
                      _bodyBuildList(
                          onTap: (item) => context
                              .read<VariableVacancyCubit>()
                              .schedule(item),
                          body: vacancy.schedule,
                          title: _arguments.schedule,
                          list: Lists.scheduleList,
                          changeWidget: _onClick.isEditSchedule),
                      const SizedBox(height: 30),
                      SmallWidgets.title(
                          title: "График работы",
                          onPressed: () {
                            context.read<ProfileBtnCubit>().editType();
                            if (_onClick.isEditType &&
                                _arguments.type.isNotEmpty) {
                              context.read<VacancyCompanyBloc>().add(
                                  VacancyCompanyEvent.editVacancy(
                                      type: _arguments.type,
                                      categoryId: vacancy.category.id,
                                      id: vacancy.id));
                            }
                          },
                          changeIcon: _onClick.isEditType),
                      const SizedBox(height: 10),
                      _bodyBuildList(
                          onTap: (item) =>
                              context.read<VariableVacancyCubit>().type(item),
                          body: vacancy.type,
                          title: _arguments.type,
                          list: Lists.typeList,
                          changeWidget: _onClick.isEditType),
                      const SizedBox(height: 30),
                      SmallWidgets.title(
                          title: "Опыт",
                          onPressed: () {
                            context.read<ProfileBtnCubit>().editStage();
                            if (_onClick.isEditStage &&
                                _arguments.stage.isNotEmpty) {
                              context.read<VacancyCompanyBloc>().add(
                                  VacancyCompanyEvent.editVacancy(
                                      stage: _arguments.stage,
                                      categoryId: vacancy.category.id,
                                      id: vacancy.id));
                            }
                          },
                          changeIcon: _onClick.isEditStage),
                      const SizedBox(height: 10),
                      _bodyBuildList(
                          onTap: (item) =>
                              context.read<VariableVacancyCubit>().stage(item),
                          body: vacancy.stage,
                          title: _arguments.stage,
                          list: Lists.stageList,
                          changeWidget: _onClick.isEditStage),
                      const SizedBox(height: 30),
                      SmallWidgets.title(
                          title: "Локация",
                          onPressed: () {
                            context.read<ProfileBtnCubit>().editCity();
                            if (_onClick.isEditCity &&
                                _arguments.city.isNotEmpty) {
                              context.read<VacancyCompanyBloc>().add(
                                  VacancyCompanyEvent.editVacancy(
                                      city: _arguments.city,
                                      categoryId: vacancy.category.id,
                                      id: vacancy.id));
                            }
                          },
                          changeIcon: _onClick.isEditCity),
                      const SizedBox(height: 10),
                      _bodyDropDown(
                          onChanged: (value) =>
                              context.read<VariableVacancyCubit>().city(value!),
                          body: vacancy.city,
                          title: "Город",
                          value: _arguments.city.isNotEmpty
                              ? _arguments.city
                              : null,
                          items: Lists.countryList
                              .map((item) => DropdownMenuItem<String>(
                                  value: item, child: Text(item)))
                              .toList(),
                          changeWidget: _onClick.isEditCity),
                      const SizedBox(height: 30),
                      SmallWidgets.title(
                          title: "Навыки",
                          onPressed: () {
                            context.read<ProfileBtnCubit>().editAbilities();
                            if (_onClick.isEditAbilities &&
                                _arguments.abilities.isNotEmpty) {
                              context.read<VacancyCompanyBloc>().add(
                                  VacancyCompanyEvent.editVacancy(
                                      abilities: _arguments.abilities,
                                      categoryId: vacancy.category.id,
                                      id: vacancy.id));
                            }
                          },
                          changeIcon: _onClick.isEditAbilities),
                      const SizedBox(height: 10),
                      SmallWidgets.bodyText(
                          body: vacancy.abilities,
                          changeWidget: _onClick.isEditAbilities,
                          onChanged: (value) => context
                              .read<VariableVacancyCubit>()
                              .abilities(value)),
                      const SizedBox(height: 30),
                      SmallWidgets.title(
                          title: "Профессиональная сфера",
                          onPressed: () {
                            context.read<ProfileBtnCubit>().editCategory();
                            if (_onClick.isEditCategory &&
                                _arguments.categoryTitle.isNotEmpty) {
                              context.read<VacancyCompanyBloc>().add(
                                  VacancyCompanyEvent.editVacancy(
                                      categoryId: _arguments.categoryId,
                                      id: vacancy.id));
                            }
                          },
                          changeIcon: _onClick.isEditCategory),
                      const SizedBox(height: 10),
                      _bodyDropDown(
                          onChanged: (value) => context
                              .read<VariableVacancyCubit>()
                              .category(value!),
                          body: vacancy.category.name,
                          title: "Профессиональная сфера",
                          value: _arguments.categoryTitle.isNotEmpty
                              ? _arguments.categoryTitle
                              : null,
                          items: categories
                              .map((type) => DropdownMenuItem<String>(
                                  onTap: () => context
                                      .read<VariableVacancyCubit>()
                                      .categoryId(type.id),
                                  value: type.name,
                                  child: Text(type.name)))
                              .toList(),
                          changeWidget: _onClick.isEditCategory),
                      const SizedBox(height: 20),
                    ]));
          });
        });
      });
    });
  }





  Widget _bodyBuildList(
          {required Function(String item) onTap,
          required String body,
          required String title,
          required List<String> list,
          required bool changeWidget}) =>
      changeWidget
          ? Column(children: [
              ...SmallWidgets.buildList(onTap: onTap, title: title, list: list),
            ])
          : Text(body, style: AppTextTheme.smallTextMediumBlack);

  Widget _bodyDropDown(
          {required Function(String? item) onChanged,
          required String body,
          required String title,
          required String? value,
          required List<DropdownMenuItem<String>> items,
          required bool changeWidget}) =>
      changeWidget
          ? DropDownWidget(
              value: value, title: title, onChanged: onChanged, items: items)
          : Text(body, style: AppTextTheme.smallTextMediumBlack);
}
