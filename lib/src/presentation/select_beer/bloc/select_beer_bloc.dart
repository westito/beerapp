import 'package:beer_app/src/domain/repository/beer_repository.dart';
import 'package:beer_app/src/presentation/select_beer/bloc/select_beer_events.dart';
import 'package:beer_app/src/presentation/select_beer/bloc/select_beer_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class SelectBeerBloc extends Bloc<SelectBeerEvent, SelectBeerState> {
  final BeerRepository _beerRepository;

  @visibleForTesting
  SelectBeerBloc(this._beerRepository)
      : super(const SelectBeerState(loading: true)) {
    on<OnLoadEvent>((event, emit) async {
      try {
        // Load first beer
        emit(
          state.copyWith(
            currentBeer: await _beerRepository.getRandomBeer(),
            loading: false,
          ),
        );

        // Preload next beer
        final beer = await _beerRepository.getRandomBeer();
        emit(
          state.copyWith(
            preloadedBeer: beer,
            loading: false,
          ),
        );
      } on Exception catch (e, s) {
        addError(e, s);
        emit(
          state.copyWith(
            error: e.toString(),
            loading: false,
          ),
        );
      }
    });

    on<OnBeerSelectedEvent>((event, emit) async {
      if (state.loading || state.finished) {
        return;
      }

      // Check last beer is selected
      if (state.isLast) {
        emit(
          state.copyWith(
            finished: true,
            selectedBeers: {
              ...state.selectedBeers,
              // Add beer to selected beers if accepted
              if (event.accept) state.currentBeer!,
            },
          ),
        );

        if (state.isLast) {
          return;
        }
      }

      // Check next beer loaded. If not, set loading state
      if (state.preloadedBeer == null) {
        emit(
          state.copyWith(
            loading: true,
          ),
        );

        if (state.error != null) {
          // Clear error state
          if (state.error != null) {
            emit(
              state.copyWith(
                error: null,
              ),
            );
          }

          // Retry loading
          await _preloadBeer(emit);
        }

        return;
      }

      // Replace current beer with the preloaded one and add the current beer
      // to selected beers if accepted
      emit(
        state.copyWith(
          currentBeer: state.preloadedBeer,
          preloadedBeer: null,
          selectedBeers: {
            ...state.selectedBeers,
            if (event.accept) state.currentBeer!,
          },
        ),
      );

      // Preload next beer
      await _preloadBeer(emit);
    });
  }

  @factoryMethod
  factory SelectBeerBloc.create(BeerRepository beerRepository) {
    return SelectBeerBloc(beerRepository)..add(const OnLoadEvent());
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    debugPrint('SelectBeerBloc error: $error');
    debugPrintStack(stackTrace: stackTrace);

    super.onError(error, stackTrace);
  }

  Future<void> _preloadBeer(Emitter<SelectBeerState> emit) async {
    try {
      final beer = await _beerRepository.getRandomBeer();
      emit(
        state.copyWith(
          preloadedBeer: beer,
          loading: false,
        ),
      );
    } on Exception catch (e, s) {
      addError(e, s);
      emit(
        state.copyWith(
          error: e.toString(),
          loading: false,
        ),
      );
    }
  }
}
