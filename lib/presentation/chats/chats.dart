import 'package:chat/domain/bloc/chat_cubit.dart';
import 'package:chat/presentation/chats/widgets/chat_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class Chats extends StatefulWidget {
  final Function(int) onTap;

  const Chats({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  final _chatsCubit = GetIt.I<ChatsCubit>();
  int? _selectedChatId;

  @override
  void dispose() {
    _chatsCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: _chatsCubit,
      builder: (context, state) {
        if (state is ChatsLoadingState) {
          return const Center(child: CircularProgressIndicator()); //TODO Loading body
        } else if (state is ChatsErrorState) {
          return Container(); //TODO Error body
        } else if (state is ChatsReadyState) {
          return ListView.builder(
            itemCount: state.cardList.length,
            itemBuilder: (context, index) => ChatCard(
              state.cardList[index],
              isSelected: state.cardList[index].id == _selectedChatId,
              onTap: () {
                setState(() => _selectedChatId = state.cardList[index].id);
                widget.onTap(state.cardList[index].id);
              },
            ),
          );
        }
        return const SizedBox();
      },
    );
  }
}
