import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DomusScreen extends StatelessWidget {
  const DomusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clara app'),
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
        _AdaptaListTitle(titulus: "Future provider", subtitulus: "Un simple future + family", locus: "/future-provider",),
        _AdaptaListTitle(titulus: "Stream provider", subtitulus: "Un simple stream", locus: "/stream-provider",),
        _AdaptaListTitle(titulus: "State notifier provider", subtitulus: "Un simple stream", locus: "/state-notifier-provider",)
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
