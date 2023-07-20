import 'package:chat/presentation/chat_details/chats_details.dart';
import 'package:chat/presentation/chats/chats.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.35,
            child: const Chats(),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.65,
            child: const ChatsDetails(),
          ),
        ],
      ),
    );
  }
}
