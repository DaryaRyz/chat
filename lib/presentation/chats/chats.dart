import 'package:chat/domain/bloc/chat_cubit.dart';
import 'package:chat/presentation/chats/widgets/chat_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  final _chatsCubit = GetIt.I<ChatsCubit>();

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
              isSelected: false,
              onTap: (){},
            ),
          );
        }
        return const SizedBox();
      },
    );
  }
}
