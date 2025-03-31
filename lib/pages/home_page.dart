import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_campus/utils/navigation.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GCEK Smart Campus"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome to GCEK Smart Campus App",
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  context.push(Navigation.settingsRoute);
                },
                child: Text("Settings"))
          ],
        ),
      ),
    );
  }
}
