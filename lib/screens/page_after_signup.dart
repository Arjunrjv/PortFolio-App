import 'package:flutter/material.dart';

class PageAfterSignup extends StatelessWidget {
  const PageAfterSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Sign up Successfull!!'),
      ),
    );
  }
}
