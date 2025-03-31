import 'package:flutter/material.dart';

class PrimaryAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  const PrimaryAppBar({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title ?? "GCEK Sphere",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
