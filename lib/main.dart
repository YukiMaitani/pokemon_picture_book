import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pokemon_picture_book/model/pokemonimage/pokemonimage.dart';
import 'package:pokemon_picture_book/model/name/name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PokemonPictureBook(),
    );
  }
}

class PokemonPictureBook extends StatefulWidget {
  const PokemonPictureBook({Key? key}) : super(key: key);

  @override
  State<PokemonPictureBook> createState() => _PokemonPictureBoxState();
}

class _PokemonPictureBoxState extends State<PokemonPictureBook> {
  String pokemonImageURL =
      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png';
  String pokemonName = 'ピカチュウ';
  String pokemonDescription =
      'しっぽを　たてて　まわりの\nようすを　さぐっていると　ときどき\nかみなりが　しっぽに　おちてくる。';

  Future<void> fetchPokemon(String pokemon) async {
    final generalResponse =
        await Dio().get('https://pokeapi.co/api/v2/pokemon/$pokemon');
    final speciesResponese =
        await Dio().get('https://pokeapi.co/api/v2/pokemon-species/$pokemon');

    final pokemonImage = PokemonImage.fromJson(generalResponse.data['sprites']);
    final name = Name.fromJson(speciesResponese.data['names'][0]);
    final flavor_text_entries_lists =
        speciesResponese.data['flavor_text_entries'];
    var index = 0;
    for (var list in flavor_text_entries_lists) {
      if (list['language']['name'] != 'ja') {
        index += 1;
      } else {
        break;
      }
    }
    pokemonDescription = flavor_text_entries_lists[index]['flavor_text'];
    pokemonImageURL = pokemonImage.imageURL ??
        'https://www.pokemoncenter-online.com/static/image/not_found/not_found_txt.jpg';

    ///このNull安全処理はおそらく意味がない。
    ///画像の時は901とかでnullが返るから意味があったが、名前の場合nullはなく、そもそもAPIが失敗する
    ///もう一工夫必要と思われる
    pokemonName = name.name ?? '';
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextFormField(
          initialValue: 'pikachu',
          decoration: InputDecoration(fillColor: Colors.white, filled: true),
          onFieldSubmitted: (value) {
            fetchPokemon(value);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(pokemonName),
            Image.network(pokemonImageURL),
            Text(pokemonDescription)
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    fetchPokemon('pikachu');
  }
}
