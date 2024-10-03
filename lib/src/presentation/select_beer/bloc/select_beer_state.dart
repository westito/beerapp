import 'package:beer_app/src/domain/entities/beer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'select_beer_state.freezed.dart';

@freezed
class SelectBeerState with _$SelectBeerState {
  const factory SelectBeerState({
    @Default(10) int max,
    @Default(false) bool loading,
    @Default(false) bool finished,
    String? error,
    Beer? currentBeer,
    Beer? preloadedBeer,
    @Default({}) Set<Beer> selectedBeers,
  }) = _SelectBeerState;
}

extension SelectBeerStateExt on SelectBeerState {
  bool get isLast => selectedBeers.length >= max - 1;
}
