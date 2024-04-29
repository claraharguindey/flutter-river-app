import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/config/config.dart';

final pokemonNomenProvider = FutureProvider.family<String, int>((ref, id) async {
  final nomen = await PokemonService.getPokemon(id);
  return nomen;
});

final pokemonIdProvider = StateProvider<int>((ref) {
  return 1;
});