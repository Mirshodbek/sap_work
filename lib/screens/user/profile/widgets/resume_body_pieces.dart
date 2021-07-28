import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sap_work/bloc/user/resume/resume_user_bloc.dart';
import 'package:sap_work/bloc/user/variable_resume/variable_resume_cubit.dart';
import 'package:sap_work/models/resume/resume.dart';
import 'package:sap_work/resources/constants.dart';
import 'package:sap_work/resources/icons.dart';
import 'package:sap_work/resources/small_widgets.dart';
import 'package:sap_work/resources/theme/text_theme.dart';

class ResumeBodyStagesWidget extends StatelessWidget {
  final Resume resume;
  final ArgumentsVariableResumeState arguments;

  const ResumeBodyStagesWidget(
      {Key? key, required this.resume, required this.arguments})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ...List.generate(resume.stages!.length, (index) {
        final stages = resume.stages![index];
        return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(children: [
            Expanded(
              child:
                  Text("Опыт работы", style: AppTextTheme.smallTextMediumBlack),
            ),
            if (index > 0)
              IconButton(
                  onPressed: () => context.read<ResumeUserBloc>().add(
                      ResumeUserEvent.deleteExtraBlocks(
                          typeBlock: STAGES,
                          resumeId: resume.id,
                          stageId: stages.id)),
                  icon: Container(
                    decoration: BoxDecoration(border: Border.all()),
                    child: SvgPicture.asset(AppIcons.trash),
                  ))
            else if (index != arguments.indexStages)
              IconButton(
                  onPressed: () =>
                      context.read<VariableResumeCubit>().addingStage(),
                  icon: Container(
                    decoration: BoxDecoration(border: Border.all()),
                    child: SvgPicture.asset(AppIcons.plus_black),
                  )),
            if (index != arguments.indexStages)
              IconButton(
                  onPressed: () =>
                      context.read<VariableResumeCubit>().indexStages(index),
                  icon: Container(
                    decoration: BoxDecoration(border: Border.all()),
                    child: SvgPicture.asset(AppIcons.edit),
                  ))
            else
              IconButton(
                  onPressed: () {
                    context.read<VariableResumeCubit>().indexStages(-1);
                    if (arguments.companyName.isNotEmpty &&
                        arguments.periodCompany.isNotEmpty &&
                        arguments.positionCompany.isNotEmpty &&
                        arguments.descriptionCompany.isNotEmpty) {
                      context.read<ResumeUserBloc>().add(
                          ResumeUserEvent.changeExtraBlocks(
                              toMap: arguments.stages.first,
                              typeBlock: STAGES,
                              stageId: stages.id,
                              resumeId: resume.id));
                    }
                  },
                  icon: Container(
                      decoration: BoxDecoration(border: Border.all()),
                      child: SvgPicture.asset(AppIcons.save))),
          ]),
          const SizedBox(height: 10),
          if (index != arguments.indexStages)
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(stages.company_name, style: AppTextTheme.smallSizeText),
              const SizedBox(height: 10),
              Text(stages.position, style: AppTextTheme.smallSizeText),
              const SizedBox(height: 10),
              Text(stages.period, style: AppTextTheme.smallSizeText),
              const SizedBox(height: 10),
              Text(stages.description, style: AppTextTheme.smallSizeText),
              const SizedBox(height: 10),
            ])
          else
            Column(children: [
              const SizedBox(height: 10),
              TextField(
                  onChanged: (value) {
                    context.read<VariableResumeCubit>().companyName(0, value);
                  },
                  decoration: SmallWidgets.inputDecoration("Компания")),
              const SizedBox(height: 10),
              TextField(
                  onChanged: (value) => context
                      .read<VariableResumeCubit>()
                      .positionCompany(0, value),
                  decoration: SmallWidgets.inputDecoration("Должность")),
              const SizedBox(height: 10),
              TextField(
                  onChanged: (value) => context
                      .read<VariableResumeCubit>()
                      .periodCompany(0, value),
                  decoration: SmallWidgets.inputDecoration("Период")),
              const SizedBox(height: 10),
              TextField(
                  onChanged: (value) => context
                      .read<VariableResumeCubit>()
                      .descriptionCompany(0, value),
                  maxLines: 5,
                  decoration: SmallWidgets.inputDecoration("Описание")),
              const SizedBox(height: 20),
            ])
        ]);
      }),
      ...List.generate(arguments.stages.length - 1, (index) {
        return Column(children: [
          const SizedBox(height: 10),
          Row(children: [
            Expanded(
                child: Text("Опыт работы",
                    style: AppTextTheme.smallTextMediumBlack)),
            IconButton(
                onPressed: () {
                  context.read<VariableResumeCubit>().deletingStage(index);
                  context.read<ResumeUserBloc>().add(
                      ResumeUserEvent.addExtraBlocks(
                          typeBlock: STAGES,
                          id: resume.id,
                          toMaps: arguments.stages
                              .take(arguments.stages.length - 1)
                              .toList()));
                },
                icon: Container(
                    decoration: BoxDecoration(border: Border.all()),
                    child: SvgPicture.asset(AppIcons.save))),
            IconButton(
                onPressed: () =>
                    context.read<VariableResumeCubit>().deletingStage(index),
                icon: Container(
                    decoration: BoxDecoration(border: Border.all()),
                    child: SvgPicture.asset(AppIcons.trash))),
          ]),
          const SizedBox(height: 10),
          TextField(
              onChanged: (value) =>
                  context.read<VariableResumeCubit>().companyName(index, value),
              decoration: SmallWidgets.inputDecoration("Компания")),
          const SizedBox(height: 10),
          TextField(
              onChanged: (value) => context
                  .read<VariableResumeCubit>()
                  .positionCompany(index, value),
              decoration: SmallWidgets.inputDecoration("Должность")),
          const SizedBox(height: 10),
          TextField(
              onChanged: (value) => context
                  .read<VariableResumeCubit>()
                  .periodCompany(index, value),
              decoration: SmallWidgets.inputDecoration("Период")),
          const SizedBox(height: 10),
          TextField(
              onChanged: (value) => context
                  .read<VariableResumeCubit>()
                  .descriptionCompany(index, value),
              maxLines: 5,
              decoration: SmallWidgets.inputDecoration("Описание")),
          const SizedBox(height: 20),
        ]);
      })
    ]);
  }
}

