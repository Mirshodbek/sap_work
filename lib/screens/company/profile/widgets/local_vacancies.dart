import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'widget.dart';

class LocalVacanciesWidget extends StatefulWidget {
  final LoadedVacanciesCompanyState vacanciesState;

  const LocalVacanciesWidget({Key? key, required this.vacanciesState})
      : super(key: key);

  @override
  _LocalVacanciesWidgetState createState() => _LocalVacanciesWidgetState();
}

class _LocalVacanciesWidgetState extends State<LocalVacanciesWidget> {
  String nameVacancy = '';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCompanyBtnCubit, ProfileCompanyBtnState>(
        builder: (context, state) {
      return state.map(onClick: (_click) {
        return Column(children: [
          const SizedBox(height: 10),
          Text("Скрытые вакансии", style: AppTextTheme.smallTextMediumBlack),
          if (widget.vacanciesState.localVacanciesName.isEmpty)
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Пусто",
                    style: AppTextTheme.smallSizeText
                        .copyWith(color: AppColor.grey))),
          if (!_click.isEditNames)
            ...widget.vacanciesState.localVacanciesName.map((item) {
              return BlocBuilder<CoreProfileCompanyBloc,
                  CoreProfileCompanyState>(builder: (context, state) {
                return state.maybeMap(
                    orElse: () => const SizedBox.shrink(),
                    attributes: (_state) {
                      return ListTile(
                        horizontalTitleGap: 0,
                          trailing: IconButton(
                            onPressed: (){
                              context
                                  .read<VacanciesCompanyBloc>()
                                  .add(
                                  VacanciesCompanyEvent.addOrDeleteLocalVacancy(
                                      nameVacancy: item.name, delete: true));
                            },
                            icon: SvgPicture.asset(AppIcons.trash),
                          ),
                          selected: _state.vacancyId == item.id,
                          selectedTileColor: AppColor.red,
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 15),
                          onTap: () => _onTap(context, item.name, item.id),
                          title: Center(
                              child: Text(item.name,
                                  style: AppTextTheme.smallTextMediumBlack
                                      .copyWith(
                                          color: _state.vacancyId == item.id
                                              ? AppColor.white
                                              : AppColor.black))));
                    });
              });
            }),
          if (_click.isEditNames)
            ...widget.vacanciesState.localVacanciesName.map((item) {
              return TextField(
                  key: ObjectKey(item),
                  onSubmitted: (value) => context
                      .read<VacanciesCompanyBloc>()
                      .add(VacanciesCompanyEvent.editLocalName(
                          nameVacancy: value, id: item.id)),
                  controller: TextEditingController(text: item.name),
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      border:
                          const OutlineInputBorder(borderSide: BorderSide.none),
                      contentPadding:
                          const EdgeInsets.symmetric(vertical: 30.0)));
            }),
          if (!_click.isEditNames)
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(children: [
                if (_click.isExtraName)
                  TextField(
                      textAlign: TextAlign.center,
                      onChanged: (value) {
                        nameVacancy = value;
                      },
                      decoration: SmallWidgets.inputDecoration("Имя")),
                if (nameVacancy.isEmpty && _click.isExtraName)
                  Text("Вводите имя вакансии",
                      style: AppTextTheme.smallSizeText),
                TextButton.icon(
                    onPressed: () {
                      context.read<ProfileCompanyBtnCubit>().extraName();
                      if (_click.isExtraName && nameVacancy.isNotEmpty) {
                        context.read<VacanciesCompanyBloc>().add(
                            VacanciesCompanyEvent.addOrDeleteLocalVacancy(
                                delete: false, nameVacancy: nameVacancy));
                      }
                    },
                    icon: !_click.isExtraName
                        ? SvgPicture.asset(AppIcons.plus_black)
                        : const SizedBox.shrink(),
                    label: Text(
                        !_click.isExtraName
                            ? "Добавить вакансии"
                            : "Сохранить вакансии",
                        style: AppTextTheme.smallTextMediumBlack)),
              ]),
            ),
        ]);
      });
    });
  }

  Future<void> _onTap(BuildContext context, String name, int id) async {
    return Future.sync(() => context
            .read<CoreProfileCompanyBloc>()
            .add(CoreProfileCompanyEvent.onSelect(title: name, id: id)))
        .whenComplete(() {
      context
          .read<VacancyCompanyBloc>()
          .add(const VacancyCompanyEvent.getVacancy());
      context.read<ProfileCompanyBtnCubit>().selectVacancies();
    });
  }
}
