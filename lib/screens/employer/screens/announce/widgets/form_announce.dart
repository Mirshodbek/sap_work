import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../employer.dart';

class FormAnnounce extends StatelessWidget {
  final AnnounceEState state;

  const FormAnnounce(this.state, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return state.map(
      loading: (_) => Container(),
      loaded: (_data) {
        final cubit = context.select((AnnounceECubit cubit) => cubit);
        return Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Добавление вакансии",
                style: AppTextTheme.mediumTextBlack,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Постарайтесь заполнить максимально подробно. Не забудьте указать зарплатную вилку, это увеличивает инетерес соискателей.",
                style: AppTextTheme.smallTextMediumBlack,
              ),
              _TextFieldForm(_data.tools, cubit),
              _Country(_data.country),
              const SizedBox(
                height: 20.0,
              ),
              TextField(
                controller: cubit.description,
                maxLines: 5,
                decoration: DecorationTextField.decoration("Описание вакансии"),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: cubit.fromMoney,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: DecorationTextField.decoration("").copyWith(
                        prefixText: "От ",
                        suffixText: "₸",
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: TextField(
                      controller: cubit.toMoney,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: DecorationTextField.decoration("").copyWith(
                        prefixText: "До",
                        suffixText: "₸",
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Занятость",
                style: AppTextTheme.smallTextMediumBlack,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Column(
                children: _data.employmentTypes.map(
                  (type) {
                    return ListTile(
                      onTap: () => BlocProvider.of<AnnounceECubit>(context)
                          .selectEmploymentType(type),
                      leading: SvgPicture.asset(
                        _data.title == type
                            ? AppIcons.selected_circle
                            : AppIcons.empty_circle,
                      ),
                      title: Text(type),
                    );
                  },
                ).toList(),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Опыт работы",
                style: AppTextTheme.smallTextMediumBlack,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Column(
                children: _data.skills.map(
                  (skill) {
                    return ListTile(
                      onTap: () => BlocProvider.of<AnnounceECubit>(context)
                          .setSkill(skill.title),
                      leading: SvgPicture.asset(
                        _data.skill == skill.title
                            ? AppIcons.selected_circle
                            : AppIcons.empty_circle,
                      ),
                      title: Text(skill.title),
                    );
                  },
                ).toList(),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () {
                  BlocProvider.of<AnnounceECubit>(context).publishAnnounce();
                },
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.all(12.0)),
                  backgroundColor: MaterialStateProperty.all(AppColor.red),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                  ),
                ),
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "Опубликовать вакансию",
                    style: AppTextTheme.smallTextWhite,
                  ),
                ),
              ),
              const SizedBox(
                height: 250.0,
              ),
            ],
          ),
        );
      },
    );
  }
}

class _TextFieldForm extends StatelessWidget {
  final _toolController = TextEditingController();
  final AnnounceECubit cubit;

  _TextFieldForm(this.tools, this.cubit);

  final List<String> tools;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20.0,
        ),
        TextField(
          controller: cubit.titleAnnounce,
          decoration: DecorationTextField.decoration("Должность"),
        ),
        const SizedBox(
          height: 20.0,
        ),
        TextField(
          controller: _toolController,
          onSubmitted: (value) {
            BlocProvider.of<AnnounceECubit>(context).addTools(value);
            _toolController.clear();
          },
          decoration: DecorationTextField.decoration("Навыки и инструменты"),
        ),
        Wrap(
          children: tools.map((tool) {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: Chip(
                deleteIcon: SvgPicture.asset(AppIcons.clear),
                onDeleted: () =>
                    BlocProvider.of<AnnounceECubit>(context).deleteTools(tool),
                shape: StadiumBorder(),
                side: BorderSide(),
                backgroundColor: Colors.transparent,
                label: Text(
                  tool,
                  style: AppTextTheme.smallTextMediumBlack,
                ),
              ),
            );
          }).toList(),
        ),
        const SizedBox(
          height: 20.0,
        ),
      ],
    );
  }
}

class _Country extends StatelessWidget {
  const _Country(this.country);

  final String country;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: DropdownButton(
        value: country.isNotEmpty ? country : null,
        underline: SizedBox.shrink(),
        icon: SvgPicture.asset(
          AppIcons.down_arrow,
          color: AppColor.black,
          height: 36.0,
        ),
        hint: Text("Город"),
        onChanged: (String? value) =>
            BlocProvider.of<AnnounceECubit>(context).setCountry(value!),
        isExpanded: true,
        items: Lists.countryList.map(
          (country) {
            return DropdownMenuItem(
              value: country,
              child: Text(country),
            );
          },
        ).toList(),
      ),
    );
  }
}
