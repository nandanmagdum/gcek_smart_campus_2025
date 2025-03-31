import 'package:flutter/material.dart';
import 'package:smart_campus/constants/app_colors.dart';
import 'package:smart_campus/controllers/theme_controller.dart';
import 'package:get/get.dart';

class PrimaryAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  const PrimaryAppBar({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();

    return Obx(
      () => AppBar(
        backgroundColor: themeController.isDarkMode.value
            ? AppColors.palate1
            : AppColors.palate3,
        title: Text(
          title ?? "GCEK Sphere",
          style: TextStyle(
            color: themeController.isDarkMode.value
                ? AppColors.palate4
                : AppColors.palate1,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
