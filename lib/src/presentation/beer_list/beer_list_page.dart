import 'package:auto_route/annotations.dart';
import 'package:beer_app/src/domain/entities/beer.dart';
import 'package:beer_app/src/presentation/beer_list/beer_list_bloc.dart';
import 'package:beer_app/src/presentation/beer_list/beer_list_item.dart';
import 'package:beer_app/src/utils/hooks.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';

@RoutePage()
class BeerListPage extends HookWidget {
  final List<Beer> beers;

  const BeerListPage({
    required this.beers,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = useBlocWithParam<BeerListBloc>(beers);
    final state = useBlocBuilder(bloc);

    final searchController = useTextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Beer'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextField(
              controller: searchController,
              onChanged: (value) {
                bloc.add(BeerListSearchEvent(value));
              },
              decoration: const InputDecoration(
                labelText: 'Search',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: state.beers.length,
              itemBuilder: (context, index) {
                final beer = beers[index];
                return BeerListItem(beer: beer);
              },
            ),
          ),
        ],
      ),
    );
  }
}
