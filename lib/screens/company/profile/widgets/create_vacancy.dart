import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widget.dart';

class CreateVacancyWidget extends StatelessWidget {
  final List<Feature> categories;
  final List<Feature> spheres;
  final String vacancyName;

  const CreateVacancyWidget(
      {Key? key,
      required this.categories,
      required this.vacancyName,
      required this.spheres})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VariableVacancyCubit, VariableVacancyState>(
        builder: (context, state) {
      return state.map(arguments: (_state) {
        return Padding(
            padding: const EdgeInsets.all(18.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(height: 20),
              Text("Добавление вакансии", style: AppTextTheme.mediumTextBlack),
              const SizedBox(height: 20),
              Text(
                  "Постарайтесь заполнить максимально подробно. Не забудьте указать зарплатную вилку, это увеличивает инетерес соискателей.",
                  style: AppTextTheme.smallTextMediumBlack),
              const SizedBox(height: 40),
              TextField(
                  decoration: SmallWidgets.inputDecoration("Должность"),
                  onChanged: (value) =>
                      context.read<VariableVacancyCubit>().grade(value)),
              const SizedBox(height: 20),
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
                DropDownWidget(
                    value: _state.categoryTitle.isNotEmpty
                        ? _state.categoryTitle
                        : null,
                    title: "Профессиональная сфера",
                    onChanged: (String? value) =>
                        context.read<VariableVacancyCubit>().category(value!),
                    items: categories
                        .map((type) => DropdownMenuItem<String>(
                            onTap: () => context
                                .read<VariableVacancyCubit>()
                                .categoryId(type.id),
                            value: type.name,
                            child: Text(type.name)))
                        .toList()),
                const SizedBox(height: 20),
                DropDownWidget(
                    value: _state.sphereTitle.isNotEmpty
                        ? _state.sphereTitle
                        : null,
                    title: "сфера",
                    onChanged: (String? value) =>
                        context.read<VariableVacancyCubit>().sphere(value!),
                    items: spheres
                        .map((type) => DropdownMenuItem<String>(
                            onTap: () => context
                                .read<VariableVacancyCubit>()
                                .sphereId(type.id),
                            value: type.name,
                            child: Text(type.name)))
                        .toList()),
                const SizedBox(height: 20),
                TextField(
                    controller: TextEditingController(text: ""),
                    onSubmitted: (value) =>
                        context.read<VariableVacancyCubit>().addingTools(value),
                    decoration:
                        SmallWidgets.inputDecoration("Навыки и инструменты")),
                const SizedBox(height: 10),
                Wrap(
                    children: _state.tools
                        .map((item) => Chip(
                            label: Text(item),
                            onDeleted: () => context
                                .read<VariableVacancyCubit>()
                                .deletingTools(item)))
                        .toList()),
                const SizedBox(height: 20),
                DropDownWidget(
                    value: _state.city.isNotEmpty ? _state.city : null,
                    title: "Город",
                    onChanged: (String? value) =>
                        context.read<VariableVacancyCubit>().city(value!),
                    items: Lists.countryList
                        .map((item) => DropdownMenuItem<String>(
                            value: item, child: Text(item)))
                        .toList()),
                const SizedBox(height: 20),
                TextField(
                    maxLines: 5,
                    decoration:
                        SmallWidgets.inputDecoration("Описание вакансии"),
                    onChanged: (value) =>
                        context.read<VariableVacancyCubit>().body(value)),
                const SizedBox(height: 20),
                Row(children: [
                  Expanded(
                      child: TextField(
                          keyboardType: TextInputType.number,
                          inputFormatters: [Utils.money],
                          onChanged: (value) => context
                              .read<VariableVacancyCubit>()
                              .minsalary(Utils.getMoney(value)),
                          decoration: SmallWidgets.inputDecoration("120 000")
                              .copyWith(
                                  prefixIcon: SmallWidgets.suffixText("от")))),
                  const SizedBox(width: 10),
                  Expanded(
                      child: TextField(
                          keyboardType: TextInputType.number,
                          inputFormatters: [Utils.money],
                          onChanged: (value) => context
                              .read<VariableVacancyCubit>()
                              .maxsalary(Utils.getMoney(value)),
                          decoration: SmallWidgets.inputDecoration("150 000₽")
                              .copyWith(
                                  prefixIcon: SmallWidgets.suffixText("до")))),
                ]),
                const SizedBox(height: 40),
                Text("Занятость", style: AppTextTheme.smallTextMediumBlack),
                const SizedBox(height: 20),
                ...SmallWidgets.buildList(
                    onTap: (item) =>
                        context.read<VariableVacancyCubit>().schedule(item),
                    title: _state.schedule,
                    list: Lists.scheduleList),
                const SizedBox(height: 40),
                Text("Опыт работы", style: AppTextTheme.smallTextMediumBlack),
                const SizedBox(height: 20),
                ...SmallWidgets.buildList(
                    onTap: (item) =>
                        context.read<VariableVacancyCubit>().stage(item),
                    title: _state.stage,
                    list: Lists.stageList),
                const SizedBox(height: 40),
                Text("График работы", style: AppTextTheme.smallTextMediumBlack),
                const SizedBox(height: 20),
                ...SmallWidgets.buildList(
                    onTap: (item) =>
                        context.read<VariableVacancyCubit>().type(item),
                    title: _state.type,
                    list: Lists.typeList),
                const SizedBox(height: 40),
                RedButtonWidget(
                    "Опубликовать вакансию",
                    () => context.read<VacancyCompanyBloc>().add(
                        VacancyCompanyEvent.postVacancy(
                            sphereId: _state.sphereId,
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
    });
  }
}
