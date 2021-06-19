import 'package:flutter/material.dart';

import '../../employer.dart';

class InviteScreen extends StatelessWidget {
  static const String id = '/invite';

  const InviteScreen({Key? key}) : super(key: key);

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
          children: [
            Text(
              "Пригласить соискателя",
              style: AppTextTheme.mediumTextBlack,
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextField(
              decoration: DecorationTextField.decoration("Ссылка Zoom"),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextField(
              decoration: DecorationTextField.decoration("Логин Skype"),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextField(
              decoration: DecorationTextField.decoration("Личная встреча"),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: DecorationTextField.decoration("Дата"),
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Expanded(
                  child: TextField(
                    decoration: DecorationTextField.decoration("Время"),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.all(12.0)),
                backgroundColor: MaterialStateProperty.all(AppColor.red),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                ),
              ),
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Отправить приглашение",
                  style: AppTextTheme.smallTextWhite,
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Отменить приглашение",
                style: AppTextTheme.smallSizeText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
