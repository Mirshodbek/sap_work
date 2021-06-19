
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sap_work/resources/icons.dart';
import 'package:sap_work/theme/text_theme.dart';

class BackWardWidget extends StatelessWidget {
  final VoidCallback onPressed;
  const BackWardWidget(this.onPressed);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Row(
        children: [
          SvgPicture.asset(AppIcons.left_arrow_ios),
          const SizedBox(
            width: 5.0,
          ),
          Text(
            "Назад",
            style: AppTextTheme.smallTextBlack,
          ),
        ],
      ),
    );
  }
}