import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sap_work/bloc/admin/admin_bloc.dart';
import 'package:sap_work/resources/constants.dart';
import 'package:sap_work/resources/icons.dart';
import 'package:sap_work/resources/small_widgets.dart';
import 'package:sap_work/resources/theme/color_theme.dart';
import 'package:sap_work/resources/theme/text_theme.dart';
import 'package:sap_work/screens/company/profile/widgets/widget.dart';
import 'package:sap_work/screens/settings/screen.dart';

import '../../injection_container.dart';

class AdminScreen extends StatefulWidget {
  static const String id = 'admin';

  const AdminScreen({Key? key}) : super(key: key);

  static Widget create() {
    return BlocProvider<AdminBloc>(
      create: (context) =>
          AdminBloc(sl(), sl(), sl())..add(const AdminEvent.getData()),
      child: AdminScreen(),
    );
  }

  @override
  _AdminScreenState createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  String categoryName = '';
  String sphereName = '';
  String price = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.white,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              onPressed: () => Navigator.pushNamed(context, SettingsScreen.id,
                  arguments: {ROLE: ADMIN_ROLE}),
              icon: SvgPicture.asset(AppIcons.settings)),
        ),
        body: BlocConsumer<AdminBloc, AdminState>(
          listener: (context, state) {
            state.maybeMap(
                orElse: () => state,
                loaded: (_state) {
                  if (_state.status == ADMIN_BLOC_ADD_CATEGORIES_FAILURE ||
                      _state.status == ADMIN_BLOC_DELETE_FAILURE ||
                      _state.status == ADMIN_BLOC_SET_PRICE_FAILURE) {
                    SmallWidgets.scaffoldMessage(
                        context: context, message: "Нет доступ к интернету");
                  }
                });
          },
          builder: (context, state) {
            return state.map(
                empty: (_) => const SizedBox.shrink(),
                loading: (_) => Column(),
                loaded: (_state) {
                  return SingleChildScrollView(
                      padding: const EdgeInsets.all(18),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const SizedBox(height: 20),
                            Text("Цены на тарифы",
                                style: AppTextTheme.mediumTextBlack),
                            const SizedBox(height: 20),
                            Text(
                                "Изменение глобальных цен на тарифы для работодателей",
                                style: AppTextTheme.smallTextMediumBlack),
                            const SizedBox(height: 10),
                            Text("${_state.price}₽",
                                style: AppTextTheme.mediumTextBlack),
                            Row(children: [
                              Expanded(
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                    Text("За 1 день",
                                        style:
                                            AppTextTheme.smallTextMediumBlack),
                                    TextField(
                                        onChanged: (value) {
                                          price = value;
                                        },
                                        decoration:
                                            SmallWidgets.inputDecoration(
                                                "1 000₽")),
                                  ])),
                              const SizedBox(width: 10),
                              Expanded(
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                    Text("1 месяц",
                                        style:
                                            AppTextTheme.smallTextMediumBlack),
                                    TextField(
                                        decoration:
                                            SmallWidgets.inputDecoration(
                                                "600₽")),
                                  ])),
                            ]),
                            const SizedBox(height: 30),
                            Text("Категории",
                                style: AppTextTheme.mediumTextBlack),
                            const SizedBox(height: 20),
                            Text(
                                "Изменение списка профессий, по которым распределяются вакансии",
                                style: AppTextTheme.smallTextMediumBlack),
                            const SizedBox(height: 10),
                            Wrap(children: [
                              ..._state.category.map((item) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                  child: Chip(
                                    side: BorderSide(),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50)
                                    ),
                                    backgroundColor: Colors.transparent,
                                    label: Text(item.name),
                                    deleteIcon: SvgPicture.asset(AppIcons.clear),
                                    onDeleted: () => context
                                        .read<AdminBloc>()
                                        .add(AdminEvent.delete(
                                            category: true, name: item.name)),
                                  ),
                                );
                              }),
                              if (_state.clickCategory)
                                TextField(
                                  onChanged: (value) {
                                    categoryName = value;
                                  },
                                  decoration:
                                      SmallWidgets.inputDecoration("Категории"),
                                ),
                              IconButton(
                                  onPressed: () => context
                                      .read<AdminBloc>()
                                      .add(AdminEvent.addCategory(
                                          click: !_state.clickCategory,
                                          name: categoryName)),
                                  icon: SvgPicture.asset(_state.clickCategory
                                      ? AppIcons.save
                                      : AppIcons.plus_black)),
                            ]),
                            const SizedBox(height: 30),
                            Text("Сфера",
                                style: AppTextTheme.mediumTextBlack),
                            const SizedBox(height: 10),
                            Wrap(children: [
                              ..._state.sphere.map((item) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                  child: Chip(
                                    side: BorderSide(),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)
                                    ),
                                    backgroundColor: Colors.transparent,
                                    label: Text(item.name),
                                    deleteIcon: SvgPicture.asset(AppIcons.clear),
                                    onDeleted: () => context
                                        .read<AdminBloc>()
                                        .add(AdminEvent.delete(
                                            category: false, name: item.name)),
                                  ),
                                );
                              }),
                              if (_state.clickSphere)
                                TextField(
                                  onChanged: (value) {
                                    sphereName = value;
                                  },
                                  decoration:
                                      SmallWidgets.inputDecoration("Сфера"),
                                ),
                              IconButton(
                                  onPressed: () => context
                                      .read<AdminBloc>()
                                      .add(AdminEvent.addSphere(
                                          click: !_state.clickSphere,
                                          name: sphereName)),
                                  icon: SvgPicture.asset(_state.clickSphere
                                      ? AppIcons.save
                                      : AppIcons.plus_black)),
                            ]),
                            const SizedBox(height: 30),
                            RedButtonWidget(
                                "Опубликовать изменения",
                                () => context
                                    .read<AdminBloc>()
                                    .add(AdminEvent.setPrice(price: price)),
                                true),
                          ]));
                },
                error: (_error) => Text(_error.message));
          },
        ));
  }
}
