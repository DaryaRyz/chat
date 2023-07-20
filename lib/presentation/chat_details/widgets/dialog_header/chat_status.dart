import 'package:chat/domain/models/chat/chat_status_model.dart';
import 'package:chat/presentation/styles/color_styles.dart';
import 'package:flutter/material.dart';

class ChatStatus extends StatefulWidget {
  final ChatStatusModel status;

  const ChatStatus(
    this.status, {
    Key? key,
  }) : super(key: key);

  @override
  State<ChatStatus> createState() => _ChatStatusState();
}

class _ChatStatusState extends State<ChatStatus> {
  late bool _isOpen;

  @override
  void initState() {
    if (widget.status.type == ChatStatusType.open) {
      _isOpen = true;
    } else {
      _isOpen = false;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width < 850) return const SizedBox();

    return Row(
      children: [
        Transform.scale(
          scale: 0.8,
          child: Switch(
            activeTrackColor: ColorStyles.activeElementsTextColor,
            activeColor: Colors.white,
            value: _isOpen,
            onChanged: (value) => setState(() => _isOpen = value),
          ),
        ),
        const SizedBox(width: 9),
        Text(
          _isOpen ? 'Открыт' : 'Закрыт',
          style: TextStyle(
            color: _isOpen ? ColorStyles.activeElementsTextColor : ColorStyles.redColor,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
