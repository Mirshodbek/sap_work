import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:progress_indicators/progress_indicators.dart';
import 'package:sap_work/theme/text_theme.dart';

import 'icons.dart';

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
              SimpleDialog(title: Expanded(child: JumpingText(title))));

  static Iterable<ListTile> buildList(
          {required Function(String item) onTap,
          required String title,
          required List<String> list}) =>
      list.map((item) {
        return ListTile(
            onTap: () => onTap(item),
            leading: SvgPicture.asset(title == item
                ? AppIcons.selected_circle
                : AppIcons.empty_circle),
            title: Text(item));
      });
}
