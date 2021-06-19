import 'package:flutter/material.dart';

import '../authorization.dart';


class SelectButton extends StatelessWidget {
  final bool left;
  final Color? text;
  final String title;
  final Color background;
  final VoidCallback onPressed;

  const SelectButton({
    Key? key,
    this.text,
    required this.left,
    required this.title,
    required this.onPressed,
    required this.background,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: AppTextTheme.smallTextWhite.copyWith(
          color: text,
        ),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(background),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: left ? Radius.circular(50.0) : Radius.zero,
              bottomLeft: left ? Radius.circular(50.0) : Radius.zero,
              topRight: left ? Radius.zero : Radius.circular(50.0),
              bottomRight: left ? Radius.zero : Radius.circular(50.0),
            ),
            side: BorderSide(
              color: AppColor.white,
              width: 1.0,
            ),
          ),
        ),
      ),
    );
  }
}
