import 'package:flutter/material.dart';

import '../authorization.dart';

class TextFieldDecoration {
  static InputDecoration decoration(String hintText) {
    return InputDecoration(
      errorMaxLines: 2,
      hintText: hintText,
      enabledBorder: _border(),
      focusedBorder: _border(),
      hintStyle: AppTextTheme.smallTextWhite,
      contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 14.0),
    );
  }

 static OutlineInputBorder? _border() => OutlineInputBorder(
        borderSide: BorderSide(
          width: 1.0,
          color: AppColor.white,
        ),
        borderRadius: BorderRadius.circular(5.0),
      );
}
