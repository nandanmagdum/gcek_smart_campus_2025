import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_campus/utils/navigation.dart';
import 'package:smart_campus/widgets/primary_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PrimaryAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
          ),
          Text(
            "Welcome to GCEK Sphere App",
            style: TextStyle(
              fontSize: 22,
            ),
          ),
        ],
      ),
    );
  }
}
