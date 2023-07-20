import 'dart:async';
import 'package:chat/data/dto/dialog_dto/dialog_dto.dart';
import 'package:chat/data/mock_data/mock_dialog.dart';
import 'package:chat/domain/models/dialog/dialog_model.dart';
import 'package:chat/domain/repository/i_dialog_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IDialogRepository)
class DialogRepository implements IDialogRepository {
  @override
  FutureOr<DialogModel> getDialog(int id) {
    final response = MockDialog.value(id);
    return DialogDto.toModel(DialogDto.fromMap(response));
  }
}
