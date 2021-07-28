import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sap_work/bloc/company/company.dart';
import 'package:sap_work/bloc/user/profile_button/profile_user_btn_cubit.dart';
import 'package:sap_work/bloc/user/resume/resume_user_bloc.dart';
import 'package:sap_work/bloc/user/variable_resume/variable_resume_cubit.dart';
import 'package:sap_work/models/resume/resume.dart';
import 'package:sap_work/resources/small_widgets.dart';
import 'package:sap_work/resources/theme/text_theme.dart';
import 'package:sap_work/screens/company/profile/widgets/widget.dart';
import 'package:sap_work/screens/user/profile/widgets/resume_body_pieces.dart';

class ResumeBodyWidget extends StatelessWidget {
  final Resume resume;
  final List<Feature> categories;
  final List<Feature> spheres;

  const ResumeBodyWidget(
      {Key? key,
      required this.resume,
      required this.categories,
      required this.spheres})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileUserBtnCubit, ProfileUserBtnState>(
        builder: (context, state) {
      return state.map(onClick: (_click) {
        return BlocBuilder<VariableResumeCubit, VariableResumeState>(
            builder: (context, state) {
          return state.map(arguments: (_arguments) {
            return Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SmallWidgets.title(
                          title: "Описание резюме",
                          changeIcon: _click.isEditBody,
                          onPressed: () {
                            context.read<ProfileUserBtnCubit>().editBody();
                            if (_click.isEditBody) {
                              context.read<ResumeUserBloc>().add(
                                  ResumeUserEvent.editResume(
                                      sphere: resume.sphere_id,
                                      phone: resume.phone,
                                      email: resume.email,
                                      body: _arguments.body,
                                      category: resume.category_id,
                                      id: resume.id));
                            }
                          }),
                      const SizedBox(height: 20),
                      SmallWidgets.bodyText(
                          body: resume.body,
                          changeWidget: _click.isEditBody,
                          onChanged: (value) =>
                              context.read<VariableResumeCubit>().body(value)),
                      const SizedBox(height: 20),
                      SmallWidgets.title(
                          title: "Контакти",
                          changeIcon: _click.isEditContacts,
                          onPressed: () {
                            context.read<ProfileUserBtnCubit>().editContacts();
                            if (_click.isEditContacts) {
                              context.read<ResumeUserBloc>().add(
                                  ResumeUserEvent.editResume(
                                      sphere: resume.sphere_id,
                                      phone: _arguments.phone,
                                      email: _arguments.email,
                                      category: resume.category_id,
                                      id: resume.id));
                            }
                          }),
                      const SizedBox(height: 20),
                      if (!_click.isEditContacts)
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Почта: ${resume.email}",
                                  style: AppTextTheme.smallSizeText),
                              Text("Телефон: ${resume.phone}",
                                  style: AppTextTheme.smallSizeText),
                            ])
                      else
                        Column(children: [
                          Row(children: [
                            Expanded(
                                flex: 1,
                                child: Text("Почта: ",
                                    style: AppTextTheme.smallSizeText)),
                            Expanded(
                                flex: 4,
                                child: TextField(
                                  onSubmitted: (value) => context
                                      .read<VariableResumeCubit>()
                                      .email(value),
                                  controller: TextEditingController(
                                      text: _arguments.email.isNotEmpty
                                          ? _arguments.email
                                          : resume.email),
                                )),
                          ]),
                          Row(children: [
                            Expanded(
                                flex: 1,
                                child: Text("Телефон: ",
                                    style: AppTextTheme.smallSizeText)),
                            Expanded(
                                flex: 4,
                                child: TextField(
                                    onSubmitted: (value) => context
                                        .read<VariableResumeCubit>()
                                        .phone(Utils.getTelephone(value)),
                                    controller: TextEditingController(
                                        text: _arguments.phone.isNotEmpty
                                            ? _arguments.phone
                                            : resume.phone))),
                          ]),
                        ]),
                      const SizedBox(height: 20),
                      SmallWidgets.title(
                          title: "Навыки",
                          changeIcon: _click.isEditAbilities,
                          onPressed: () {
                            context.read<ProfileUserBtnCubit>().editAbilities();
                            if (_click.isEditAbilities) {
                              context.read<ResumeUserBloc>().add(
                                  ResumeUserEvent.editResume(
                                      sphere: resume.sphere_id,
                                      phone: resume.phone,
                                      email: resume.email,
                                      abilities: _arguments.abilities,
                                      category: resume.category_id,
                                      id: resume.id));
                            }
                          }),
                      const SizedBox(height: 20),
                      SmallWidgets.bodyText(
                          body: resume.abilities,
                          changeWidget: _click.isEditAbilities,
                          onChanged: (value) => context
                              .read<VariableResumeCubit>()
                              .abilities(value)),
                      const SizedBox(height: 20),
                      SmallWidgets.title(
                          title: "Город",
                          changeIcon: _click.isEditCity,
                          onPressed: () {
                            context.read<ProfileUserBtnCubit>().editCity();
                            if (_click.isEditCity) {
                              context.read<ResumeUserBloc>().add(
                                  ResumeUserEvent.editResume(
                                      sphere: resume.sphere_id,
                                      phone: resume.phone,
                                      email: resume.email,
                                      city: _arguments.city,
                                      category: resume.category_id,
                                      id: resume.id));
                            }
                          }),
                      const SizedBox(height: 20),
                      SmallWidgets.bodyDropDown(
                          onChanged: (value) =>
                              context.read<VariableResumeCubit>().city(value!),
                          body: resume.city,
                          title: "Город",
                          value: _arguments.city.isNotEmpty
                              ? _arguments.city
                              : null,
                          items: Lists.countryList
                              .map((item) => DropdownMenuItem<String>(
                                  value: item, child: Text(item)))
                              .toList(),
                          changeWidget: _click.isEditCity),
                      SmallWidgets.title(
                          title: "Профессиональная сфера",
                          onPressed: () {
                            context
                                .read<ProfileUserBtnCubit>()
                                .editCategories();
                            if (_click.isEditCategory &&
                                _arguments.categoryTitle.isNotEmpty) {
                              context.read<ResumeUserBloc>().add(
                                  ResumeUserEvent.editResume(
                                      sphere: resume.sphere_id,
                                      phone: resume.phone,
                                      email: resume.email,
                                      category: _arguments.categoryId,
                                      id: resume.id));
                            }
                          },
                          changeIcon: _click.isEditCategory),
                      const SizedBox(height: 10),
                      SmallWidgets.bodyDropDown(
                          onChanged: (value) => context
                              .read<VariableResumeCubit>()
                              .categoryTitle(value!),
                          body: categories
                              .singleWhere((it) => it.id == resume.category_id)
                              .name,
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
                          changeWidget: _click.isEditCategory),
                      const SizedBox(height: 10),
                      SmallWidgets.title(
                          title: "Сфера",
                          onPressed: () {
                            context.read<ProfileUserBtnCubit>().editSpheres();
                            if (_click.isEditSphere &&
                                _arguments.sphereTitle.isNotEmpty) {
                              context.read<ResumeUserBloc>().add(
                                  ResumeUserEvent.editResume(
                                      sphere: _arguments.sphereId,
                                      phone: resume.phone,
                                      email: resume.email,
                                      category: resume.category_id,
                                      id: resume.id));
                            }
                          },
                          changeIcon: _click.isEditSphere),
                      const SizedBox(height: 20),
                      SmallWidgets.bodyDropDown(
                          onChanged: (value) => context
                              .read<VariableResumeCubit>()
                              .sphereTitle(value!),
                          body: spheres
                              .singleWhere((it) => it.id == resume.sphere_id)
                              .name,
                          title: "Сфера",
                          value: _arguments.sphereTitle.isNotEmpty
                              ? _arguments.sphereTitle
                              : null,
                          items: spheres
                              .map((type) => DropdownMenuItem<String>(
                                  onTap: () => context
                                      .read<VariableResumeCubit>()
                                      .sphereId(type.id),
                                  value: type.name,
                                  child: Text(type.name)))
                              .toList(),
                          changeWidget: _click.isEditSphere),
                      const SizedBox(height: 20),
                      ResumeBodyStagesWidget(
                          resume: resume, arguments: _arguments),
                      const SizedBox(height: 20),
                      ResumeBodyGradesWidget(
                          resume: resume, arguments: _arguments),
                      const SizedBox(height: 20),
                    ]));
          });
        });
      });
    });
  }
}
