import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../authorization.dart';

class ButtonsWidgets extends StatelessWidget {
  final bool? select;

  const ButtonsWidgets({Key? key, required this.select}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SelectButton(
            left: true,
            text: select! ? AppColor.red : null,
            background: select! ? AppColor.white : Colors.transparent,
            onPressed: () {
              context.read<SelectRole>().isHunterBool(true);
            },
            title: "Соискатель",
          ),
        ),
        Expanded(
          child: SelectButton(
            left: false,
            text: select! ? null : AppColor.red,
            background: select! ? Colors.transparent : AppColor.white,
            onPressed: () {
              context.read<SelectRole>().isHunterBool(false);
            },
            title: "Работодатель",
          ),
        ),
      ],
    );
  }
}