class ResumeBodyGradesWidget extends StatelessWidget {
  final Resume resume;
  final ArgumentsVariableResumeState arguments;

  const ResumeBodyGradesWidget(
      {Key? key, required this.resume, required this.arguments})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ...List.generate(resume.grades!.length, (index) {
        final grades = resume.grades![index];
        return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(children: [
            Expanded(
              child:
                  Text("Образование", style: AppTextTheme.smallTextMediumBlack),
            ),
            if (index > 0)
              IconButton(
                  onPressed: () => context.read<ResumeUserBloc>().add(
                      ResumeUserEvent.deleteExtraBlocks(
                          typeBlock: GRADES,
                          resumeId: resume.id,
                          gradeId: grades.id)),
                  icon: Container(
                    decoration: BoxDecoration(border: Border.all()),
                    child: SvgPicture.asset(AppIcons.trash),
                  ))
            else if (index != arguments.indexGrades)
              IconButton(
                  onPressed: () =>
                      context.read<VariableResumeCubit>().addingGrade(),
                  icon: Container(
                    decoration: BoxDecoration(border: Border.all()),
                    child: SvgPicture.asset(AppIcons.plus_black),
                  )),
            if (index != arguments.indexGrades)
              IconButton(
                  onPressed: () =>
                      context.read<VariableResumeCubit>().indexGrades(index),
                  icon: Container(
                    decoration: BoxDecoration(border: Border.all()),
                    child: SvgPicture.asset(AppIcons.edit),
                  ))
            else
              IconButton(
                  onPressed: () {
                    context.read<VariableResumeCubit>().indexGrades(-1);
                    if (arguments.universityName.isNotEmpty &&
                        arguments.gradeUniversity.isNotEmpty &&
                        arguments.periodUniversity.isNotEmpty) {
                      context.read<ResumeUserBloc>().add(
                          ResumeUserEvent.changeExtraBlocks(
                              toMap: arguments.grades.first,
                              typeBlock: GRADES,
                              gradeId: grades.id,
                              resumeId: resume.id));
                    }
                  },
                  icon: Container(
                      decoration: BoxDecoration(border: Border.all()),
                      child: SvgPicture.asset(AppIcons.save))),
          ]),
          const SizedBox(height: 10),
          if (index != arguments.indexGrades)
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(grades.university_name, style: AppTextTheme.smallSizeText),
              const SizedBox(height: 10),
              Text(grades.grade, style: AppTextTheme.smallSizeText),
              const SizedBox(height: 10),
              Text(grades.period, style: AppTextTheme.smallSizeText),
              const SizedBox(height: 10),
            ])
          else
            Column(children: [
              const SizedBox(height: 10),
              TextField(
                  onChanged: (value) {
                    context
                        .read<VariableResumeCubit>()
                        .universityName(0, value);
                  },
                  decoration: SmallWidgets.inputDecoration("Университет")),
              const SizedBox(height: 10),
              TextField(
                  onChanged: (value) => context
                      .read<VariableResumeCubit>()
                      .gradeUniversity(0, value),
                  decoration: SmallWidgets.inputDecoration("Диплом")),
              const SizedBox(height: 10),
              TextField(
                  onChanged: (value) => context
                      .read<VariableResumeCubit>()
                      .periodUniversity(0, value),
                  decoration: SmallWidgets.inputDecoration("Период")),
            ])
        ]);
      }),
      ...List.generate(arguments.grades.length - 1, (index) {
        return Column(children: [
          const SizedBox(height: 10),
          Row(children: [
            Expanded(
                child: Text("Образование",
                    style: AppTextTheme.smallTextMediumBlack)),
            IconButton(
                onPressed: () {
                  context.read<VariableResumeCubit>().deletingGrade(index);
                  context.read<ResumeUserBloc>().add(
                      ResumeUserEvent.addExtraBlocks(
                          id: resume.id,
                          typeBlock: GRADES,
                          toMaps: arguments.grades
                              .take(arguments.grades.length - 1)
                              .toList()));
                },
                icon: Container(
                    decoration: BoxDecoration(border: Border.all()),
                    child: SvgPicture.asset(AppIcons.save))),
            IconButton(
                onPressed: () =>
                    context.read<VariableResumeCubit>().deletingGrade(index),
                icon: Container(
                    decoration: BoxDecoration(border: Border.all()),
                    child: SvgPicture.asset(AppIcons.trash))),
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
          const SizedBox(height: 20),
        ]);
      })
    ]);
  }
}
