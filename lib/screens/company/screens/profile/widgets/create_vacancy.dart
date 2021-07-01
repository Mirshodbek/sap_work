import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:formz/formz.dart';
import 'package:sap_work/bloc/company/core/core_profile_bloc.dart';
import 'package:sap_work/bloc/company/vacancies/vacancies_company_bloc.dart';
import 'package:sap_work/bloc/company/vacancy/vacancy_company_bloc.dart';
import 'package:sap_work/bloc/company/variable_vacancy/variable_vacancy_cubit.dart';
import 'package:sap_work/models/category/category.dart';
import 'package:sap_work/screens/authorization/authorization.dart';

class CreateVacancyWidget extends StatelessWidget {
  final List<Category> categories;
  final String vacancyName;

  const CreateVacancyWidget(
      {Key? key, required this.categories, required this.vacancyName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<CoreProfileBloc, CoreProfileState>(
      listener: (context, state) {
        state.maybeMap(
            orElse: () => state,
            attributes: (_attributes) {
              if (_attributes.status == FormzStatus.submissionInProgress) {
                showDialog(
                    context: context,
                    builder: (context) =>
                        SimpleDialog(title: CircularProgressIndicator()));
              } else if (_attributes.status == FormzStatus.submissionSuccess) {
                Future.sync(() =>
                        context.read<VacancyCompanyBloc>().add(const VacancyCompanyEvent.getVacancy()))
                    .whenComplete(() => Future.sync(() => context
                            .read<VacanciesCompanyBloc>()
                            .add(VacanciesCompanyEvent.addOrDeleteLocalVacancy(
                                nameVacancy: vacancyName, delete: true)))
                        .whenComplete(() => Navigator.of(context).pop()));
              }
            });
      },
      child: BlocProvider<VariableVacancyCubit>(
        create: (context) => VariableVacancyCubit(),
        child: BlocBuilder<VariableVacancyCubit, VariableVacancyState>(
          builder: (context, state) {
            return state.map(arguments: (_state) {
              return Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20),
                        Text("Добавление вакансии",
                            style: AppTextTheme.mediumTextBlack),
                        const SizedBox(height: 20),
                        Text(
                            "Постарайтесь заполнить максимально подробно. Не забудьте указать зарплатную вилку, это увеличивает инетерес соискателей.",
                            style: AppTextTheme.smallTextMediumBlack),
                        const SizedBox(height: 40),
                        TextField(
                            decoration: _inputDecoration("Должность"),
                            onChanged: (value) => context
                                .read<VariableVacancyCubit>()
                                .grade(value)),
                        const SizedBox(height: 20),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              DropDownWidget(
                                  value: _state.categoryTitle.isNotEmpty
                                      ? _state.categoryTitle
                                      : null,
                                  title: "Профессиональная сфера",
                                  onChanged: (String? value) => context
                                      .read<VariableVacancyCubit>()
                                      .category(value!),
                                  items: categories.map((type) {
                                    return DropdownMenuItem<String>(
                                        onTap: () => context
                                            .read<VariableVacancyCubit>()
                                            .categoryId(type.id),
                                        value: type.name,
                                        child: Text(type.name));
                                  }).toList()),
                              const SizedBox(height: 20),
                              TextField(
                                  controller: TextEditingController(text: ""),
                                  onSubmitted: (value) => context
                                      .read<VariableVacancyCubit>()
                                      .addingTools(value),
                                  decoration:
                                      _inputDecoration("Навыки и инструменты")),
                              const SizedBox(height: 10),
                              Wrap(
                                children: _state.tools.map((item) {
                                  return Chip(
                                      label: Text(item),
                                      onDeleted: () => context
                                          .read<VariableVacancyCubit>()
                                          .deletingTools(item));
                                }).toList(),
                              ),
                              const SizedBox(height: 20),
                              DropDownWidget(
                                  value: _state.city.isNotEmpty
                                      ? _state.city
                                      : null,
                                  title: "Город",
                                  onChanged: (String? value) => context
                                      .read<VariableVacancyCubit>()
                                      .city(value!),
                                  items: Lists.countryList.map((item) {
                                    return DropdownMenuItem<String>(
                                        value: item, child: Text(item));
                                  }).toList()),
                              const SizedBox(height: 20),
                              TextField(
                                  maxLines: 5,
                                  decoration:
                                      _inputDecoration("Описание вакансии"),
                                  onChanged: (value) => context
                                      .read<VariableVacancyCubit>()
                                      .body(value)),
                              const SizedBox(height: 20),
                              Row(children: [
                                Expanded(
                                    child: TextField(
                                        keyboardType: TextInputType.number,
                                        inputFormatters: [Utils.money],
                                        onChanged: (value) => context
                                            .read<VariableVacancyCubit>()
                                            .minsalary(Utils.getMoney(value)),
                                        decoration: _inputDecoration("120 000")
                                            .copyWith(
                                                prefixIcon:
                                                    _suffixText("от")))),
                                const SizedBox(width: 10),
                                Expanded(
                                    child: TextField(
                                        keyboardType: TextInputType.number,
                                        inputFormatters: [Utils.money],
                                        onChanged: (value) => context
                                            .read<VariableVacancyCubit>()
                                            .maxsalary(Utils.getMoney(value)),
                                        decoration: _inputDecoration("150 000₽")
                                            .copyWith(
                                                prefixIcon:
                                                    _suffixText("до")))),
                              ]),
                              const SizedBox(height: 40),
                              Text("Занятость",
                                  style: AppTextTheme.smallTextMediumBlack),
                              const SizedBox(height: 20),
                              ...Lists.scheduleList.map((item) {
                                return ListTile(
                                    onTap: () => context
                                        .read<VariableVacancyCubit>()
                                        .schedule(item),
                                    leading: SvgPicture.asset(
                                        _state.schedule == item
                                            ? AppIcons.selected_circle
                                            : AppIcons.empty_circle),
                                    title: Text(item));
                              }),
                              const SizedBox(height: 40),
                              Text("Опыт работы",
                                  style: AppTextTheme.smallTextMediumBlack),
                              const SizedBox(height: 20),
                              ...Lists.skillList.map((item) {
                                return ListTile(
                                    onTap: () => context
                                        .read<VariableVacancyCubit>()
                                        .stage(item.title),
                                    leading: SvgPicture.asset(
                                        _state.stage == item.title
                                            ? AppIcons.selected_circle
                                            : AppIcons.empty_circle),
                                    title: Text(item.title));
                              }),
                              const SizedBox(height: 40),
                              Text("График работы",
                                  style: AppTextTheme.smallTextMediumBlack),
                              const SizedBox(height: 20),
                              ...Lists.typeList.map((item) {
                                return ListTile(
                                    onTap: () => context
                                        .read<VariableVacancyCubit>()
                                        .type(item),
                                    leading: SvgPicture.asset(
                                        _state.type == item
                                            ? AppIcons.selected_circle
                                            : AppIcons.empty_circle),
                                    title: Text(item));
                              }),
                              const SizedBox(height: 40),
                              RedButtonWidget(
                                  "Опубликовать вакансию",
                                  () => context.read<CoreProfileBloc>().add(
                                      CoreProfileEvent.postVacancy(
                                          vacancyName: vacancyName,
                                          city: _state.city,
                                          body: _state.body,
                                          grade: _state.grade,
                                          minsalary: _state.minsalary,
                                          maxsalary: _state.maxsalary,
                                          type: _state.type,
                                          stage: _state.stage,
                                          schedule: _state.schedule,
                                          abilities: _state.tools.join(", "),
                                          categoryId: _state.categoryId)),
                                  true),
                            ]),
                      ]));
            });
          },
        ),
      ),
    );
  }

  Widget _suffixText(String title) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
        child: Text(title, style: AppTextTheme.smallTextMediumBlack));
  }

  InputDecoration _inputDecoration(String hintText) {
    return InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
            borderSide: const BorderSide(),
            borderRadius: BorderRadius.circular(5.0)));
  }
}
