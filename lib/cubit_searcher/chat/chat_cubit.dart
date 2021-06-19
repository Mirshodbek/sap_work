import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sap_work/screens/hunter/hunter.dart';

part 'chat_cubit.freezed.dart';

part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  final HunterRepositoryBase _repository;
  late final StreamSubscription subscription;
  List<Chat> _chats = [];

  ChatCubit(this._repository) : super(ChatState.initial()) {
    init();
  }

  void init() {
    subscription = _repository.getChats().listen((chats) {
      _chats = chats;
      _updateChat();
    });
  }

  void addMessage(String text) {
    _chats = [
      Chat(
        text: text,
        profileImage: AppImages.profile_section,
        isMe: true,
      ),
      ..._chats,
    ];
    _updateChat();
  }

  void _updateChat() {
    emit(ChatState.chat(chats: _chats));
  }

  @override
  Future<void> close() {
    subscription.cancel();
    return super.close();
  }
}
