import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_campus/constants/app_colors.dart';
import 'package:smart_campus/controllers/theme_controller.dart';
import 'package:smart_campus/utils/navigation.dart';
import 'package:smart_campus/widgets/primary_app_bar.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();
    return Obx(
      () => Scaffold(
        appBar: PrimaryAppBar(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Switch(
            value: themeController.isDarkMode.value,
            onChanged: (value) {
              themeController.toggleTheme(value);
            },
          ),
        ),
        backgroundColor: ThemeController.scaffoldBackgroudColor.value,
        body: Padding(
          padding: EdgeInsetsDirectional.symmetric(
            horizontal: 10,
            vertical: 12,
          ),
          child: Column(
            children: [
              Text(
                "Hello",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
