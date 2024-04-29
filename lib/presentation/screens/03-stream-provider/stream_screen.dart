import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/presentation/providers/aleatorium_nomina_provider.dart';

class StreamScreen extends ConsumerWidget {
  const StreamScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final aleatoriumNomina$ = ref.watch(nominaStreamProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Stream provider'),
        ),
        body: aleatoriumNomina$.when(
            data: (data) => ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) =>
                      ListTile(title: Text(data[index])),
                ),
            error: (error, stackTrace) => Text('Error: $error'),
            loading: () => const Center(
                  child: CircularProgressIndicator(),
                )));
  }
}
