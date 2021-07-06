import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sap_work/bloc/company/feedbacks/feedbacks_vacancy_bloc.dart';
import 'widget.dart';

class RemotedVacanciesWidget extends StatelessWidget {
  final LoadedVacanciesCompanyState vacanciesState;

  const RemotedVacanciesWidget({Key? key, required this.vacanciesState})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBtnCubit, ProfileBtnState>(
      builder: (context, state) {
        return state.map(onClick: (_onClick) {
          return Column(children: [
            Text("Опубликование вакансии",
                style: AppTextTheme.smallTextMediumBlack),
            if (vacanciesState.vacancies.isEmpty)
              Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Пусто",
                      style: AppTextTheme.smallSizeText
                          .copyWith(color: AppColor.grey))),
            if (!_onClick.isEditNames)
              ...vacanciesState.vacancies.map((item) {
                return BlocBuilder<CoreProfileBloc, CoreProfileState>(
                  builder: (context, state) {
                    return state.maybeMap(
                        orElse: () => const SizedBox.shrink(),
                        attributes: (_attributes) {
                          return ListTile(
                              selected: _attributes.localVacancy.id == item.id,
                              selectedTileColor: AppColor.red,
                              contentPadding:
                                  const EdgeInsets.symmetric(vertical: 15.0),
                              onTap: () => _onTap(context, item.name, item.id),
                              title: Text(item.name,
                                  textAlign: TextAlign.center,
                                  style: AppTextTheme.smallTextMediumBlack
                                      .copyWith(
                                          color: _attributes.localVacancy.id ==
                                                  item.id
                                              ? AppColor.white
                                              : AppColor.black)));
                        });
                  },
                );
              }),
            if (_onClick.isEditNames)
              ...vacanciesState.vacancies.map((item) {
                return TextField(
                    key: ObjectKey(item),
                    controller: TextEditingController(text: item.name),
                    onSubmitted: (value) => context
                        .read<VacanciesCompanyBloc>()
                        .add(VacanciesCompanyEvent.editRemotedName(
                            category: item.category.id,
                            id: item.id,
                            vacancyName: value)),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 30.0)));
              }),
          ]);
        });
      },
    );
  }

  Future<void> _onTap(BuildContext context, String name, int id) async {
    return Future.sync(() => context
        .read<CoreProfileBloc>()
        .add(CoreProfileEvent.onSelect(title: name, id: id))).whenComplete(() {
      context
          .read<VacancyCompanyBloc>()
          .add(const VacancyCompanyEvent.getVacancy());
      context
          .read<FeedbacksVacancyBloc>()
          .add(const FeedbacksVacancyEvent.getFeedbacks());
      context.read<ProfileBtnCubit>().selectVacancies();
    });
  }
}
