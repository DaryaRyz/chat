import 'package:chat/domain/models/dialog/dialog_model.dart';
import 'package:chat/presentation/chat_details/widgets/dialog_header/dialog_header.dart';
import 'package:flutter/material.dart';

class DialogBody extends StatelessWidget {
  final DialogModel dialog;

  const DialogBody(this.dialog, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DialogHeader(dialog),
      ],
    );
  }
}
