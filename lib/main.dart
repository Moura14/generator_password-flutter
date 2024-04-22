import 'package:flutter/material.dart';
import 'package:generator_password/screens/home_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Gerador de senhas',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          checkboxTheme: CheckboxThemeData(
              fillColor: MaterialStateColor.resolveWith((states) {
            if (states.contains(MaterialState.selected)) {
              return Colors.black;
            }
            return Colors.black;
          })),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
          useMaterial3: true,
        ),
        home: const HomeScreens());
  }
}
