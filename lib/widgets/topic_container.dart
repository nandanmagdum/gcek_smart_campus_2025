import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:smart_campus/constants/app_colors.dart';

class TopicContainer extends StatelessWidget {
  final String text;
  final String imagePath;
  const TopicContainer(
      {super.key, required this.text, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Animate(
      effects: [
        FadeEffect(
          duration: Duration(
            milliseconds: 800,
          ),
        ),
        SlideEffect(
          begin: Offset(0, 2),
          end: Offset(0, 0),
          duration: Duration(
            seconds: 1,
          ),
        ),
      ],
      child: Padding(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 5),
        child: Material(
          elevation: 10,
          borderRadius: BorderRadius.circular(12),
          child: GestureDetector(
            onTap: () {
              HapticFeedback.heavyImpact();
            },
            child: Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.palate5,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    height: 50,
                    width: 50,
                    imagePath,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      text,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
