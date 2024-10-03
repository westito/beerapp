import 'package:json_annotation/json_annotation.dart';

part 'beer_dto.g.dart';

@JsonSerializable()
class BeerDto {
  final int id;
  final String name;
  final String price;
  final String image;
  final RatingDto rating;

  BeerDto({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
    required this.rating,
  });

  factory BeerDto.fromJson(Map<String, dynamic> json) =>
      _$BeerDtoFromJson(json);
}

@JsonSerializable()
class RatingDto {
  final double average;
  final int reviews;

  const RatingDto({
    required this.average,
    required this.reviews,
  });

  factory RatingDto.fromJson(Map<String, dynamic> json) =>
      _$RatingDtoFromJson(json);
}
