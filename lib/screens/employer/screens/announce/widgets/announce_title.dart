import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../employer.dart';

class AnnounceTitleList extends StatelessWidget {
  final List<String> announceTitleList;
  final VoidCallback addAnnounce;
  final VoidCallback previous;
  final VoidCallback forward;

  AnnounceTitleList(this.announceTitleList, this.addAnnounce, this.previous,this.forward);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: previous,
          child: SvgPicture.asset(AppIcons.left_arrow_ios),
        ),
        Expanded(
          child: SizedBox(
            height: 50.0,
            child: PageView(
              controller: context.select((AnnounceECubit value) => value.titleAnnounceController),
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: announceTitleList.map(
                (title) {
                  final _string = "Добавить вакансию";
                  return TextButton.icon(
                    onPressed: _string == title ? addAnnounce : null,
                    icon: _string == title
                        ? SvgPicture.asset(AppIcons.plus_black)
                        : const SizedBox(),
                    label: Text(
                      title,
                      style: AppTextTheme.smallTextMediumBlack,
                    ),
                  );
                },
              ).toList(),
            ),
          ),
        ),
        TextButton(
          onPressed: forward,
          child: SvgPicture.asset(AppIcons.right_arrow_ios),
        ),
      ],
    );
  }
}
