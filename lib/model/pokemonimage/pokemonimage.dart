import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemonimage.freezed.dart';
part 'pokemonimage.g.dart';

@freezed
abstract class PokemonImage with _$PokemonImage {
  const factory PokemonImage(
      {@JsonKey(name: 'front_default') String? imageURL}) = _PokemonImage;

  factory PokemonImage.fromJson(Map<String, dynamic> json) =>
      _$PokemonImageFromJson(json);
}
