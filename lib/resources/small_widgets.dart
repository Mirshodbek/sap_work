import 'package:extended_image/extended_image.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:progress_indicators/progress_indicators.dart';
import 'package:sap_work/data_source/common_urls.dart';
import 'package:sap_work/resources/theme/text_theme.dart';

import 'constants.dart';
import 'icons.dart';
import 'theme/color_theme.dart';

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
          builder: (context) => SimpleDialog(
              title: FittedBox(child: JumpingText(title)),
              titlePadding: const EdgeInsets.all(12)));

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

  static ClipRRect circleAvatar(String url) => ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: ExtendedImage.network(url != DEFAULT_PHOTO ? BASE_API + url : url,
          height: 80, width: 80, fit: BoxFit.cover));

  static CircleAvatar uploadAvatar() => CircleAvatar(
      radius: 40,
      child: Align(
          child: JumpingDotsProgressIndicator(fontSize: 40),
          alignment: Alignment.topCenter),
      backgroundColor: Colors.white);

  static Positioned uploadAvatarButton(Function(String path) event) => Positioned(
      bottom: 0,
      right: 15,
      child: IconButton(
          alignment: Alignment.bottomCenter,
          onPressed: () async {
            FilePickerResult? result = await FilePicker.platform.pickFiles();
            if (result != null) {
              event(result.files.first.path!);
            }
          },
          icon: SvgPicture.asset(AppIcons.photo, color: AppColor.red)));
}
