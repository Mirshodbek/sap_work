import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:sap_work/bloc/chat/chat_bloc.dart';
import 'package:sap_work/bloc/user/feedbacks_button/feedbacks_user_btn_cubit.dart';
import 'package:sap_work/resources/constants.dart';
import 'package:sap_work/resources/small_widgets.dart';
import 'package:sap_work/screens/widgets/chat.dart';
import 'package:sap_work/screens/widgets/loading.dart';
import 'package:sap_work/screens/widgets/backward.dart';
import 'package:sap_work/screens/widgets/row.dart';

import '../../../injection_container.dart';

class ChatScreenUser extends StatelessWidget {
  static const String id = 'chat_user';

  const ChatScreenUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;
    return BlocProvider<FeedbacksUserBtnCubit>.value(
      value: arguments[FEEDBACKS_USER_BTN_CUBIT],
      child: BlocBuilder<FeedbacksUserBtnCubit, FeedbacksUserBtnState>(
        builder: (context, state) {
          return state.maybeMap(
              orElse: () => const SizedBox.shrink(),
              chat: (_state) {
                return Scaffold(
                  appBar: AppBar(
                      elevation: 0.0,
                      backgroundColor: Colors.transparent,
                      leading:
                          BackWardWidget(() => Navigator.of(context).pop()),
                      leadingWidth: MediaQuery.of(context).size.width,
                      actions: [
                        RowProfileWidget(
                            url: _state.avatarUser, name: _state.name),
                      ]),
                  body: BlocProvider(
                    create: (context) => ChatBloc(sl(), sl(), sl(), sl())
                      ..add(
                          ChatEvent.getChats(id: _state.companyId, type: USER)),
                    child: BlocConsumer<ChatBloc, ChatState>(
                      listener: (context, state) {
                        state.maybeMap(
                            orElse: () => state,
                            loaded: (_state) {
                              if (_state.status.isSubmissionFailure) {
                                SmallWidgets.scaffoldMessage(
                                    context: context,
                                    message: "Нет доступ к интернету");
                              }
                            });
                      },
                      builder: (context, state) {
                        return state.map(
                            empty: (_) => const SizedBox.shrink(),
                            loading: (_) => LoadingChat(),
                            loaded: (_chat) {
                              return RefreshIndicator(
                                onRefresh: () async => context
                                    .read<ChatBloc>()
                                    .add(ChatEvent.getChats(
                                        id: _state.companyId, type: USER)),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Expanded(
                                        child: ListView(
                                      reverse: true,
                                      children: List.generate(
                                        _chat.chats.length,
                                        (index) {
                                          final chats =
                                              _chat.chats.reversed.toList();
                                          final chat = chats[index];
                                          return ChatListItemWidget(
                                            type: chat.from_user == 0,
                                            chat: chat,
                                            avatarUser: _state.avatarUser,
                                            avatarCompany: _state.avatarCompany,
                                          );
                                        },
                                      ),
                                    )),
                                    ChatTextFieldWidget((value) => context
                                        .read<ChatBloc>()
                                        .add(ChatEvent.postChat(
                                            id: _state.companyId,
                                            text: value,
                                            type: USER))),
                                  ],
                                ),
                              );
                            },
                            error: (_error) =>
                                Container(child: Text(_error.message)));
                      },
                    ),
                  ),
                );
              });
        },
      ),
    );
  }
}
