import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sap_work/models/vacancy/vacancy.dart';
import 'package:sap_work/screens/hunter/hunter.dart';

class VacancyListItemWidget extends StatelessWidget {
  final bool extension;
  final bool isResponse;
  final Vacancy vacancy;
  final Widget favoriteButton;

  VacancyListItemWidget(this.extension, this.isResponse, this.vacancy,
      {this.favoriteButton = const SizedBox.shrink()});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 25.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(
            width: 1.0,
            color: AppColor.red,
          ),
        ),
        child: Column(
          children: [
            _headVacancy(),
            if (!extension) _shortDescription(),
            if (extension) _longDescription(),
          ],
        ),
      ),
    );
  }

  Widget _headVacancy() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                Image.asset(
                  AppImages.want,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: Text(
                    "vacancy.company!.name",
                    maxLines: 2,
                    style: AppTextTheme.smallTextBlack,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          isResponse
              ? Text(
                  "Просмотрено",
                  style: AppTextTheme.smallSizeText,
                )
              : Container(
                  child: extension
                      ? FittedBox(
                          child: Text(
                            "${vacancy.salary}₸",
                            style: AppTextTheme.mediumTextBlack.copyWith(
                              fontSize: 14.0,
                            ),
                          ),
                        )
                      : favoriteButton,
                ),
        ],
      );

  Widget _longDescription() => Column(
        children: [
          const SizedBox(
            height: 17.0,
          ),
          Text(
            vacancy.name,
            style: AppTextTheme.mediumTextBlack,
          ),
          const SizedBox(
            height: 12.0,
          ),
          Text(
            vacancy.body,
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
            style: AppTextTheme.smallTextBlack.copyWith(
              fontSize: 14.0,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
         favoriteButton,
        ],
      );

  Widget _shortDescription() => Column(
        children: [
          const SizedBox(
            height: 23.0,
          ),
          Text(
            vacancy.name,
            style: AppTextTheme.mediumTextBlack,
          ),
          const SizedBox(
            height: 5.0,
          ),
          _wageLocation(),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            vacancy.body,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: AppTextTheme.smallTextBlack.copyWith(
              fontSize: 14.0,
            ),
          ),
        ],
      );

  Widget _wageLocation() => Row(
        children: [
          Text(
            "${vacancy.salary}",
            style: AppTextTheme.smallTextBlack.copyWith(
              fontSize: 14.0,
            ),
          ),
          const SizedBox(
            width: 20.0,
          ),
          SvgPicture.asset(AppIcons.location),
          const SizedBox(
            width: 5.0,
          ),
          Text(
            vacancy.city,
            style: AppTextTheme.smallTextBlack.copyWith(
              fontSize: 14.0,
            ),
          ),
        ],
      );

}
