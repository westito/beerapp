import 'package:beer_app/src/assets/beer_icon.dart';
import 'package:beer_app/src/domain/entities/beer.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BeerImage extends StatelessWidget {
  final Beer beer;
  final bool narrowPadding;

  const BeerImage(
    this.beer, {
    this.narrowPadding = false,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: CachedNetworkImage(
        imageUrl: beer.image,
        fit: BoxFit.cover,
        errorWidget: (context, url, error) => ClipRRect(
          borderRadius: BorderRadius.circular(narrowPadding ? 4 : 8),
          child: Container(
            color: Colors.grey.shade300,
            padding: EdgeInsets.all(narrowPadding ? 8 : 32),
            child: Icon(
              Icons.error,
              color: Colors.grey.shade400,
            ),
          ),
        ),
        placeholder: (context, url) => ClipRRect(
          borderRadius: BorderRadius.circular(narrowPadding ? 4 : 8),
          child: Container(
            color: Colors.grey.shade300,
            padding: EdgeInsets.all(narrowPadding ? 8 : 32),
            child: CustomPaint(
              painter: BeerIconPainter(
                color: Colors.grey.shade400,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
