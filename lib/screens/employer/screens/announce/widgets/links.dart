import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../employer.dart';


class Links extends StatelessWidget {
  const Links({Key? key}) : super(key: key);

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
                        style: AppTextTheme.smallTextMediumBlack,
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
