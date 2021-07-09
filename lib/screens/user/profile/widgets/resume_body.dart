import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sap_work/bloc/company/company.dart';
import 'package:sap_work/bloc/user/profile_button/profile_user_btn_cubit.dart';
import 'package:sap_work/bloc/user/resume/resume_user_bloc.dart';
import 'package:sap_work/bloc/user/variable_resume/variable_resume_cubit.dart';
import 'package:sap_work/models/resume/resume.dart';
import 'package:sap_work/resources/small_widgets.dart';
import 'package:sap_work/resources/theme/text_theme.dart';
import 'package:sap_work/screens/company/profile/widgets/widget.dart';
import 'package:sap_work/screens/user/profile/widgets/resume_body_pieces.dart';
import 'package:sap_work/screens/user/profile/widgets/video.dart';

class ResumeBodyWidget extends StatelessWidget {
  final Resume resume;
  final List<Category> categories;

  const ResumeBodyWidget(
      {Key? key, required this.resume, required this.categories})
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
                      const SizedBox(height: 20),
                      ResumeBodyStagesWidget(
                          resume: resume, arguments: _arguments),
                      const SizedBox(height: 20),
                      ResumeBodyGradesWidget(
                          resume: resume, arguments: _arguments),
                      const SizedBox(height: 20),
                      VideoControllerWidget(),
                    ]));
          });
        });
      });
    });
  }
}
