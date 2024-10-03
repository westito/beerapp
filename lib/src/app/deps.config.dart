// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:math' as _i407;

import 'package:beer_app/src/app/deps.dart' as _i1068;
import 'package:beer_app/src/app/router.dart' as _i545;
import 'package:beer_app/src/data/client/beer_api.dart' as _i621;
import 'package:beer_app/src/data/repository/remote_beer_repository.dart'
    as _i553;
import 'package:beer_app/src/domain/entities/beer.dart' as _i837;
import 'package:beer_app/src/domain/repository/beer_repository.dart' as _i1018;
import 'package:beer_app/src/presentation/beer_list/beer_list_bloc.dart'
    as _i362;
import 'package:beer_app/src/presentation/select_beer/bloc/select_beer_bloc.dart'
    as _i163;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    gh.singleton<_i545.AppRouter>(() => _i545.AppRouter());
    gh.singleton<_i361.Dio>(() => appModule.dio);
    gh.singleton<_i407.Random>(() => appModule.random);
    gh.factoryParam<_i362.BeerListBloc, List<_i837.Beer>, dynamic>((
      beers,
      _,
    ) =>
        _i362.BeerListBloc(beers: beers));
    gh.singleton<_i621.BeerApiClient>(
        () => _i621.BeerApiClient(gh<_i361.Dio>()));
    gh.singleton<_i1018.BeerRepository>(() => _i553.RemoteBeerRepository(
          gh<_i621.BeerApiClient>(),
          gh<_i407.Random>(),
        ));
    gh.factory<_i163.SelectBeerBloc>(
        () => _i163.SelectBeerBloc.create(gh<_i1018.BeerRepository>()));
    return this;
  }
}

class _$AppModule extends _i1068.AppModule {}
