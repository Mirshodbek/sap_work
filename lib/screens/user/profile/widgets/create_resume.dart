import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sap_work/bloc/user/resume/resume_user_bloc.dart';
import 'package:sap_work/bloc/user/variable_resume/variable_resume_cubit.dart';
import 'package:sap_work/models/category/category.dart';
import 'package:sap_work/resources/icons.dart';
import 'package:sap_work/resources/small_widgets.dart';
import 'package:sap_work/resources/theme/text_theme.dart';
import 'package:sap_work/resources/validator.dart';
import 'package:sap_work/screens/authorization/authorization.dart';
import 'package:sap_work/screens/widgets/drop_down.dart';

class CreateResumeWidget extends StatelessWidget {
  final List<Category> categories;
  final String nameResume;

  const CreateResumeWidget(
      {Key? key, required this.categories, required this.nameResume})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VariableResumeCubit, VariableResumeState>(
        builder: (context, state) {
      return state.map(arguments: (_state) {
        return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(height: 20),
          Text("Добавление резюме", style: AppTextTheme.mediumTextBlack),
          const SizedBox(height: 20),
          Text("Контакты", style: AppTextTheme.smallTextMediumBlack),
          const SizedBox(height: 10),
          Row(children: [
            Expanded(
              flex: 1,
              child: Text("Почта: ", style: AppTextTheme.smallSizeText),
            ),
            const SizedBox(width: 10),
            Expanded(
                flex: 4,
                child: TextField(
                  onChanged: (value) =>
                      context.read<VariableResumeCubit>().email(value),
                  decoration: SmallWidgets.inputDecoration("info@mail.ru"),
                )),
          ]),
          const SizedBox(height: 10),
          Row(children: [
            Expanded(
              flex: 1,
              child: Text("Телефон: ", style: AppTextTheme.smallSizeText),
            ),
            const SizedBox(width: 10),
            Expanded(
                flex: 4,
                child: TextField(
                  onChanged: (value) => context
                      .read<VariableResumeCubit>()
                      .phone(Utils.getTelephone(value)),
                  keyboardType: TextInputType.phone,
                  inputFormatters: [Utils.mask],
                  decoration: SmallWidgets.inputDecoration("(919) 903-32-21")
                      .copyWith(prefixIcon: SmallWidgets.suffixText("+7")),
                )),
          ]),
          const SizedBox(height: 20),
          Text("Категория резюме", style: AppTextTheme.smallTextMediumBlack),
          const SizedBox(height: 10),
          DropDownWidget(
              value:
                  _state.categoryTitle.isNotEmpty ? _state.categoryTitle : null,
              title: "Профессиональная сфера",
              onChanged: (String? value) =>
                  context.read<VariableResumeCubit>().categoryTitle(value!),
              items: categories
                  .map((type) => DropdownMenuItem<String>(
                      onTap: () => context
                          .read<VariableResumeCubit>()
                          .categoryId(type.id),
                      value: type.name,
                      child: Text(type.name)))
                  .toList()),
          const SizedBox(height: 20),
          TextField(
              maxLines: 5,
              decoration: SmallWidgets.inputDecoration("Описание резюме"),
              onChanged: (value) =>
                  context.read<VariableResumeCubit>().body(value)),
          const SizedBox(height: 20),
          TextField(
              controller: TextEditingController(text: ""),
              onSubmitted: (value) =>
                  context.read<VariableResumeCubit>().addingTools(value),
              decoration: SmallWidgets.inputDecoration("Навыки и инструменты")),
          const SizedBox(height: 10),
          Wrap(
              children: _state.tools
                  .map((item) => Chip(
                      label: Text(item),
                      onDeleted: () => context
                          .read<VariableResumeCubit>()
                          .deletingTools(item)))
                  .toList()),
          const SizedBox(height: 20),
          DropDownWidget(
              value: _state.city.isNotEmpty
                  ? _state.city
                  : null,
              title: "Город",
              onChanged: (String? value) => context
                  .read<VariableResumeCubit>()
                  .city(value!),
              items: Lists.countryList
                  .map((item) => DropdownMenuItem<String>(
                  value: item, child: Text(item)))
                  .toList()),
          const SizedBox(height: 20),
          _Stages(listMap: _state.stages),
          const SizedBox(height: 20),
          _Grades(listMap: _state.grades),
          const SizedBox(height: 30),
          SizedBox(
              width: double.infinity,
              child: RedButtonWidget(
                  "Опубликовать резюме",
                  () => context.read<ResumeUserBloc>().add(
                      ResumeUserEvent.postResume(
                          body: _state.body,
                          abilities: _state.tools.join(", "),
                          name: nameResume,
                          phone: _state.phone,
                          city: _state.city,
                          email: _state.email,
                          category: _state.categoryId,
                          stages: _state.stages,
                          grades: _state.grades)),
                  true)),
        ]);
      });
    });
  }
}

