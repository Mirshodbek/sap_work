import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sap_work/resources/small_widgets.dart';
import '../hunter/hunter.dart';

class ChatListItemWidget extends StatelessWidget {
  final String avatarUser;
  final String avatarCompany;
  final Chat chat;

  const ChatListItemWidget(
      {required this.chat,
      required this.avatarUser,
      required this.avatarCompany});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 35.0),
      child: ListTile(
        leading: chat.from_user == 1
            ? null
            : SmallWidgets.circleAvatar(
                url: avatarCompany, height: 40, width: 40),
        trailing: chat.from_user == 1
            ? SmallWidgets.circleAvatar(url: avatarUser, height: 20, width: 20)
            : null,
        title: Container(
          padding: const EdgeInsets.all(7.0),
          decoration: BoxDecoration(
            border: Border.all(width: 1.2),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5.0),
              topRight: Radius.circular(5.0),
              bottomLeft: Radius.circular(chat.from_user == 1 ? 5.0 : 0.0),
              bottomRight: Radius.circular(chat.from_user == 1 ? 0.0 : 5.0),
            ),
          ),
          child: Text(
            chat.body,
            style: AppTextTheme.smallSizeText,
          ),
        ),
      ),
    );
  }
}

class ChatTextField extends StatefulWidget {
  final Function(String value) onSubmitted;

  ChatTextField(this.onSubmitted);

  @override
  _ChatTextFieldState createState() => _ChatTextFieldState();
}

class _ChatTextFieldState extends State<ChatTextField> {
  final _messageController = TextEditingController();

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        color: AppColor.white,
        padding: const EdgeInsets.only(left: 18.0, right: 18.0, bottom: 18.0),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: _messageController,
                onSubmitted: (value) {
                  widget.onSubmitted(value);
                  _messageController.clear();
                },
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 12.0),
                  suffixIcon: IconButton(
                    onPressed: () => _messageController.clear(),
                    icon: SvgPicture.asset(AppIcons.clear),
                  ),
                  hintText: "Сообщение...",
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5.0),
                      bottomLeft: Radius.circular(5.0),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5.0),
                      bottomLeft: Radius.circular(5.0),
                    ),
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(5.0),
                      bottomRight: Radius.circular(5.0),
                    ),
                  ),
                ),
                padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(vertical: 12.0)),
                side: MaterialStateProperty.all(BorderSide()),
              ),
              child: SvgPicture.asset(AppIcons.upload_file),
            ),
          ],
        ),
      ),
    );
  }
}
