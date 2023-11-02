import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spotify/home/screens/login_screen.dart';
import 'package:spotify/kcolors.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify',
      theme: ThemeData(
        brightness: Brightness.light,
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
          brightness: Brightness.light,
          scaffoldBackgroundColor: KColors.bgColor,
          canvasColor: KColors.bgColor,
          fontFamily: 'Gotham'),
      themeMode: ThemeMode.dark,
      home: const LoginScreen(),
    );
  }
}
