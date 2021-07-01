import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'widget.dart';

class LocalVacanciesWidget extends StatefulWidget {
  final LoadedVacanciesCompanyState vacanciesState;

  const LocalVacanciesWidget({Key? key, required this.vacanciesState}) : super(key: key);

  @override
  _LocalVacanciesWidgetState createState() => _LocalVacanciesWidgetState();
}

class _LocalVacanciesWidgetState extends State<LocalVacanciesWidget> {
  String nameVacancy = '';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBtnCubit, ProfileBtnState>(
      builder: (context, state) {
        return state.map(onClick: (_click) {
          return Column(children: [
            const SizedBox(height: 10),
            Text("Неопубликование вакансии",
                style: AppTextTheme.smallTextMediumBlack),
            if (widget.vacanciesState.localVacanciesName.isEmpty)
              Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Пусто",
                      style: AppTextTheme.smallSizeText
                          .copyWith(color: AppColor.grey))),
            if (!_click.isEdit)
              ...widget.vacanciesState.localVacanciesName.map((item) {
                return BlocBuilder<CoreProfileBloc, CoreProfileState>(
                  builder: (context, state) {
                    return state.maybeMap(
                        orElse: () => const SizedBox.shrink(),
                        attributes: (_state) {
                          return Dismissible(
                              key: ObjectKey(item),
                              onDismissed: (left) =>
                                  context
                                      .read<VacanciesCompanyBloc>()
                                      .add(VacanciesCompanyEvent
                                      .addOrDeleteLocalVacancy(
                                      nameVacancy: item.name, delete: true)),
                              child: ListTile(
                                  selected: _state.vacancyId == item.id,
                                  selectedTileColor: AppColor.red,
                                  contentPadding:
                                  const EdgeInsets.symmetric(vertical: 15),
                                  onTap: () =>
                                      Future.sync(() =>
                                          context
                                              .read<CoreProfileBloc>()
                                              .add(
                                              CoreProfileEvent.onSelect(
                                                  title: item.name,
                                                  id: item.id)))
                                          .whenComplete(() =>
                                          context
                                              .read<VacancyCompanyBloc>()
                                              .add(
                                              const VacancyCompanyEvent
                                                  .getVacancy()))
                                          .whenComplete(() =>
                                          context.read<ProfileBtnCubit>()
                                              .isSelect()),
                                  title: Center(child: Text(item.name,
                                      style: AppTextTheme.smallTextMediumBlack
                                          .copyWith(
                                          color: _state.vacancyId == item.id
                                              ? AppColor.white
                                              : AppColor.black))))
                          );
                        });
                  },
                );
              }),
            if (_click.isEdit)
              ...widget.vacanciesState.localVacanciesName.map((item) {
                return TextField(
                    key: ObjectKey(item),
                    onSubmitted: (value) =>
                        context
                            .read<VacanciesCompanyBloc>()
                            .add(VacanciesCompanyEvent.editLocalName(
                            nameVacancy: value, id: item.id)),
                    controller: TextEditingController(text: item.name),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(
                            borderSide: BorderSide.none),
                        contentPadding:
                        const EdgeInsets.symmetric(vertical: 30.0)));
              }),
            if (!_click.isEdit)
              Column(children: [
                if (_click.isExtra)
                  TextField(onChanged: (value) {
                    nameVacancy = value;
                  }),
                if (nameVacancy.isEmpty && _click.isExtra)
                  Text("Вводите имя вакансии",
                      style: AppTextTheme.smallSizeText),
                TextButton.icon(
                    onPressed: () {
                      context.read<ProfileBtnCubit>().isExtra();
                      if (_click.isExtra && nameVacancy.isNotEmpty) {
                        context.read<VacanciesCompanyBloc>().add(
                            VacanciesCompanyEvent.addOrDeleteLocalVacancy(
                                delete: false, nameVacancy: nameVacancy));
                      }
                    },
                    icon: !_click.isExtra
                        ? SvgPicture.asset(AppIcons.plus_black)
                        : const SizedBox.shrink(),
                    label: Text(
                        !_click.isExtra
                            ? "Добавить вакансии"
                            : "Сохранить вакансии",
                        style: AppTextTheme.smallTextMediumBlack)),
              ]),
          ]);
        });
      },
    );
  }
}
