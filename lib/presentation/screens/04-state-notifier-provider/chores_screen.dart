import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/presentation/providers/chores_provider.dart';

class ChoresScreen extends ConsumerWidget {
  const ChoresScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de invitados'),
      ),
      body: const _ChoresView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          ref.read(choresProvider.notifier).addeUnumChore();
        },
      ),
    );
  }
}

class _ChoresView extends ConsumerWidget {
  const _ChoresView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chores = ref.watch(choresProvider);
    return ListView.builder(
      itemCount: chores.length,
      itemBuilder: (context, index) {
        final chore = chores[index];
        return SwitchListTile(
            title: Text(chore.descriptione,
                style: const TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text(chore.completaIn != null ? chore.completaIn.toString() : '¿Cuándo?' ),
            value: chore.factum, // True o False
            onChanged: (value) {
              ref.read(choresProvider.notifier).mutareChoreTempus(chore.id);
            });
      },
    );
  }
}
