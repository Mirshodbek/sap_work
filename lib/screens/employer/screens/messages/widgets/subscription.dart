import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../employer.dart';

class Subscription extends StatelessWidget {
  final bool isPayed;

  const Subscription(this.isPayed, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if(!isPayed) Navigator.pushNamed(context, PayScreen.id);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: isPayed ? AppColor.black : AppColor.red,
          ),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(isPayed ? AppIcons.save : AppIcons.question),
            const SizedBox(
              width: 18.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    isPayed
                        ? "Подписка оформлена до 24.06.2021 (23:00)"
                        : "Чтобы увидеть контакты соискателя оплатите подписку на использование сервиса, сейчас вы можете ознакомиться с резюмеи вводным письмом",
                    style: AppTextTheme.smallSizeText,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      if (isPayed)
                        Text(
                          "Продлить подписку",
                          style: AppTextTheme.smallSizeText,
                        ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      SvgPicture.asset(
                        AppIcons.long_arrow,
                        color: isPayed ? AppColor.black : AppColor.red,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
