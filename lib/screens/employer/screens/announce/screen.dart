import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../employer.dart';

class AnnounceScreenE extends StatelessWidget {
  final scroll = PageController();

  AnnounceScreenE({Key? key}) : super(key: key);

  static Widget create(BuildContext context) {
    return AnnounceScreenE();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(AppIcons.settings),
        ),
      ),
      bottomNavigationBar: BottomNavBarWidget(context.watch<NavigationCubit>().state),
      body: BlocConsumer<AnnounceECubit, AnnounceEState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return state.map(
            loading: (_) => Container(),
            loaded: (_data) {
              return ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      children: [
                        RowAnnounce(),
                        SizedBox(
                          height: 25.0,
                        ),
                        Links(),
                        AnnounceTitleList(
                          _data.announceTitles,
                          () => BlocProvider.of<AnnounceECubit>(context)
                              .addAnnounce(),
                          () => BlocProvider.of<AnnounceECubit>(context)
                              .previous(true),
                          () => BlocProvider.of<AnnounceECubit>(context)
                              .forward(true),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 1.2,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 1.5,
                    child: PageView(
                      controller: context.select(
                          (AnnounceECubit value) => value.announceController),
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        if (_data.isAdd) FormAnnounce(_data),
                        ..._data.announce.map((data) {
                          return PublishedAnnounce(data);
                        }).toList(),
                      ]
                          .map((widget) => SingleChildScrollView(child: widget))
                          .toList(),
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
