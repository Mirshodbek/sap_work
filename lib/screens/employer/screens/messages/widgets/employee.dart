import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../employer.dart';

class Employee extends StatelessWidget {
  final bool isPayed;

  const Employee(this.isPayed, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: isPayed ? AppColor.black : AppColor.red,
        ),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 25.0, horizontal: 20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Image.asset(
                            AppImages.profile_section,
                            width: 30.0,
                            height: 30.0,
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          Expanded(
                            child: Text(
                              "Алексей Голубев",
                              style: AppTextTheme.smallTextMediumBlack.copyWith(
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            AppIcons.save,
                            color: isPayed ? AppColor.green : AppColor.red,
                          ),
                          Expanded(
                            child: Text(
                              isPayed ? "Отклик получен" : "Требуется подписка",
                              style: AppTextTheme.smallTextMediumBlack.copyWith(
                                color: isPayed ? AppColor.green : AppColor.red,
                                fontSize: 16.0,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Авто отмена приглашения через 23:45",
                  style: AppTextTheme.smallSizeText,
                ),
                Text(
                  "Бизнес-ассистент (подработка)",
                  style: AppTextTheme.mediumTextBlack,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Здравствуйте, меня зовут Анна, заинтересовала ваша вакансия на должность «Офис менеджера», готова обсудить вакансию и приступить к работе...",
                  style: AppTextTheme.smallSizeText,
                ),
              ],
            ),
          ),
          Divider(
            color: AppColor.red,
            thickness: 1.2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    if (!isPayed)
                      Navigator.pushNamed(context, PayScreen.id);
                    else
                      Navigator.pushNamed(context, InviteScreen.id);
                  },
                  child: Row(
                    children: [
                      Text(
                        isPayed ? "Пригласить соискателя" : "Оплатить подписку",
                        style: AppTextTheme.smallTextMediumBlack,
                      ),
                      SvgPicture.asset(AppIcons.right_arrow_ios),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: SvgPicture.asset(
                    isPayed ? AppIcons.chat : AppIcons.people,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
