import 'package:act2_flutterjson/Screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      title: 'ACTIVIDAD 2',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.indigo,
            brightness: Brightness.light),
        textTheme: GoogleFonts.latoTextTheme(textTheme).copyWith(
          bodyMedium:GoogleFonts.oswald(textStyle: textTheme.bodyMedium),
        )
      ),

      home: const HomeScreen(),
    );
  }
}

