import 'package:flutter/material.dart';
import 'package:progress_indicators/progress_indicators.dart';
import 'package:sap_work/theme/text_theme.dart';

class SmallWidgets {
  static void scaffoldMessage(
          {required BuildContext context, required String message}) =>
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          behavior: SnackBarBehavior.floating, content: Text(message)));

  static Widget suffixText(String title) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
        child: Text(title, style: AppTextTheme.smallTextMediumBlack));
  }

  static InputDecoration inputDecoration(String hintText) {
    return InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
            borderSide: const BorderSide(),
            borderRadius: BorderRadius.circular(5.0)));
  }

  static showDialogFunction(
          {required BuildContext context, required String title}) =>
      showDialog(
          context: context,
          builder: (context) =>
              SimpleDialog(title: Center(child: JumpingText(title))));
}
