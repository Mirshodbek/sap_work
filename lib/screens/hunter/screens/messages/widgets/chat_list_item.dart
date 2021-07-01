import 'package:flutter/material.dart';
import '../../../hunter.dart';

class MessageListItemWidget extends StatelessWidget {
  final Message message;

  const MessageListItemWidget(this.message);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 35.0),
      child: ListTile(
        leading: message.from_user == 1
            ? null
            : CircleAvatar(
                radius: 15.0,
                backgroundImage: AssetImage(
                  AppImages.want,
                ),
              ),
        trailing: message.from_user == 1
            ? CircleAvatar(
                backgroundImage: AssetImage(AppImages.profile_section),
              )
            : null,
        title: Container(
          padding: const EdgeInsets.all(7.0),
          decoration: BoxDecoration(
            border: Border.all(width: 1.2),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5.0),
              topRight: Radius.circular(5.0),
              bottomLeft: Radius.circular(message.from_user == 1 ? 5.0 : 0.0),
              bottomRight: Radius.circular(message.from_user == 1 ? 0.0 : 5.0),
            ),
          ),
          child: Text(
            message.body,
            style: AppTextTheme.smallSizeText,
          ),
        ),
      ),
    );
  }
}
