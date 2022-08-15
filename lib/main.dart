import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pokemon_picture_book/model/pokemonimage/pokemonimage.dart';

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

  Future<void> fetchPokemon(String pokemonName) async {
    final generalResponse =
        await Dio().get('https://pokeapi.co/api/v2/pokemon/$pokemonName');
    final speciesResponese = await Dio()
        .get('https://pokeapi.co/api/v2/pokemon-species/$pokemonName');

    final pokemonImage = PokemonImage.fromJson(generalResponse.data['sprites']);

    pokemonImageURL = pokemonImage.imageURL ??
        'https://www.pokemoncenter-online.com/static/image/not_found/not_found_txt.jpg';
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
            Text('ピカチュウ'),
            Image.network(pokemonImageURL),
            Text('しっぽを　たてて　まわりの\nようすを　さぐっていると　ときどき\nかみなりが　しっぽに　おちてくる。')
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
