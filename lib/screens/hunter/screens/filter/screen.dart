import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import '../../hunter.dart';

class FilterScreen extends StatelessWidget {
  static const String id = '/filter';

  const FilterScreen({Key? key}) : super(key: key);

  static Widget create(FilterBloc bloc) {
    return BlocProvider.value(
      value: bloc..add(FilterEvent.initial()),
      child: FilterScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: BackWardWidget(
          () => Navigator.of(context).pop(),
        ),
        leadingWidth: MediaQuery.of(context).size.width,
        actions: [
          TextButton(
            onPressed: () =>
                context.read<FilterBloc>().add(FilterEvent.initial()),
            child: Row(
              children: [
                SvgPicture.asset(AppIcons.clear),
                const SizedBox(
                  width: 5.0,
                ),
                Text(
                  "Очистить",
                  style: AppTextTheme.smallTextBlack,
                ),
              ],
            ),
          ),
        ],
      ),
      body: BlocConsumer<FilterBloc, FilterState>(
        listener: (context,state){
          if(state is SavedStateFilterState){
            context.read<VacanciesBloc>().add(const VacanciesEvent.refresh());
            Navigator.of(context).pop();
          }
        },
        builder: (context, state) {
          return state.maybeMap(
              orElse: () => Container(),
              filter: (_state) {
                return SingleChildScrollView(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Фильтр вакансий",
                        style: AppTextTheme.mediumTextBlack,
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      ExpansionWidget(_state.checkBoxes),
                      const SizedBox(
                        height: 30.0,
                      ),
                      FilterButton(
                        _state.country,
                        () {
                          Navigator.pushNamed(
                              context, ExtraFilterScreen.idCountry);
                        },
                      ),
                      const SizedBox(
                        height: 18.0,
                      ),
                      FilterButton(
                        _state.profession,
                        () {
                          Navigator.pushNamed(
                              context, ExtraFilterScreen.idProfession);
                        },
                      ),
                      const SizedBox(
                        height: 18.0,
                      ),
                      EmploymentTypeWidget(
                        _state.employmentType,
                        (String? value) => context
                            .read<FilterBloc>()
                            .add(FilterEvent.onTapType(employmentType: value)),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      RedButtonWidget(
                        "Сохранить фильтры",
                        () =>context.read<FilterBloc>().add(const FilterEvent.save()),
                        true,
                      ),
                    ],
                  ),
                );
              });
        },
      ),
    );
  }
}
