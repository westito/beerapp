import 'dart:math';

import 'package:beer_app/src/data/client/beer_api.dart';
import 'package:beer_app/src/domain/entities/beer.dart';
import 'package:beer_app/src/domain/repository/beer_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: BeerRepository)
class RemoteBeerRepository extends BeerRepository {
  final BeerApiClient _client;
  final Random _random;

  const RemoteBeerRepository(this._client, this._random);

  @override
  Future<Beer?> getRandomBeer() async {
    final beers = await _client.getBeers();
    // Mimic the old API that had a random beer endpoint
    final randomBeer = (beers..shuffle(_random)).firstOrNull;
    return randomBeer != null ? Beer.fromDto(randomBeer) : null;
  }
}
