import 'dart:async';
import 'package:chat/domain/models/dialog/dialog_model.dart';

abstract interface class IDialogRepository {
  FutureOr<DialogModel> getDialog(int id);
}
