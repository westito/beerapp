import 'package:beer_app/src/data/dto/beer_dto.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class Beer extends Equatable {
  final int id;
  final String name;
  final String image;
  final String price;
  final String search;

  @override
  List<Object?> get props => [id, name, image, price];

  const Beer({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.search,
  });

  @visibleForTesting
  factory Beer.withName(String name) => Beer(
        id: 0,
        name: name,
        image: '',
        price: '',
        search: '',
      );

  factory Beer.fromDto(BeerDto dto) => Beer(
        id: dto.id,
        name: dto.name,
        image: dto.image,
        price: dto.price,
        search: dto.name.toLowerCase(),
      );
}
