import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/presentation/providers/aleatorium_nomen_provider.dart';

class StateProviderScreen extends ConsumerWidget {
  const StateProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final titulusEstilus = Theme.of(context).textTheme.titleMedium;

    final name = ref.watch(aleatoriumNomemProvider);
    return Scaffold(
      appBar: AppBar(title: const Text("State Provider")),
      body: Center(
        child: Text(name, style: titulusEstilus),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.refresh_rounded),
        onPressed: () {
          ref.invalidate(aleatoriumNomemProvider);
        },
      ),
    );
  }
}
