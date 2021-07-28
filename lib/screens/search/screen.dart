import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sap_work/bloc/variable_filter/variable_filter_cubit.dart';
import 'package:sap_work/resources/constants.dart';
import 'package:sap_work/resources/icons.dart';
import 'package:sap_work/resources/theme/color_theme.dart';
import 'package:sap_work/resources/theme/text_theme.dart';
import 'package:sap_work/screens/widgets/backward.dart';

class SearchScreen extends StatelessWidget {
  static const String id = 'search';

  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;

    return MultiBlocProvider(
      providers: [
        BlocProvider<VariableFilterCubit>.value(
          value: arguments[VARIABLE_FILTER_CUBIT],
        ),
      ],
      child: Scaffold(
        backgroundColor: AppColor.white,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          leading: BackWardWidget(
            () {
              Navigator.of(context).pop();
            },
          ),
          leadingWidth: MediaQuery.of(context).size.width,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Text(
                "Выберите город",
                style: AppTextTheme.mediumTextBlack,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Builder(
                    builder: (context) {
                      return TextField(
                        autofocus: true,
                        onChanged: (value) => context
                            .read<VariableFilterCubit>()
                            .searchCountry(value),
                        decoration: InputDecoration(
                          hintText: "Город",
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 12.0),
                          prefixIcon: Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0, right: 5.0),
                            child: SvgPicture.asset(AppIcons.search),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5.0),
                              topRight: Radius.circular(5.0),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  BlocBuilder<VariableFilterCubit, VariableFilterState>(
                    builder: (context, state) {
                      return LimitedBox(
                        maxHeight: MediaQuery.of(context).size.height / 1.5,
                        child: Container(
                          padding: const EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(5.0),
                              bottomRight: Radius.circular(5.0),
                            ),
                            border: Border.all(),
                          ),
                          child: state.countryList.isNotEmpty
                              ? ListView.builder(
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    final country = state.countryList[index];
                                    return ListTile(
                                      onTap: () {
                                        context
                                            .read<VariableFilterCubit>()
                                            .city(country);
                                        Navigator.of(context).pop();
                                      },
                                      title: Text(
                                        country,
                                        style: AppTextTheme.smallTextBlack,
                                      ),
                                    );
                                  },
                                  itemCount: state.countryList.length,
                                )
                              : Text(
                                  "Не найдено",
                                  style: AppTextTheme.smallTextBlack,
                                ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
