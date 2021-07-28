
import 'package:extended_image/extended_image.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:progress_indicators/progress_indicators.dart';
import 'package:sap_work/resources/theme/text_theme.dart';
import 'package:sap_work/screens/widgets/drop_down.dart';

import 'icons.dart';
import 'theme/color_theme.dart';

class SmallWidgets {
  static void scaffoldMessage(
          {required BuildContext context, required String message}) =>
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          behavior: SnackBarBehavior.floating, content: Text(message)));

  static Widget suffixText(String title) {
    return Padding(
        padding: const EdgeInsets.only(left: 20, top: 9),
        child: Text(title, style: AppTextTheme.smallTextMediumBlack));
  }

  static InputDecoration inputDecoration(String hintText) {
    return InputDecoration(
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
            borderSide:  BorderSide(color: AppColor.red),
            borderRadius: BorderRadius.circular(5.0)),
        focusedBorder: OutlineInputBorder(
            borderSide:  BorderSide(color: AppColor.red),
            borderRadius: BorderRadius.circular(5.0)));
  }

  static showDialogFunction(
          {required BuildContext context, required String title}) =>
      showDialog(
          context: context,
          builder: (context) => SimpleDialog(
              title: FittedBox(child: JumpingText(title)),
              titlePadding: const EdgeInsets.symmetric(vertical: 30,horizontal: 12)));

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

  static ClipRRect circleAvatar(
          {required String url,
          required double height,
          required double width}) =>
      ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: ExtendedImage.network(
              url,
              height: height,
              width: width,
              fit: BoxFit.cover));

  static CircleAvatar uploadAvatar() => CircleAvatar(
      radius: 40,
      child: Align(
          child: JumpingDotsProgressIndicator(fontSize: 40),
          alignment: Alignment.topCenter),
      backgroundColor: Colors.white);

  static Positioned uploadAvatarButton(Function(String path) event) =>
      Positioned(
          bottom: 0,
          right: 15,
          child: IconButton(
              alignment: Alignment.bottomCenter,
              onPressed: () async {
                FilePickerResult? result =
                    await FilePicker.platform.pickFiles();
                if (result != null) {
                  event(result.files.first.path!);
                }
              },
              icon: SvgPicture.asset(AppIcons.photo, color: AppColor.red)));

  static Text textRichArrow(String text) => Text.rich(
      TextSpan(children: [
        TextSpan(text: text),
        WidgetSpan(child: SvgPicture.asset(AppIcons.right_arrow_ios))
      ]),
      textAlign: TextAlign.center,
      style: AppTextTheme.smallTextMediumBlack);

  static Text textRichSearch({required VoidCallback onTap,required String title}) => Text.rich(TextSpan(children: [
        TextSpan(
            text: "Подходящие резюме в городе  ",
            style: AppTextTheme.mediumTextBlack),
        TextSpan(
          text: title.isNotEmpty?title:"Москва",
          style: AppTextTheme.mediumTextBlack.copyWith(color: AppColor.red),
          recognizer: TapGestureRecognizer()..onTap = onTap,
        ),
        WidgetSpan(
          child: SvgPicture.asset(
            AppIcons.down_arrow,
            color: AppColor.red,
          ),
        ),
      ]));

  static Row title(
          {required String title,
          required bool changeIcon,
          required VoidCallback onPressed}) =>
      Row(children: [
        Expanded(child: Text(title, style: AppTextTheme.mediumTextBlack)),
        IconButton(
            onPressed: onPressed,
            icon: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all()),
                child: SvgPicture.asset(
                    changeIcon ? AppIcons.save : AppIcons.edit))),
      ]);

  static Widget bodyText(
          {required String body,
          required bool changeWidget,
          required Function(String value) onChanged}) =>
      changeWidget
          ? TextField(
              decoration: SmallWidgets.inputDecoration(""),
              onChanged: onChanged)
          : Text(body, style: AppTextTheme.smallTextMediumBlack);

  static Widget bodyDropDown(
          {required Function(String? item) onChanged,
          required String body,
          required String title,
          required String? value,
          required List<DropdownMenuItem<String>> items,
          required bool changeWidget}) =>
      changeWidget
          ? DropDownWidget(
              value: value, title: title, onChanged: onChanged, items: items)
          : Text(body, style: AppTextTheme.smallTextMediumBlack);

  static Text textRichLocation(String city) => Text.rich(
      TextSpan(children: [
        WidgetSpan(
            child: Padding(
          padding: const EdgeInsets.only(bottom: 5, right: 10),
          child: SvgPicture.asset(AppIcons.location),
        )),
        TextSpan(text: city)
      ]),
      style: AppTextTheme.smallSizeText);
}
