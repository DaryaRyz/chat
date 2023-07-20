import 'package:chat/domain/bloc/dialog_cubit.dart';
import 'package:chat/presentation/chat_details/chats_details.dart';
import 'package:chat/presentation/chats/chats.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  final _dialogCubit = GetIt.I<DialogCubit>();

  @override
  void dispose() {
    _dialogCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.35,
            child: Chats(
              onTap: (id) => _dialogCubit.getDialog(id),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.65,
            child: ChatsDetails(_dialogCubit),
          ),
        ],
      ),
    );
  }
}
