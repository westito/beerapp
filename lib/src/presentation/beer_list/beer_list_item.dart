import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:beer_app/src/app/router.dart';
import 'package:beer_app/src/domain/entities/beer.dart';
import 'package:beer_app/src/presentation/widgets/beer_image.dart';
import 'package:flutter/material.dart';

class BeerListItem extends StatelessWidget {
  final Beer beer;

  const BeerListItem({
    required this.beer,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(beer.name),
      subtitle: Text(beer.price),
      leading: Hero(
        tag: 'beer-image-${beer.id}',
        child: BeerImage(beer, narrowPadding: true),
      ),
      onTap: () {
        unawaited(context.router.push(BeerDetailsRoute(beer: beer)));
      },
    );
  }
}
