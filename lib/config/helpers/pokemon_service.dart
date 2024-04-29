import 'package:dio/dio.dart';

class PokemonService {
  static Future<String> getPokemon(int pokemonId) async {
    final dio = Dio();
    await Future.delayed(const Duration(seconds: 2));
    try {
      final response =
          await dio.get("https://pokeapi.co/api/v2/pokemon/$pokemonId");
      return response.data['name'];
    } catch (e) {
      throw 'Name not found';
    }
  }
}
