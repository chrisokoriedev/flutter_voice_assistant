import 'package:flutter/material.dart';
import 'package:flutter_voice_assistant/pallete.dart';
import 'package:flutter_voice_assistant/view/home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(useMaterial3: true).copyWith(
            scaffoldBackgroundColor: Pallete.whiteColor,
            appBarTheme:
                const AppBarTheme(backgroundColor: Pallete.whiteColor)),
        home: const Homepage());
  }
}
