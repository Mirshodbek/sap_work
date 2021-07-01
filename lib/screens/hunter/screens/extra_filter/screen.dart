import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../hunter.dart';

class ExtraFilterScreen extends StatelessWidget {
  static const String idCountry = '/add_filter_country';
  static const String idProfession = '/add_filter_profession';
  final String title;
  final String id;

  ExtraFilterScreen({Key? key, required this.title, required this.id})
      : super(key: key);

  static Widget create(FilterBloc bloc, String thisTitle, String thisId) {
    return BlocProvider<FilterBloc>.value(
      value: bloc,
      child: ExtraFilterScreen(title: thisTitle, id: thisId),
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
              title,
              style: AppTextTheme.mediumTextBlack,
            ),
            const SizedBox(
              height: 20.0,
            ),
            BlocBuilder<FilterBloc, FilterState>(
              builder: (context, state) {
                return state.maybeMap(
                  orElse: ()=>Container(),
                  initial: (_) => Container(),
                  filter: (_state) {
                    if (id == ExtraFilterScreen.idCountry) {
                      return ListItems(
                        _state.countries,
                        (value) =>
                            context.read<FilterBloc>().add(FilterEvent.onTap(
                                  country: value,
                                  profession: _state.profession,
                                )),
                      );
                    }
                    return ListItems(
                      _state.professions,
                      (value) =>
                          context.read<FilterBloc>().add(FilterEvent.onTap(
                                country: _state.country,
                                profession: value,
                              )),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
