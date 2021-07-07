import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sap_work/bloc/company/feedbacks_button/feedbacks_btn_cubit.dart';
import 'package:sap_work/resources/lists.dart';
import 'package:sap_work/resources/theme/text_theme.dart';

class TariffsWidget extends StatelessWidget {
  final String title;
  final String price;
  const TariffsWidget({Key? key,required this.title,required this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height / 2,
        child: ListView(
            scrollDirection: Axis.horizontal,
            children: Lists.tariffs.map((item) {
              return InkWell(
                onTap: () =>
                    context.read<FeedbacksBtnCubit>().onTap(item.title),
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        padding: const EdgeInsets.all(18),
                        width: MediaQuery.of(context).size.width / 1.3,
                        decoration: BoxDecoration(
                          color: title==item.title?Colors.grey:Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all()),
                        child: Column(children: [
                          Text(item.name, style: AppTextTheme.mediumTextBlack),
                          Text(item.title,
                              style: AppTextTheme.smallTextMediumBlack),
                          Expanded(
                              child: Row(children: [
                            Expanded(
                                flex: 1,
                                child: Text("₽",
                                    style: AppTextTheme.mediumTextBlack)),
                            Expanded(
                                flex: 2,
                                child: Text(price.toString(),
                                    style: AppTextTheme.mediumTextBlack)),
                          ])),
                          const Divider(
                              height: 80, color: Colors.red, thickness: 1.2),
                          Text("Поддержка 24/7",
                              textAlign: TextAlign.start,
                              style: AppTextTheme.smallSizeText),
                          const SizedBox(height: 20),
                          Text("Доступ к базе с более 2500 резюме",
                              style: AppTextTheme.smallSizeText),
                        ]))),
              );
            }).toList()));
  }
}
