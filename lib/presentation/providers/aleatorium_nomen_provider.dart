import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/config/config.dart';


final aleatoriumNomemProvider = StateProvider.autoDispose<String>((ref) {
  return AleatoriumGenerator.getAleatoriumNomen();
});