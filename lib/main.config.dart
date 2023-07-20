// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:chat/data/repository/chat_repository.dart' as _i4;
import 'package:chat/domain/bloc/chat_cubit.dart' as _i5;
import 'package:chat/domain/repository/i_chat_repository.dart' as _i3;
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
    gh.factory<_i5.ChatsCubit>(() => _i5.ChatsCubit(gh<_i3.IChatRepository>()));
    return this;
  }
}
