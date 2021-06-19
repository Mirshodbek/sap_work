import 'package:flutter/material.dart';

import '../../../hunter.dart';

class ChatListItem extends StatelessWidget {
  final Chat chat;
  const ChatListItem(this.chat);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 18.0, vertical: 35.0),
      child: ListTile(
        leading: chat.isMe
            ? null
            : CircleAvatar(
          radius: 15.0,
          backgroundImage: AssetImage(
            chat.profileImage,
          ),
        ),
        trailing: chat.isMe
            ? CircleAvatar(
          backgroundImage:
          AssetImage(chat.profileImage),
        )
            : null,
        title: Container(
          padding: const EdgeInsets.all(7.0),
          decoration: BoxDecoration(
            border: Border.all(
              width: 1.2,
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5.0),
              topRight: Radius.circular(5.0),
              bottomLeft:
              Radius.circular(chat.isMe ? 5.0 : 0.0),
              bottomRight:
              Radius.circular(chat.isMe ? 0.0 : 5.0),
            ),
          ),
          child: Text(
            chat.text,
            style: AppTextTheme.smallSizeText,
          ),
        ),
      ),
    );
  }
}
