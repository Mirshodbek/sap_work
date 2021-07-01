import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../hunter.dart';

class EmploymentTypeWidget extends StatelessWidget {
  final String? employmentType;
  final Function(String? value) onChanged;

  EmploymentTypeWidget(this.employmentType,this.onChanged);

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
        items: Lists.scheduleList.map((type) {
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
  final List<StageList> checkBoxState;

  const ExpansionWidget(this.checkBoxState);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        key: PageStorageKey("Опыт работы"),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Опыт работы",
              style: AppTextTheme.smallTextBlack,
            ),
            Divider(
              color: AppColor.black,
              thickness: 1.0,
            ),
          ],
        ),
        children: checkBoxState.map((checkBox) {
          return ListTile(
            onTap: () => context
                .read<FilterBloc>()
                .add(FilterEvent.toggleCheckbox(title: checkBox.title)),
            leading: Checkbox(
              value: checkBox.value,
              onChanged: (value) {},
            ),
            title: Text(
              checkBox.title,
              style: AppTextTheme.smallTextBlack,
            ),
          );
        }).toList(),
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
        title,
        style: AppTextTheme.smallTextBlack,
      ),
    );
  }
}
