import 'package:beer_app/src/domain/entities/beer.dart';

abstract class BeerRepository {
  const BeerRepository();

  Future<Beer?> getRandomBeer();
}
