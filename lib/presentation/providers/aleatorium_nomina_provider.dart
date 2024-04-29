import 'package:flutter_riverpod/flutter_riverpod.dart';

final nominaStreamProvider = StreamProvider<List<String>>((ref) async* {
  await Future.delayed(const Duration(seconds: 2));
  yield [];
  await Future.delayed(const Duration(seconds: 2));
  yield ['Clara'];
  await Future.delayed(const Duration(seconds: 2));
  yield ['Clara', 'Isabel'];
  await Future.delayed(const Duration(seconds: 2));
  yield ['Clara', 'Isabel', 'Laura'];
});
