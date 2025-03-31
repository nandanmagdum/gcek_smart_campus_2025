import 'package:get/get.dart';
import 'package:smart_campus/utils/local_storage.dart';

class ThemeController extends GetxController {
  Rx<bool> isDarkMode =
      (LocalStorage.getBool(LocalStorage.themeKey) ?? false).obs;

  void toggleTheme(bool value) async {
    value ? isDarkMode.value = true : isDarkMode.value = false;
    await LocalStorage.setBool(LocalStorage.themeKey, value);
  }
}

// true for dark mode
// false for light theme