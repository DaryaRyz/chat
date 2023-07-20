import 'package:chat/domain/models/chat_card_model.dart';
import 'package:chat/presentation/chats/widgets/marks_widget/mark.dart';
import 'package:chat/presentation/chats/widgets/marks_widget/show_all_marks_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MarksWidget extends StatefulWidget {
  final List<MarkModel>? marks;

  const MarksWidget(this.marks, {Key? key}) : super(key: key);

  @override
  State<MarksWidget> createState() => _MarksWidgetState();
}

class _MarksWidgetState extends State<MarksWidget> {
  bool _isShowAllMarks = false;

  @override
  Widget build(BuildContext context) {
    if (widget.marks != null && widget.marks!.isNotEmpty) {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(top: 5, bottom: 3),
        child: Row(
          children: [
            ...List.generate(
              widget.marks!.length > 4 && !_isShowAllMarks ? 4 : widget.marks!.length,
              (index) => Mark(mark: widget.marks![index]),
            ),
            if (widget.marks!.length > 4)
              ShowAllMarksButton(
                onChange: () => setState(() => _isShowAllMarks = !_isShowAllMarks),
                isShowAllMarks: _isShowAllMarks,
                markCount: widget.marks!.length - 4,
              ),
          ],
        ),
      );
    }
    return const SizedBox();
  }
}
