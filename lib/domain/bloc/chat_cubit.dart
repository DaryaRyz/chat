import 'package:chat/domain/models/chat_card_model.dart';
import 'package:chat/domain/repository/i_chat_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@injectable
class ChatsCubit extends Cubit<ChatsState> {
  final IChatRepository _repository;

  ChatsCubit(this._repository) : super(ChatsInitialState()) {
    getChats();
  }

  Future<void> getChats() async {
    emit(ChatsLoadingState());
    await Future.delayed(const Duration(seconds: 1));
    try {
      final response = await _repository.getChats();
      emit(ChatsReadyState(cardList: response));
    } catch (e) {
      Logger().e(e.toString());
      emit(ChatsErrorState(e.toString()));
    }
  }
}

abstract class ChatsState {}

class ChatsInitialState extends ChatsState {}

class ChatsErrorState extends ChatsState {
  final String errorText;

  ChatsErrorState(this.errorText);
}

class ChatsLoadingState extends ChatsState {}

class ChatsReadyState extends ChatsState {
  final List<ChatCardModel> cardList;

  ChatsReadyState({required this.cardList});
}
