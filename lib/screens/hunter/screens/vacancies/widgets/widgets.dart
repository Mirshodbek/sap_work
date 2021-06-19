import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sap_work/bloc/hunter/vacancies/vacancies_bloc.dart';

import '../../../hunter.dart';

class SearchField extends StatefulWidget {
  SearchField({Key? key}) : super(key: key);

  @override
  _SearchFieldState createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  final _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _searchController.addListener(() {
      context
          .read<VacanciesBloc>()
          .add(VacanciesEvent.searchVacancies(search: _searchController.text));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              prefixIcon: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 5.0),
                child: SvgPicture.asset(AppIcons.search),
              ),
              contentPadding: EdgeInsets.zero,
              hintText: "Профессия",
              hintStyle: AppTextTheme.smallTextBlack,
              suffixIcon: IconButton(
                onPressed: () => _searchController.clear(),
                icon: SvgPicture.asset(AppIcons.clear),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1.0,
                  color: AppColor.black,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5.0),
                  bottomLeft: Radius.circular(5.0),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1.0,
                  color: AppColor.black,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5.0),
                  bottomLeft: Radius.circular(5.0),
                ),
              ),
            ),
          ),
        ),
        OutlinedButton(
          onPressed: () {
            Navigator.pushNamed(context, FilterScreen.id);
          },
          style: ButtonStyle(
            padding:
                MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 12.0)),
            side: MaterialStateProperty.all(
              BorderSide(
                width: 1.0,
                color: AppColor.black,
              ),
            ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(5.0),
                  bottomRight: Radius.circular(5.0),
                ),
              ),
            ),
          ),
          child: SvgPicture.asset(AppIcons.filter),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}

class RowView extends StatelessWidget {
  final bool isExtension;

  const RowView(this.isExtension);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Подходящие вакансии",
          style: AppTextTheme.profileText,
        ),
        IconButton(
          onPressed: () => context
              .read<VacanciesBloc>()
              .add(VacanciesEvent.selectedView(isExtension: isExtension)),
          icon: SvgPicture.asset(
            isExtension ? AppIcons.reduce : AppIcons.extension,
          ),
        ),
      ],
    );
  }
}
