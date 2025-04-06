import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:smart_campus/constants/app_colors.dart';

class TitleContainer extends StatelessWidget {
  final String title;
  const TitleContainer({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Animate(
      effects: [
        FadeEffect(),
        SlideEffect(),
      ],
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: AppColors.palate2,
          borderRadius: BorderRadius.circular(12),
        ),
        width: MediaQuery.of(context).size.width * 0.9,
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
