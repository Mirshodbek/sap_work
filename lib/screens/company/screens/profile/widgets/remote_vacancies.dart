import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widget.dart';


class LoadingListVacanciesWidget extends StatelessWidget {
  const LoadingListVacanciesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(children: [
          for (int i = 0; i < 2; i++)
            Column(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ShimmerWidget.rectangular(
                    height: 18, width: MediaQuery.of(context).size.width / 3),
              ),
              for (int i = 0; i < 3; i++)
                Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ShimmerWidget.rectangular(height: 18)),
            ]),
        ]));
  }
}

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
            if (!_onClick.isEdit)
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
                              onTap: () => Future.sync(() => context
                                      .read<CoreProfileBloc>()
                                      .add(CoreProfileEvent.onSelect(
                                          title: item.name, id: item.id)))
                                  .whenComplete(() => context
                                      .read<VacancyCompanyBloc>()
                                      .add(const VacancyCompanyEvent.getVacancy()))
                                  .whenComplete(() => context.read<ProfileBtnCubit>().isSelect()),
                              title: Text(item.name, textAlign: TextAlign.center, style: AppTextTheme.smallTextMediumBlack.copyWith(color: _attributes.localVacancy.id == item.id ? AppColor.white : AppColor.black)));
                        });
                  },
                );
              }),
            if (_onClick.isEdit)
              ...vacanciesState.vacancies.map((item) {
                return TextField(
                    key: ObjectKey(item),
                    controller: TextEditingController(text: item.name),
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
}
