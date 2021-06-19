import 'package:flutter/material.dart';

import '../employer.dart';

class RowAnnounce extends StatelessWidget {
  const RowAnnounce({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(
          child: Column(
            children: [
              Text(
                "Digital агентство ДАЛЕЕ",
                style: AppTextTheme.mediumTextBlack,
              ),
              const SizedBox(
                height: 5.0,
              ),
              Row(
                children: [
                  InkWell(
                    onTap:(){},
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "2",
                          style: AppTextTheme.mediumTextBlack,
                        ),
                        Text(
                          "Приглашения",
                          style: AppTextTheme.smallTextMediumBlack,
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: (){},
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "4",
                          style: AppTextTheme.mediumTextBlack,
                        ),
                        Text(
                          "Отклика",
                          style: AppTextTheme.smallTextMediumBlack,
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ],
          ),
        ),
        Image.asset(AppImages.employer_image),
      ],
    );
  }
}

class DecorationTextField{

static  InputDecoration decoration(String hintText) => InputDecoration(
    hintText: hintText,
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(),
      borderRadius: BorderRadius.circular(5.0),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(),
      borderRadius: BorderRadius.circular(5.0),
    ),
  );

}