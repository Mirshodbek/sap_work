import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sap_work/screens/hunter/hunter.dart';

class ResumeButtonsWidget extends StatelessWidget {
  final VoidCallback pdf;
  final VoidCallback share;
  final VoidCallback visible;
  final int active;
  final String titlePdf;
  final Widget titleVisible;

  const ResumeButtonsWidget(
      {required this.pdf,
      required this.share,
      required this.visible,
      required this.active,
      required this.titlePdf,
      required this.titleVisible,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: Row(children: [
            Expanded(
                child: TextButton.icon(
                    icon: SvgPicture.asset(AppIcons.share),
                    label: Text(
                      "Поделиться",
                      style: AppTextTheme.smallSizeText,
                    ),
                    onPressed: share)),
            Expanded(
                child: TextButton.icon(
                    icon: SvgPicture.asset(AppIcons.pdf),
                    label: Flexible(
                        child: Text(titlePdf,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: AppTextTheme.smallSizeText)),
                    onPressed: pdf)),
          ])),
      const SizedBox(height: 5.0),
      TextButton.icon(
          style: ButtonStyle(
              side: MaterialStateProperty.all(const BorderSide()),
              shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
              alignment: Alignment.centerLeft,
              padding: MaterialStateProperty.all(const EdgeInsets.symmetric(
                  horizontal: 22.0, vertical: 15.0))),
          onPressed: visible,
          icon: SvgPicture.asset(
              active == 1 ? AppIcons.view : AppIcons.no_visible,
              color: Colors.black),
          label: titleVisible),
    ]);
  }
}
