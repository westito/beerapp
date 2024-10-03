import 'package:beer_app/src/domain/entities/beer.dart';
import 'package:beer_app/src/domain/repository/beer_repository.dart';
import 'package:beer_app/src/presentation/select_beer/bloc/select_beer_bloc.dart';
import 'package:beer_app/src/presentation/select_beer/bloc/select_beer_events.dart';
import 'package:beer_app/src/presentation/select_beer/bloc/select_beer_state.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'utils.dart';
import 'widget_test.mocks.dart';

@GenerateMocks([BeerRepository])
Future<void> main() async {
  late MockBeerRepository mockBeerRepository;

  setUp(() {
    mockBeerRepository = MockBeerRepository();
  });

  blocTest<SelectBeerBloc, SelectBeerState>(
    'initial state is correct',
    build: () => SelectBeerBloc(mockBeerRepository),
    setUp: () {
      when(mockBeerRepository.getRandomBeer()).thenAnswerInOrder([
        Beer.withName('Beer1'),
        Beer.withName('Beer2'),
      ]);
    },
    act: (bloc) => bloc.add(const OnLoadEvent()),
    expect: () => [
      SelectBeerState(
        currentBeer: Beer.withName('Beer1'),
      ),
      SelectBeerState(
        currentBeer: Beer.withName('Beer1'),
        preloadedBeer: Beer.withName('Beer2'),
      ),
    ],
  );

  blocTest<SelectBeerBloc, SelectBeerState>(
    'select beer',
    build: () => SelectBeerBloc(mockBeerRepository),
    setUp: () {
      when(mockBeerRepository.getRandomBeer()).thenAnswerInOrder([
        Beer.withName('Beer1'),
        Beer.withName('Beer2'),
        Beer.withName('Beer3'),
      ]);
    },
    act: (bloc) {
      bloc
        ..add(const OnLoadEvent())
        ..add(const OnBeerSelectedEvent(accept: true))
        ..add(const OnBeerSelectedEvent(accept: true));
    },
    expect: () => [
      SelectBeerState(
        currentBeer: Beer.withName('Beer1'),
      ),
      SelectBeerState(
        loading: true,
        currentBeer: Beer.withName('Beer1'),
      ),
      SelectBeerState(
        currentBeer: Beer.withName('Beer1'),
        preloadedBeer: Beer.withName('Beer2'),
      ),
      SelectBeerState(
        currentBeer: Beer.withName('Beer2'),
        selectedBeers: {Beer.withName('Beer1')},
      ),
      SelectBeerState(
        currentBeer: Beer.withName('Beer2'),
        preloadedBeer: Beer.withName('Beer3'),
        selectedBeers: {Beer.withName('Beer1')},
      ),
    ],
  );

  final beerList = List.generate(
    14,
    (index) => Beer.withName('Beer${index + 1}'),
  );

  blocTest<SelectBeerBloc, SelectBeerState>(
    'select all beers',
    build: () => SelectBeerBloc(mockBeerRepository),
    setUp: () {
      when(mockBeerRepository.getRandomBeer()).thenAnswerInOrder(beerList);
    },
    act: (bloc) {
      bloc.add(const OnLoadEvent());
      for (var i = 0; i < 11; i++) {
        bloc.add(const OnBeerSelectedEvent(accept: true));
      }
    },
    skip: 21,
    expect: () => [
      SelectBeerState(
        finished: true,
        currentBeer: Beer.withName('Beer10'),
        preloadedBeer: Beer.withName('Beer11'),
        selectedBeers: beerList.sublist(0, 10).toSet(),
      ),
    ],
  );

  blocTest<SelectBeerBloc, SelectBeerState>(
    'select more than 10 beers (skips events after finished)',
    build: () => SelectBeerBloc(mockBeerRepository),
    setUp: () {
      when(mockBeerRepository.getRandomBeer()).thenAnswerInOrder(beerList);
    },
    act: (bloc) {
      bloc.add(const OnLoadEvent());
      for (var i = 0; i < 12; i++) {
        bloc.add(const OnBeerSelectedEvent(accept: true));
      }
    },
    skip: 21,
    expect: () => [
      SelectBeerState(
        finished: true,
        currentBeer: Beer.withName('Beer10'),
        preloadedBeer: Beer.withName('Beer11'),
        selectedBeers: beerList.sublist(0, 10).toSet(),
      ),
    ],
  );

  blocTest<SelectBeerBloc, SelectBeerState>(
    'skip first three beers',
    build: () => SelectBeerBloc(mockBeerRepository),
    setUp: () {
      when(mockBeerRepository.getRandomBeer()).thenAnswerInOrder(beerList);
    },
    act: (bloc) {
      bloc
        ..add(const OnLoadEvent())
        ..add(const OnBeerSelectedEvent(accept: false))
        ..add(const OnBeerSelectedEvent(accept: false))
        ..add(const OnBeerSelectedEvent(accept: false));
      for (var i = 0; i < 10; i++) {
        bloc.add(const OnBeerSelectedEvent(accept: true));
      }
    },
    skip: 25,
    expect: () => [
      SelectBeerState(
        finished: true,
        currentBeer: Beer.withName('Beer12'),
        preloadedBeer: Beer.withName('Beer13'),
        selectedBeers: beerList.sublist(2, 12).toSet(),
      ),
    ],
  );
}
