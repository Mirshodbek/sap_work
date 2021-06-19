import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../employer.dart';

class MessagesEmployerScreen extends StatelessWidget {
  const MessagesEmployerScreen({Key? key}) : super(key: key);

  static Widget create(BuildContext context) {
    return MessagesEmployerScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: BottomNavBarWidget(context.watch<NavigationCubit>().state),
      body: BlocBuilder<PayCubit, PayState>(
        builder: (context, state) {
          return state.map(
            loading: (_) => Container(),
            loaded: (_data) {
              return SingleChildScrollView(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    Text(
                      "Отклики на вакансию",
                      style: AppTextTheme.mediumTextBlack,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    BlocBuilder<AnnounceECubit, AnnounceEState>(
                      builder: (context, state) {
                        return state.map(
                          loading: (_) => Container(),
                          loaded: (_data) {
                            return AnnounceTitleList(
                              _data.announceTitles,
                                  () =>BlocProvider.of<NavigationCubit>(context).onChanged(BottomNavItem.announces),
                                  () => BlocProvider.of<AnnounceECubit>(context)
                                  .previous(false),
                                  () => BlocProvider.of<AnnounceECubit>(context)
                                  .forward(false),
                            );
                          },
                        );
                      },
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                  Subscription(_data.isPayed),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Employee(_data.isPayed),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
