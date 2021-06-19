part of 'chat_cubit.dart';

@freezed
abstract class ChatState with _$ChatState{
  const factory ChatState.initial()=_InitialChatState;
  const factory ChatState.chat({required final List<Chat> chats}) = _ChatsChatState;
}

