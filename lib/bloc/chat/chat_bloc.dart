import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sap_work/bloc/company/company.dart';
import 'package:sap_work/data_source/user/remote_data.dart';
import 'package:sap_work/models/chat/chat.dart';
import 'package:sap_work/repository/user/usercases/usercases.dart';

part 'chat_bloc.freezed.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final GetChatsCompany getChatsCompany;
  final GetChatsUser getChatsUser;
  final CompanyRemoteDataBase remoteCompanyData;
  final UserRemoteDataBase remoteUserData;

  ChatBloc(this.getChatsCompany, this.remoteCompanyData, this.getChatsUser,
      this.remoteUserData)
      : super(const ChatState.empty());

  @override
  Stream<ChatState> mapEventToState(ChatEvent event) async* {
    yield* event.map(getChats: _getChatsEvent, postChat: _postChatEvent);
  }

  Stream<ChatState> _getChatsEvent(_GetChatsEvent event) async* {
    yield const ChatState.loading();
    if (event.type == COMPANY) {
      final chats = await getChatsCompany(event.id);
      yield* chats.fold((failure) async* {
        yield ChatState.error(message: _mapFailureToMessage(failure));
      }, (chats) async* {
        yield ChatState.loaded(chats: chats, status: FormzStatus.pure);
      });
    } else{
      final chats = await getChatsUser(event.id);
      yield* chats.fold((failure) async* {
        yield ChatState.error(message: _mapFailureToMessage(failure));
      }, (chats) async* {
        yield ChatState.loaded(chats: chats, status: FormzStatus.pure);
      });
    }
  }

  Stream<ChatState> _postChatEvent(_PostChatEvent event) async* {
    if (event.text.isNotEmpty) {
      try {
       if(event.type==COMPANY) {
          yield state.maybeMap(
              orElse: () => state,
              loaded: (_state) =>
                  _state.copyWith(status: FormzStatus.submissionInProgress));
          final result = await remoteCompanyData.postChat(event.id, event.text);
          yield state.maybeMap(
              orElse: () => state,
              loaded: (_state) => _state.copyWith(
                  chats: result, status: FormzStatus.submissionSuccess));
        } else{
         yield state.maybeMap(
             orElse: () => state,
             loaded: (_state) =>
                 _state.copyWith(status: FormzStatus.submissionInProgress));
         final result = await remoteUserData.postChat(event.id, event.text);
         yield state.maybeMap(
             orElse: () => state,
             loaded: (_state) => _state.copyWith(
                 chats: result, status: FormzStatus.submissionSuccess));
       }
      } catch (_) {
        yield state.maybeMap(
            orElse: () => state,
            loaded: (_state) =>
                _state.copyWith(status: FormzStatus.submissionFailure));
      }
    }
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return SERVER_FAILURE_MESSAGE;
      case CacheFailure:
        return CACHE_FAILURE_MESSAGE;
      default:
        return 'Unexpected error';
    }
  }
}

@freezed
abstract class ChatEvent with _$ChatEvent {
  const factory ChatEvent.getChats(
      {required final int id, required final String type}) = _GetChatsEvent;

  const factory ChatEvent.postChat(
      {required final int id,
      required final String text,
      required final String type}) = _PostChatEvent;
}

@freezed
abstract class ChatState with _$ChatState {
  const factory ChatState.empty() = EmptyChatState;

  const factory ChatState.loading() = LoadingChatState;

  const factory ChatState.loaded(
      {required final List<Chat> chats,
      required final FormzStatus status}) = LoadedChatState;

  const factory ChatState.error({required final String message}) =
      ErrorChatState;
}
