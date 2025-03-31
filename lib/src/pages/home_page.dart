import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GCEK Smart Campus"),
      ),
      body: Center(
        child: Text(
          "Welcome to GCEK Smart Campus App",
        ),
      ),
    );
  }
}
