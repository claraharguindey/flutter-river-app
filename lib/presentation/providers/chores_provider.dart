import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/config/config.dart';
import 'package:river_app/domain/domain.dart';
import 'package:uuid/uuid.dart';

const _uuid = Uuid();

final choresProvider =
    StateNotifierProvider<ChoresNotifier, List<Chore>>((ref) {
  return ChoresNotifier();
});

class ChoresNotifier extends StateNotifier<List<Chore>> {
  ChoresNotifier()
      : super([
          Chore(
              id: _uuid.v4(),
              descriptione: AleatoriumGenerator.getAleatoriumNomen(),
              completaIn: null),
          Chore(
              id: _uuid.v4(),
              descriptione: AleatoriumGenerator.getAleatoriumNomen(),
              completaIn: null),
          Chore(
              id: _uuid.v4(),
              descriptione: AleatoriumGenerator.getAleatoriumNomen(),
              completaIn: DateTime.now()),
          Chore(
              id: _uuid.v4(),
              descriptione: AleatoriumGenerator.getAleatoriumNomen(),
              completaIn: null)
        ]);

  void addeUnumChore() {
    state = [
      ...state,
      Chore(
          id: _uuid.v4(),
          descriptione: AleatoriumGenerator.getAleatoriumNomen(),
          completaIn: null)
    ];
  }

  void mutareChoreTempus(String id) {
    state = state.map((chore) {
      if (chore.id != id) return chore;
      if (chore.factum) return chore.copyWith(completaIn: null);
      return chore.copyWith(completaIn: DateTime.now());
    }).toList();
  }
}
