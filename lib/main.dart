import 'package:flutter/material.dart';
import 'package:smart_campus/constants/app_colors.dart';
import 'package:smart_campus/controllers/theme_controller.dart';
import 'package:smart_campus/pages/home_page.dart';
import 'package:get/get.dart';
import 'package:smart_campus/utils/local_storage.dart';
import 'package:smart_campus/utils/navigation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalStorage.init();
  Get.lazyPut(() => ThemeController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();
    return Obx(
      () => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        themeMode: themeController.themeMode.value,
        theme: AppColors.lightTheme,
        darkTheme: AppColors.darkTheme,
        routerConfig: Navigation.router,
      ),
    );
  }
}
