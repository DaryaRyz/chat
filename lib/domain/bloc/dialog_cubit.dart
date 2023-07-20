import 'package:chat/domain/models/dialog/dialog_model.dart';
import 'package:chat/domain/repository/i_dialog_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@injectable
class DialogCubit extends Cubit<DialogState> {
  final IDialogRepository _repository;

  DialogCubit(this._repository) : super(DialogInitialState());

  Future<void> getDialog(int id) async {
    emit(DialogLoadingState());
    await Future.delayed(const Duration(seconds: 1));
    try {
      final response = await _repository.getDialog(id);
      emit(DialogReadyState(response));
    } catch (e) {
      Logger().e(e.toString());
      emit(DialogErrorState(e.toString()));
    }
  }
}

abstract class DialogState {}

class DialogInitialState extends DialogState {}

class DialogErrorState extends DialogState {
  final String errorText;

  DialogErrorState(this.errorText);
}

class DialogLoadingState extends DialogState {}

class DialogReadyState extends DialogState {
  final DialogModel dialog;

  DialogReadyState(this.dialog);
}
