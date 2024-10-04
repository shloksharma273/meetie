import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:meetie/screens/home_screens.dart';
import 'package:meetie/screens/login_screen.dart';
import 'package:meetie/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meetiee',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/home' : (context) => const HomeScreens(),
      },
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const LoginScreen(),
    );
  }
}
