import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sap_work/bloc/hunter/filter/filter_bloc.dart';

import '../../../hunter.dart';

class ListItems extends StatefulWidget {
  final List<String> data;
  final Function(String value) onTap;

  const ListItems(this.data, this.onTap);

  @override
  _ListItemsState createState() => _ListItemsState();
}

class _ListItemsState extends State<ListItems> {
  final _queryController = TextEditingController();

  @override
  void initState() {
    _queryController.addListener(() {
      BlocProvider.of<FilterBloc>(context)
          .add(FilterEvent.search(search: _queryController.text));
    });
    _queryController.clear();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          autofocus: true,
          controller: _queryController,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 12.0),
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 5.0),
              child: SvgPicture.asset(AppIcons.search),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5.0),
                topRight: Radius.circular(5.0),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5.0),
                topRight: Radius.circular(5.0),
              ),
            ),
          ),
        ),
        LimitedBox(
          maxHeight: MediaQuery.of(context).size.height / 1.5,
          child: Container(
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(5.0),
                bottomRight: Radius.circular(5.0),
              ),
              border: Border.all(),
            ),
            child: widget.data.isNotEmpty
                ? ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () {
                          widget.onTap(widget.data[index]);
                          Navigator.of(context).pop();
                        },
                        title: Text(
                          widget.data[index],
                          style: AppTextTheme.smallTextBlack,
                        ),
                      );
                    },
                    itemCount: widget.data.length,
                  )
                : Text(
                    "Не найдено",
                    style: AppTextTheme.smallTextBlack,
                  ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _queryController.dispose();
    super.dispose();
  }
}
