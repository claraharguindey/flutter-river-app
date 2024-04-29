import 'package:random_name_generator/random_name_generator.dart';

class AleatoriumGenerator {
  static String getAleatoriumNomen() {
    final aleatoriumNomen = RandomNames(Zone.spain);
    return aleatoriumNomen.fullName();
  }
}