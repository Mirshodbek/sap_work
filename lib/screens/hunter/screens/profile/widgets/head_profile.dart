import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../hunter.dart';


class HeadProfileWidget extends StatelessWidget {
  final dynamic _state;

  HeadProfileWidget(this._state);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 14.0, left: 14.0, right: 14.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _state.profile.name,
            style: AppTextTheme.mediumTextBlack,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "2",
                            style: AppTextTheme.mediumTextBlack,
                          ),
                          Text(
                            "Приглашения",
                            style: AppTextTheme.smallSizeText,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () {},
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              _state.feedbacksCount.toString(),
                              style: AppTextTheme.mediumTextBlack,
                            ),
                            Text(
                              "Отклика",
                              style: AppTextTheme.smallSizeText,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(
                AppImages.profile_section,
                width: 95.0,
                height: 95.0,
              ),
            ],
          ),
          _Links(),
          const SizedBox(
            height: 35.0,
          ),
        ],
      ),
    );
  }
}

class _Links extends StatelessWidget {
  const _Links({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.0,
      child: Row(
        children: [
          Flexible(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final link = Lists.linkList[index];
                return TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text(
                        link,
                        style: AppTextTheme.smallSizeText,
                      ),
                      SvgPicture.asset(AppIcons.link_arrow),
                    ],
                  ),
                );
              },
              itemCount: Lists.linkList.length,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(AppIcons.plus_black),
          ),
        ],
      ),
    );
  }
}
