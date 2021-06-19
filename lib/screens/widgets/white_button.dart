import 'package:flutter/material.dart';

import '../authorization/authorization.dart';


class WhiteButtonWidget extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;

  const WhiteButtonWidget({
    Key? key,
    required this.child,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
          EdgeInsets.symmetric(
            vertical: 12.0,
            horizontal: 24.0,
          ),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            side: BorderSide(
              width: 2.0,
              color: AppColor.white,
            ),
            borderRadius: BorderRadius.circular(100.0),
          ),
        ),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
