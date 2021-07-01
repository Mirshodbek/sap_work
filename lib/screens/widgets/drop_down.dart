import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../authorization/authorization.dart';

class DropDownWidget extends StatelessWidget {
  final String? value;
  final String title;
  final Function(String? value) onChanged;
  final List<DropdownMenuItem<String>>? items;

  const DropDownWidget({
    Key? key,
    required this.value,
    required this.title,
    required this.onChanged,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        decoration: BoxDecoration(
            border: Border.all(), borderRadius: BorderRadius.circular(5.0)),
        child: DropdownButton(
          value: value,
          hint: Text(title, style: AppTextTheme.smallTextBlack),
          style: AppTextTheme.smallTextBlack,
          underline: SizedBox.shrink(),
          icon: SvgPicture.asset(AppIcons.down_arrow,
              color: AppColor.black, height: 36.0),
          isExpanded: true,
          onChanged: onChanged,
          items: items,
        ));
  }
}
