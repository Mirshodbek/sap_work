import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sap_work/screens/employer/employer.dart';

class PublishedAnnounce extends StatelessWidget {
  final AnnounceE announceE;

  const PublishedAnnounce(this.announceE);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ResumeButtonsWidget(
          pdf: () {},
          share: () {},
          visible: () {},
          add: () {},
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                announceE.titleAnnounce,
                style: AppTextTheme.mediumTextBlack,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                announceE.description,
                style: AppTextTheme.smallSizeText,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Зароботная плата",
                style: AppTextTheme.smallTextMediumBlack,
              ),
              Text(
                "По договоренности",
                style: AppTextTheme.smallSizeText,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Text(
                        "от",
                        style: AppTextTheme.smallSizeText,
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        "${announceE.fromMoney} ₽",
                        style: AppTextTheme.mediumTextBlack,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Row(
                    children: [
                      Text(
                        "До",
                        style: AppTextTheme.smallSizeText,
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        "${announceE.toMoney} ₽",
                        style: AppTextTheme.mediumTextBlack,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30.0,
              ),
              Text(
                "Занятость",
                style: AppTextTheme.smallTextMediumBlack,
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                announceE.employmentType,
                style: AppTextTheme.smallSizeText,
              ),
              const SizedBox(
                height: 30.0,
              ),
              Text(
                "Опыт",
                style: AppTextTheme.smallTextMediumBlack,
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                announceE.skill,
                style: AppTextTheme.smallSizeText,
              ),
              const SizedBox(
                height: 30.0,
              ),
              Text(
                "Локация",
                style: AppTextTheme.smallTextMediumBlack,
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                announceE.country,
                style: AppTextTheme.smallSizeText,
              ),
              const SizedBox(
                height: 30.0,
              ),
              Text(
                "Навыки",
                style: AppTextTheme.smallTextMediumBlack,
              ),
              const SizedBox(
                height: 10.0,
              ),
              Wrap(
                children: announceE.tools.map((tool) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Chip(
                      shape: StadiumBorder(),
                      side: BorderSide(),
                      backgroundColor: Colors.transparent,
                      label: Text(
                        tool,
                        style: AppTextTheme.smallTextMediumBlack,
                      ),
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(
                height: 80.0,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
