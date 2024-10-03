import 'package:auto_route/annotations.dart';
import 'package:beer_app/src/domain/entities/beer.dart';
import 'package:beer_app/src/presentation/widgets/beer_info_card.dart';
import 'package:flutter/material.dart';

@RoutePage()
class BeerDetailsPage extends StatelessWidget {
  final Beer beer;

  const BeerDetailsPage({required this.beer});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(beer.name),
      ),
      backgroundColor: theme.colorScheme.primaryContainer,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Card(
                  child: BeerInfoCard(beer: beer),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    beer.price,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
