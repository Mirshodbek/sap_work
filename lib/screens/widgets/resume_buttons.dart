import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sap_work/screens/hunter/hunter.dart';

class ResumeButtonsWidget extends StatelessWidget {
  final VoidCallback pdf;
  final VoidCallback share;
  final VoidCallback visible;
  final VoidCallback add;

  const ResumeButtonsWidget(
      {required this.pdf,
      required this.share,
      required this.visible,
      required this.add,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton.icon(
                icon: SvgPicture.asset(AppIcons.share),
                label: Text(
                  "Поделиться",
                  style: AppTextTheme.smallSizeText,
                ),
                onPressed: share,
              ),
              TextButton.icon(
                icon: SvgPicture.asset(AppIcons.pdf),
                label: Text(
                  "Резюме PDF",
                  style: AppTextTheme.smallSizeText,
                ),
                onPressed: pdf,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        Row(
          children: [
            Expanded(
              child: TextButton.icon(
                style: ButtonStyle(
                  side: MaterialStateProperty.all(const BorderSide()),
                  shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
                  alignment: Alignment.centerLeft,
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(horizontal: 22.0,vertical: 12.0),
                  ),
                ),
                onPressed: visible,
                icon: SvgPicture.asset(AppIcons.view),
                label: Text(
                  "Видимость резюме",
                  style: AppTextTheme.smallSizeText,
                ),
              ),
            ),
            TextButton(
              style: ButtonStyle(
                side: MaterialStateProperty.all(const BorderSide()),
                shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
                padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 15.0)),
                backgroundColor: MaterialStateProperty.all(AppColor.red),
              ),
              onPressed: add,
              child: SvgPicture.asset(AppIcons.plus_white),
            ),
          ],
        ),
      ],
    );
  }
}
