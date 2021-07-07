import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../hunter.dart';

class MessagesScreen extends StatelessWidget {
  static const String id = '/messages';

  const MessagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;
    return BlocProvider<NotificationsBloc>.value(
      value: arguments['notifications_bloc'],
      child: Scaffold(
        backgroundColor: AppColor.white,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          leading: BackWardWidget(
            () {
              Navigator.of(context).pop();
            },
          ),
          leadingWidth: MediaQuery.of(context).size.width,
          actions: [
            TextButton.icon(
              onPressed: () {},
              icon: Image.asset(AppImages.want),
              label: Text(
                "WANT",
                style: AppTextTheme.smallTextMediumBlack,
              ),
            ),
          ],
        ),
        body: Stack(
          children: [
            BlocConsumer<NotificationsBloc, NotificationsState>(
              listener: (context, state) {
                state.maybeMap(
                    orElse: () => state,
                    messagesState: (_state) {
                      if (_state.isSend == 3)
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("Ваш сообщение не оправлень")));
                    });
              },
              builder: (context, state) {
                return state.maybeMap(
                  orElse: () => Container(),
                  initial: (_) => Container(),
                  messagesState: (_state) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: ListView(
                            reverse: true,
                            children: List.generate(
                              _state.messages.length,
                              (index) {
                                final messages =
                                    _state.messages.reversed.toList();
                                final chat = messages[index];
                                return ChatListItemWidget(
                                  chat: chat,
                                  avatarCompany: "",
                                  avatarUser: "",
                                );
                              },
                            ),
                          ),
                        ),
                        _state.isSend == 1
                            ? Text(
                                "Сообщение отправляется...",
                                textAlign: TextAlign.center,
                                style: AppTextTheme.smallSizeText
                                    .copyWith(color: AppColor.grey),
                              )
                            : SizedBox.shrink(),
                        const SizedBox(
                          height: 10.0,
                        ),
                        ChatTextField((value) => context
                            .read<NotificationsBloc>()
                            .add(NotificationsEvent.sendMessage(text: value))),
                      ],
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
