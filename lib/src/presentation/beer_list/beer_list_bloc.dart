import 'package:beer_app/src/domain/entities/beer.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class BeerListBloc extends Bloc<BeerListEvent, BeerListState> {
  final List<Beer> beers;

  BeerListBloc({
    @factoryParam required this.beers,
  }) : super(BeerListState(beers: beers)) {
    on<BeerListSearchEvent>(
      (event, emit) async {
        if (event.search.isEmpty) {
          emit(BeerListState(beers: beers));
          return;
        }

        await Future<void>.delayed(
          const Duration(milliseconds: 500),
        );

        final filtered =
            beers.where((beer) => beer.search.startsWith(event.search));

        emit(
          BeerListState(
            beers: filtered.toList(),
            search: event.search,
          ),
        );
      },
      transformer: restartable(),
    );
  }
}

class BeerListState extends Equatable {
  final String search;
  final List<Beer> beers;

  @override
  List<Object?> get props => [search, beers];

  const BeerListState({
    required this.beers,
    this.search = '',
  });
}

sealed class BeerListEvent {
  const BeerListEvent();
}

class BeerListSearchEvent extends BeerListEvent {
  final String search;

  BeerListSearchEvent(String search) : search = search.toLowerCase();
}
