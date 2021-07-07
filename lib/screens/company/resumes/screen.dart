import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sap_work/bloc/navigation/navigation_cubit.dart';
import 'package:sap_work/resources/icons.dart';
import 'package:sap_work/resources/small_widgets.dart';
import 'package:sap_work/screens/widgets/bottom_nav_bar.dart';
import 'package:sap_work/resources/theme/color_theme.dart';
import 'package:sap_work/screens/widgets/row.dart';
import 'package:sap_work/screens/widgets/search_field.dart';

class ResumesScreenCompany extends StatelessWidget {
  const ResumesScreenCompany({Key? key}) : super(key: key);

  static Widget create() {
    return ResumesScreenCompany();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar:
          BottomNavBarWidget(context.watch<NavigationCubit>().state),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(children: [
          Row(children: [
            Expanded(child: SmallWidgets.textRichSearch()),
            IconButton(onPressed: () {}, icon: SvgPicture.asset(AppIcons.star)),
          ]),
          const SizedBox(height: 30),
          SearchFieldWidget(
              onChanged: (value) {}, onPressed: () {}, hintText: "Резюме"),
          const SizedBox(height: 30),
          RowViewWidget(isExtension: true, text: "Список резюме", onPressed: () {}),
        ]),
      ),
    );
  }
}
