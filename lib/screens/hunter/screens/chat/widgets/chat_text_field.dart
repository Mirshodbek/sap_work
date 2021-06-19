import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../hunter.dart';

class ChatTextField extends StatelessWidget {
  final _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        color: AppColor.white,
        padding:
        const EdgeInsets.only(left: 18.0, right: 18.0, bottom: 18.0),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: _messageController,
                onSubmitted: (value){
                  BlocProvider.of<ChatCubit>(context).addMessage(value);
                },
                decoration: InputDecoration(
                  contentPadding:
                  const EdgeInsets.symmetric(horizontal: 12.0),
                  suffixIcon: IconButton(
                    onPressed: () =>_messageController.clear(),
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
