import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sap_work/bloc/variable_filter/variable_filter_cubit.dart';
import 'package:sap_work/resources/icons.dart';
import 'package:sap_work/resources/lists.dart';
import 'package:sap_work/resources/theme/color_theme.dart';
import 'package:sap_work/resources/theme/text_theme.dart';

class EmploymentTypeWidget extends StatelessWidget {
  final String? employmentType;
  final Function(String? value) onChanged;

  EmploymentTypeWidget(this.employmentType, this.onChanged);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: DropdownButton(
        value: employmentType!.isNotEmpty ? employmentType : null,
        hint: Text(
          "График работы",
          style: AppTextTheme.smallTextBlack,
        ),
        style: AppTextTheme.smallTextBlack,
        underline: SizedBox.shrink(),
        icon: SvgPicture.asset(
          AppIcons.down_arrow,
          color: AppColor.black,
          height: 36.0,
        ),
        isExpanded: true,
        onChanged: onChanged,
        items: Lists.typeList.map((type) {
          return DropdownMenuItem<String>(
            value: type,
            child: Text(type),
          );
        }).toList(),
      ),
    );
  }
}

class ExpansionWidget extends StatelessWidget {
  final String title;

  ExpansionWidget(this.title);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), border: Border.all()),
        child: ExpansionTile(
          key: PageStorageKey("Опыт работы"),
          title: Text(
            "Опыт работы",
            style: AppTextTheme.smallTextBlack,
          ),
          children: Lists.stageList.map((checkBox) {
            return ListTile(
              onTap: () =>
                  context.read<VariableFilterCubit>().stage(checkBox),
              leading: SvgPicture.asset(title == checkBox
                  ? AppIcons.selected_circle
                  : AppIcons.empty_circle),
              title: Text(
                checkBox,
                style: AppTextTheme.smallTextBlack,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class FilterButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const FilterButton(this.title, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        alignment: Alignment.centerLeft,
        padding: MaterialStateProperty.all(
          EdgeInsets.symmetric(vertical: 14.0, horizontal: 12.0),
        ),
        side: MaterialStateProperty.all(BorderSide()),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
      ),
      child: Text(
        title.isNotEmpty?title:"Город",
        style: AppTextTheme.smallTextBlack,
      ),
    );
  }
}
