import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_campus/utils/local_storage.dart';

class ThemeController extends GetxController {
  Rx<ThemeMode> themeMode = LocalStorage.getBool(LocalStorage.themeKey) ?? false
      ? ThemeMode.dark.obs
      : ThemeMode.light.obs;

  void toggleTheme() {
    themeMode.value =
        themeMode.value == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
  }
}
