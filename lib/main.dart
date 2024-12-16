import 'package:fitness_time/vistes/main_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  initializeDateFormatting('ca', null).then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness Time',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xfff896d8)),
        scaffoldBackgroundColor: Color(0xfffef7ff),
        fontFamily: GoogleFonts.montserrat().fontFamily,
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xfff896d8),
          centerTitle: true,
        ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(
            fontSize: 18,
            color: Colors.black45,
          ),
        ),
      ),
      home: MainView(),
    );
  }
}
