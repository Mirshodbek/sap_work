import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../hunter.dart';

class BodyInvites extends StatelessWidget {
  const BodyInvites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColor.red,
        ),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Column(
        children: [
          InkWell(
            onTap: () {},
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 25.0, horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(AppImages.want),
                          const SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            "WANT",
                            style: AppTextTheme.smallTextMediumBlack,
                          ),
                        ],
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              AppIcons.save,
                              color: AppColor.green,
                            ),
                            Expanded(
                              child: Text(
                                "Приглашение",
                                style:
                                    AppTextTheme.smallTextMediumBlack.copyWith(
                                  color: AppColor.green,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 23.0,
                  ),
                  Text(
                    "Авто отмена приглашения через 23:45",
                    style: AppTextTheme.smallTextBlack.copyWith(
                      color: AppColor.grey,
                      fontSize: 14.0,
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "Бизнес-ассистент (подработка)",
                    style: AppTextTheme.smallTextMediumBlack,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Здравствуйте, меня зовут Марина, я hr-специалист в компании WANT. Нам понравилось ваше резюме, приглашаем на созвон. ",
                    style: AppTextTheme.smallTextBlack.copyWith(
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Divider(
            color: AppColor.red,
            thickness: 1.0,
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(horizontal: 18.0),
                  ),
                ),
                child: Row(
                  children: [
                    Text(
                      "Принять приглашение",
                      style: AppTextTheme.smallTextBlack.copyWith(
                        fontSize: 16.0,
                      ),
                    ),
                    SvgPicture.asset(AppIcons.right_arrow_ios),
                  ],
                ),
              ),
              Expanded(
                child: IconButton(
                  onPressed: () =>Navigator.pushNamed(context, ChatScreenS.id),
                  icon: SvgPicture.asset(AppIcons.chat),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
