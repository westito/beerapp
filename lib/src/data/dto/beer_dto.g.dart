// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BeerDto _$BeerDtoFromJson(Map<String, dynamic> json) => BeerDto(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      price: json['price'] as String,
      image: json['image'] as String,
      rating: RatingDto.fromJson(json['rating'] as Map<String, dynamic>),
    );

RatingDto _$RatingDtoFromJson(Map<String, dynamic> json) => RatingDto(
      average: (json['average'] as num).toDouble(),
      reviews: (json['reviews'] as num).toInt(),
    );
