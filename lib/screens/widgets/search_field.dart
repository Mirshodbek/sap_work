import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sap_work/resources/icons.dart';
import 'package:sap_work/resources/theme/color_theme.dart';
import 'package:sap_work/resources/theme/text_theme.dart';

class SearchFieldWidget extends StatefulWidget {
  final String hintText;
  final VoidCallback onPressed;
  final Function(String value) onChanged;

  SearchFieldWidget(
      {Key? key,
      required this.onChanged,
      required this.onPressed,
      required this.hintText})
      : super(key: key);

  @override
  _SearchFieldWidgetState createState() => _SearchFieldWidgetState();
}

class _SearchFieldWidgetState extends State<SearchFieldWidget> {
  final _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            onChanged: widget.onChanged,
            decoration: InputDecoration(
              prefixIcon: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 5.0),
                child: SvgPicture.asset(AppIcons.search),
              ),
              contentPadding: EdgeInsets.zero,
              hintText: widget.hintText,
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
          onPressed: widget.onPressed,
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
