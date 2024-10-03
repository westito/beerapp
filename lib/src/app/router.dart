import 'package:auto_route/auto_route.dart';
import 'package:beer_app/src/domain/entities/beer.dart';
import 'package:beer_app/src/presentation/beer_details/beer_details_page.dart';
import 'package:beer_app/src/presentation/beer_list/beer_list_page.dart';
import 'package:beer_app/src/presentation/select_beer/page/select_beer_page.dart';
import 'package:injectable/injectable.dart';

part 'router.gr.dart';

@singleton
@AutoRouterConfig(replaceInRouteName: 'Page|Screen|Dialog,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          path: '/',
          page: SelectBeerRoute.page,
        ),
        AutoRoute(path: '/beers', page: BeerListRoute.page),
        AutoRoute(path: '/beer', page: BeerDetailsRoute.page),
      ];
}
