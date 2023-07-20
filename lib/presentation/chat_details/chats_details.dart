import 'package:chat/domain/bloc/dialog_cubit.dart';
import 'package:chat/gen/assets.gen.dart';
import 'package:chat/presentation/chat_details/widgets/dialog_body.dart';
import 'package:chat/presentation/chat_details/widgets/dialog_empty_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatsDetails extends StatelessWidget {
  final DialogCubit dialogCubit;

  const ChatsDetails(
    this.dialogCubit, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      decoration: BoxDecoration(
        border: Border(left: BorderSide(color: Colors.black.withOpacity(0.1))),
        image: DecorationImage(
          image: AssetImage(Assets.images.chatBackground.path),
          fit: BoxFit.cover,
        ),
      ),
      child: BlocBuilder(
        bloc: dialogCubit,
        builder: (context, state) {
          if (state is DialogLoadingState) {
            return const Center(child: CircularProgressIndicator()); //TODO Loading body
          } else if (state is DialogErrorState) {
            return Container(); //TODO Error body
          } else if (state is DialogReadyState) {
            return DialogBody(state.dialog);
          }
          return const DialogEmptyBody();
        },
      ),
    );
  }
}
