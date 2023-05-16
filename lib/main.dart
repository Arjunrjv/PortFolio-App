import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'screens/portfolio_home.dart';

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
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff0E101B),
        ),
      ),
      home: const PortfolioHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}
