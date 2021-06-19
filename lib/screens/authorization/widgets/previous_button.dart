import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../authorization.dart';

class PreviousButton extends StatelessWidget implements PreferredSizeWidget {

  const PreviousButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      automaticallyImplyLeading: false,
      bottom: PreferredSize(
        preferredSize: preferredSize,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: TextButton(
              onPressed: ()=>Navigator.of(context).pop(),
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(0.0),
                padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(vertical: 24.0)),
                side: MaterialStateProperty.all(
                  BorderSide(
                    color: AppColor.white,
                    width: 1.0,
                  ),
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
              child: SvgPicture.asset(
                AppIcons.left_arrow,
                color: AppColor.white,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 20.0);
}
