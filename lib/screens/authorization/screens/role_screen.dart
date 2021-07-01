import 'package:flutter/material.dart';
import '../authorization.dart';

class RoleScreen extends StatelessWidget {
  static const String id = '/role';

  const RoleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.red,
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Как вы хотите войти?",
              style: AppTextTheme.mediumTextWhite,
            ),
            const SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                Expanded(
                  child: SelectButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, UserSignInScreen.id),
                    left: true,
                    background: Colors.transparent,
                    title: "Соискатель",
                  ),
                ),
                Expanded(
                  child: SelectButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, CompanySignInScreen.id),
                    left: false,
                    background: Colors.transparent,
                    title: "Работодатель",
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
