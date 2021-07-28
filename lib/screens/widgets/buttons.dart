import 'package:flutter/material.dart';
import 'package:sap_work/resources/theme/color_theme.dart';
import 'package:sap_work/resources/theme/text_theme.dart';

class RedButtonWidget extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final bool isRed;

  const RedButtonWidget(this.title, this.onPressed, this.isRed, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        padding: MaterialStateProperty.all(EdgeInsets.all(12.0)),
        backgroundColor:
            MaterialStateProperty.all(isRed ? AppColor.red : AppColor.white),
        side: MaterialStateProperty.all(isRed ? BorderSide.none : BorderSide()),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100.0),
          ),
        ),
      ),
      child: Text(
        title,
        style:
            isRed ? AppTextTheme.smallTextWhite : AppTextTheme.smallTextBlack,
      ),
    );
  }
}
