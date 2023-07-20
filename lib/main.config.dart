// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:chat/data/repository/chat_repository.dart' as _i4;
import 'package:chat/data/repository/dialog_repository.dart' as _i6;
import 'package:chat/domain/bloc/chat_cubit.dart' as _i7;
import 'package:chat/domain/bloc/dialog_cubit.dart' as _i8;
import 'package:chat/domain/repository/i_chat_repository.dart' as _i3;
import 'package:chat/domain/repository/i_dialog_repository.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.IChatRepository>(() => _i4.ChatRepository());
    gh.factory<_i5.IDialogRepository>(() => _i6.DialogRepository());
    gh.factory<_i7.ChatsCubit>(() => _i7.ChatsCubit(gh<_i3.IChatRepository>()));
    gh.factory<_i8.DialogCubit>(
        () => _i8.DialogCubit(gh<_i5.IDialogRepository>()));
    return this;
  }
}
