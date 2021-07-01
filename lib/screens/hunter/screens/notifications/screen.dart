import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../hunter.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar:
          BottomNavBarWidget(context.watch<NavigationCubit>().state),
      body: BlocConsumer<NotificationsBloc, NotificationsState>(
        listener: (context, state) {
          if (state is NavigationNotificationsState) {
            Navigator.pushNamed(
              context,
              MessagesScreen.id,
              arguments: {
                "notifications_bloc": context.read<NotificationsBloc>()
              },
            );
          }
        },
        builder: (context, state) {
          return state.maybeMap(
            orElse: () => Container(),
            initial: (_) => SingleChildScrollView(
              padding: const EdgeInsets.all(18.0),
              child: InitialNotificationsWidget(),
            ),
            notificationsState: (_state) {
              return SingleChildScrollView(
                padding: const EdgeInsets.all(18.0),
                child: NotificationsWidget(_state.feedbacks),
              );
            },
          );
        },
      ),
    );
  }
}
