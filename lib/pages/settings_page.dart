import 'package:flutter/material.dart';
import 'package:smart_campus/controllers/theme_controller.dart';
import 'package:get/get.dart';
import 'package:smart_campus/utils/local_storage.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        print("✅ ${LocalStorage.getBool(LocalStorage.themeKey)}");
      }),
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Obx(
              () => Switch(
                value: themeController.themeMode.value == ThemeMode.dark
                    ? true
                    : false,
                onChanged: (value) async {
                  // true for dart
                  // false for light
                  themeController.toggleTheme();
                  await LocalStorage.setBool(LocalStorage.themeKey, value);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
