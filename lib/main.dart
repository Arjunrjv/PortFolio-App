import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:portfolioapp/features/authentication/presentation/welcome_screen.dart';
import 'package:portfolioapp/features/jobs/presentation/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff0E101B),
        ),
      ),
      home: _auth.currentUser != null ? const HomePage() : const WelcomScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
