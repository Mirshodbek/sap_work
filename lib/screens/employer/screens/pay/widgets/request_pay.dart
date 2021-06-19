import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sap_work/cubit_employer/pay/pay_cubit.dart';
import 'package:sap_work/screens/authorization/authorization.dart';
import 'package:sap_work/screens/employer/employer.dart';

class RequestPay extends StatelessWidget {
  final int sum;
  final int count;

  const RequestPay(this.sum, this.count, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Оставить заявку",
            style: AppTextTheme.mediumTextBlack,
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            "После заявку тариф будет подключен автоматически. Все полученые отклики станут доступны сразу.",
            style: AppTextTheme.smallTextMediumBlack,
          ),
          const SizedBox(
            height: 20.0,
          ),
          TextField(
            decoration: DecorationTextField.decoration("Название компании"),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Container(
            height: 62.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              border: Border.all(),
            ),
            child: Row(
              children: [
                TextButton(
                  onPressed: () => BlocProvider.of<PayCubit>(context).minus(),
                  child: SvgPicture.asset(AppIcons.minus),
                ),
                VerticalDivider(
                  thickness: 1.2,
                  color: Colors.black,
                ),
                Expanded(
                  child: Text(
                    "$count",
                    textAlign: TextAlign.center,
                    style: AppTextTheme.smallTextMediumBlack,
                  ),
                ),
                VerticalDivider(
                  thickness: 1.2,
                  color: Colors.black,
                ),
                TextButton(
                  onPressed: () => BlocProvider.of<PayCubit>(context).plus(),
                  child: SvgPicture.asset(AppIcons.plus_black),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            "Итого",
            style: AppTextTheme.smallTextMediumBlack,
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            "$sum",
            style: AppTextTheme.smallTextMediumBlack,
          ),
          const SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            onPressed: () {
              BlocProvider.of<PayCubit>(context).paying();
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
                "Перейти к оплате",
                style: AppTextTheme.smallTextWhite,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
