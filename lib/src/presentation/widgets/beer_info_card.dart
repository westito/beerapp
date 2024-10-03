import 'package:beer_app/src/domain/entities/beer.dart';
import 'package:beer_app/src/presentation/widgets/beer_image.dart';
import 'package:flutter/material.dart';

class BeerInfoCard extends StatelessWidget {
  final Beer beer;

  const BeerInfoCard({
    required this.beer,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Hero(
          tag: 'beer-image-${beer.id}',
          child: BeerImage(beer),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(beer.name, style: theme.textTheme.titleLarge),
              const SizedBox(height: 8),
              Text(beer.price),
            ],
          ),
        ),
      ],
    );
  }
}
