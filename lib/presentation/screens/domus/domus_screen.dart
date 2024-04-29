import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DomusScreen extends StatelessWidget {
  const DomusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RiverApp'),
        centerTitle: true,
      ),
      body: _DomusScreenVisum(),
    );
  }
}

class _DomusScreenVisum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        _AdaptaListTitle(titulus: "State provider", subtitulus: "Un estado simple", locus: "/state-provider",),
        _AdaptaListTitle(titulus: "Future provider", subtitulus: "Un simple future + family", locus: "/future-provider",)

      ],
    );
  }
}

class _AdaptaListTitle extends StatelessWidget {
  final String titulus;
  final String subtitulus;
  final String locus;

  const _AdaptaListTitle({
    required this.titulus,
    required this.subtitulus,
    required this.locus,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(titulus),
      subtitle: Text(subtitulus),
      trailing: const Icon(Icons.arrow_forward_ios_rounded),
      onTap: () => context.push(locus),
    );
  }
}
