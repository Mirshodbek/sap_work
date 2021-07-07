import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sap_work/resources/icons.dart';
import 'package:sap_work/resources/images.dart';
import 'package:sap_work/resources/theme/color_theme.dart';
import 'package:sap_work/resources/theme/text_theme.dart';
import 'package:sap_work/screens/widgets/backward.dart';


class SettingsScreen extends StatelessWidget {
  static const String id = '/settings';

  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: BackWardWidget(
          () {
            Navigator.of(context).pop();
          },
        ),
        leadingWidth: MediaQuery.of(context).size.width,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Настройки",
              style: AppTextTheme.mediumTextBlack,
            ),
            const SizedBox(
              height: 30.0,
            ),
            Text(
              "Сменить аккаунт",
              style: AppTextTheme.smallTextMediumBlack,
            ),
            const SizedBox(
              height: 20.0,
            ),
            ListTile(
              onTap: (){},
              selectedTileColor: AppColor.white200,
              selected: true,
              leading: CircleAvatar(
                backgroundImage: AssetImage(AppImages.profile_section),
              ),
              title: Text(
                "Соискатель",
                style: TextStyle(
                  color: AppColor.grey,
                  fontSize: 14.0,
                ),
              ),
              subtitle: Text(
                "Алексей Голубев",
                style: AppTextTheme.mediumTextBlack.copyWith(
                  fontSize: 20.0,
                ),
              ),
            ),
            ListTile(
              onTap: (){},
              leading: CircleAvatar(
                backgroundImage: AssetImage(AppImages.employer_image),
              ),
              title: Text(
                "Работодатель",
                style: TextStyle(
                  color: AppColor.grey,
                  fontSize: 14.0,
                ),
              ),
              subtitle: Text(
                "Digital агентство ДАЛЕЕ",
                style: AppTextTheme.mediumTextBlack.copyWith(
                  fontSize: 20.0,
                ),
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: SvgPicture.asset(AppIcons.plus_black),
                  label: Text(
                    "Добавить аккаунт",
                    style: AppTextTheme.smallTextMediumBlack,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
