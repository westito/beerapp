import 'package:beer_app/src/data/dto/beer_dto.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'beer_api.g.dart';

@singleton
@RestApi()
abstract class BeerApiClient {
  @factoryMethod
  factory BeerApiClient(Dio dio) = _BeerApiClient;

  @GET('https://api.sampleapis.com/beers/ale')
  Future<List<BeerDto>> getBeers();
}
