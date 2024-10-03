// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

/// generated route for
/// [BeerDetailsPage]
class BeerDetailsRoute extends PageRouteInfo<BeerDetailsRouteArgs> {
  BeerDetailsRoute({
    required Beer beer,
    List<PageRouteInfo>? children,
  }) : super(
          BeerDetailsRoute.name,
          args: BeerDetailsRouteArgs(beer: beer),
          initialChildren: children,
        );

  static const String name = 'BeerDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BeerDetailsRouteArgs>();
      return BeerDetailsPage(beer: args.beer);
    },
  );
}

class BeerDetailsRouteArgs {
  const BeerDetailsRouteArgs({required this.beer});

  final Beer beer;

  @override
  String toString() {
    return 'BeerDetailsRouteArgs{beer: $beer}';
  }
}

/// generated route for
/// [BeerListPage]
class BeerListRoute extends PageRouteInfo<BeerListRouteArgs> {
  BeerListRoute({
    required List<Beer> beers,
    List<PageRouteInfo>? children,
  }) : super(
          BeerListRoute.name,
          args: BeerListRouteArgs(beers: beers),
          initialChildren: children,
        );

  static const String name = 'BeerListRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BeerListRouteArgs>();
      return BeerListPage(beers: args.beers);
    },
  );
}

class BeerListRouteArgs {
  const BeerListRouteArgs({required this.beers});

  final List<Beer> beers;

  @override
  String toString() {
    return 'BeerListRouteArgs{beers: $beers}';
  }
}

/// generated route for
/// [SelectBeerPage]
class SelectBeerRoute extends PageRouteInfo<void> {
  const SelectBeerRoute({List<PageRouteInfo>? children})
      : super(
          SelectBeerRoute.name,
          initialChildren: children,
        );

  static const String name = 'SelectBeerRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return SelectBeerPage();
    },
  );
}
