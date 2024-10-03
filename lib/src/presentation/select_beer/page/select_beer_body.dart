part of 'select_beer_page.dart';

class _SelectBeerPageBody extends HookWidget {
  const _SelectBeerPageBody();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final bloc = useBloc<SelectBeerBloc>();
    final state = useBlocBuilder(bloc);
    final isButtonsEnabled = !state.loading && !state.finished;

    useBlocComparativeListener<SelectBeerBloc, SelectBeerState>(
      bloc,
      (bloc, state, context) {
        if (state.error != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.error!),
              duration: const Duration(seconds: 1),
            ),
          );
        }

        if (state.finished) {
          unawaited(
            context.router.replace(
              BeerListRoute(
                beers: state.selectedBeers.toList(),
              ),
            ),
          );
        }
      },
      listenWhen: (previous, current) =>
          current.finished && !previous.finished ||
          current.error != null && previous.error != current.error,
    );

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Card(
            child: state.currentBeer == null
                ? const AspectRatio(
                    aspectRatio: 1,
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  )
                : BeerInfoCard(beer: state.currentBeer!),
          ),
          const SizedBox(height: 24),
          Text(
            '${state.selectedBeers.length + 1} / ${state.max}',
            style: TextStyle(
              fontSize: 24,
              color: theme.colorScheme.onPrimaryContainer,
            ),
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SelectButton.reject(
                onPressed: isButtonsEnabled
                    ? () => bloc.add(const OnBeerSelectedEvent(accept: false))
                    : null,
              ),
              SelectButton.accept(
                onPressed: isButtonsEnabled
                    ? () => bloc.add(const OnBeerSelectedEvent(accept: true))
                    : null,
              ),
            ],
          ),
          const Spacer(),
          if (state.preloadedBeer != null)
            Offstage(
              child: BeerImage(state.preloadedBeer!),
            ),
        ],
      ),
    );
  }
}
