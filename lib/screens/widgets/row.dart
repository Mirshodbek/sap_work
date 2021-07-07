import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sap_work/resources/icons.dart';
import 'package:sap_work/resources/small_widgets.dart';
import 'package:sap_work/resources/theme/text_theme.dart';

class RowViewWidget extends StatelessWidget {
  final bool isExtension;
  final String text;
  final VoidCallback onPressed;

  const RowViewWidget(
      {required this.isExtension, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: AppTextTheme.profileText,
        ),
        IconButton(
          onPressed: onPressed,
          icon: SvgPicture.asset(
            isExtension ? AppIcons.reduce : AppIcons.extension,
          ),
        ),
      ],
    );
  }
}

class RowProfileWidget extends StatelessWidget {
  final String url;
  final String name;

  const RowProfileWidget({Key? key, required this.url, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SmallWidgets.circleAvatar(url: url, height: 40, width: 40),
        const SizedBox(width: 10),
        Text(name, style: AppTextTheme.smallSizeText),
        const SizedBox(width: 10),
      ],
    );
  }
}
