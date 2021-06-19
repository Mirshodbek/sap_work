import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../hunter.dart';

class ChatScreenS extends StatelessWidget {
  static const String id = '/chat';

  const ChatScreenS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          BlocBuilder<ChatCubit, ChatState>(
            builder: (context, state) {
              return state.map(
                initial: (_) => Container(),
                chat: (_chat) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 50.0),
                    child: ListView(
                      reverse: true,
                      children: List.generate(
                        _chat.chats.length,
                        (index) {
                          final chat = _chat.chats[index];
                          return ChatListItem(chat);
                        },
                      ),
                    ),
                  );
                },
              );
            },
          ),
          ChatTextField(),
        ],
      ),
    );
  }
}
