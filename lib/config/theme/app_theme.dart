import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const radixColor = Color.fromARGB(255, 7, 80, 59);

class AppTheme {
  ThemeData getTheme() => ThemeData(
      colorSchemeSeed: radixColor,
      listTileTheme: const ListTileThemeData(iconColor: radixColor),
      textTheme: TextTheme(
        titleLarge: GoogleFonts.montserratAlternates(),
        titleMedium: GoogleFonts.russoOne(fontSize: 25),
      ));
}