class _Grades extends StatelessWidget {
  final List<Map<String, dynamic>> listMap;

  const _Grades({Key? key, required this.listMap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(listMap.length, (index) {
        return Column(children: [
          Row(children: [
            Text("Образование", style: AppTextTheme.smallTextMediumBlack),
            const SizedBox(width: 10),
            IconButton(
                onPressed: index == 0
                    ? () => context.read<VariableResumeCubit>().addingGrade()
                    : () => context
                        .read<VariableResumeCubit>()
                        .deletingGrade(index),
                icon: Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                  child: SvgPicture.asset(
                      index == 0 ? AppIcons.plus_black : AppIcons.trash),
                ))
          ]),
          const SizedBox(height: 10),
          TextField(
              onChanged: (value) => context
                  .read<VariableResumeCubit>()
                  .universityName(index, value),
              decoration: SmallWidgets.inputDecoration("Университеть")),
          const SizedBox(height: 10),
          TextField(
              onChanged: (value) => context
                  .read<VariableResumeCubit>()
                  .gradeUniversity(index, value),
              decoration: SmallWidgets.inputDecoration("Дипломь")),
          const SizedBox(height: 10),
          TextField(
              onChanged: (value) => context
                  .read<VariableResumeCubit>()
                  .periodUniversity(index, value),
              decoration: SmallWidgets.inputDecoration("Период")),
          const SizedBox(height: 10),
        ]);
      }),
    );
  }
}

class _Stages extends StatelessWidget {
  final List<Map<String, dynamic>> listMap;

  const _Stages({Key? key, required this.listMap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(listMap.length, (index) {
        return Column(
          children: [
            Row(children: [
              Text("Опыт работы", style: AppTextTheme.smallTextMediumBlack),
              const SizedBox(width: 10),
              IconButton(
                  onPressed: index == 0
                      ? () => context.read<VariableResumeCubit>().addingStage()
                      : () => context
                          .read<VariableResumeCubit>()
                          .deletingStage(index),
                  icon: Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),

                    child: SvgPicture.asset(
                        index == 0 ? AppIcons.plus_black : AppIcons.trash),
                  )),
            ]),
            const SizedBox(height: 10),
            TextField(
              onChanged: (value) =>
                  context.read<VariableResumeCubit>().companyName(index, value),
              decoration: SmallWidgets.inputDecoration("Компания"),
            ),
            const SizedBox(height: 10),
            TextField(
              onChanged: (value) => context
                  .read<VariableResumeCubit>()
                  .positionCompany(index, value),
              decoration: SmallWidgets.inputDecoration("Должность"),
            ),
            const SizedBox(height: 10),
            TextField(
              onChanged: (value) => context
                  .read<VariableResumeCubit>()
                  .periodCompany(index, value),
              decoration: SmallWidgets.inputDecoration("Период"),
            ),
            const SizedBox(height: 10),
            TextField(
              onChanged: (value) => context
                  .read<VariableResumeCubit>()
                  .descriptionCompany(index, value),
              maxLines: 5,
              decoration: SmallWidgets.inputDecoration("Описание"),
            ),
            const SizedBox(height: 20),
          ],
        );
      }),
    );
  }
}
