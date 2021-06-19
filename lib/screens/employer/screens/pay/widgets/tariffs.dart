import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../employer.dart';

class Tariffs extends StatelessWidget {
  const Tariffs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2.0,
      child: PageView(
        children: Lists.payList.map((pay) {
          return Container(
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      Text(
                        pay.nameTariff,
                        style: AppTextTheme.splashFirstText.copyWith(
                          color: AppColor.black,
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        pay.title,
                        style: AppTextTheme.smallTextMediumBlack,
                      ),
                      const SizedBox(
                        height: 50.0,
                      ),
                      Row(
                        children: [
                          Text(
                            "₽",
                            style: AppTextTheme.mediumTextBlack,
                          ),
                          Expanded(
                            child: Text(
                              pay.sum.toString(),
                              textAlign: TextAlign.center,
                              style: AppTextTheme.splashFirstText.copyWith(
                                color: AppColor.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Divider(
                  color: Colors.black,
                  thickness: 1.2,
                ),
                TextButton(
                  onPressed: () =>
                      BlocProvider.of<PayCubit>(context).next(pay.sum),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Выбрать тариф",
                        style: AppTextTheme.smallTextMediumBlack,
                      ),
                      SvgPicture.asset(AppIcons.right_arrow_ios),
                    ],
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
