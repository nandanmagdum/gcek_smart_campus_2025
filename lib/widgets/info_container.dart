import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:smart_campus/constants/app_colors.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_campus/models/document_list_model.dart';
import 'package:smart_campus/utils/app_url_launcher.dart';
import 'package:smart_campus/utils/navigation.dart';

class InfoContainer extends StatelessWidget {
  final String title;
  final String? route;
  final double? fontSize;
  final FontWeight? fontWeight;
  const InfoContainer({
    super.key,
    required this.title,
    this.route,
    this.fontSize,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Animate(
      effects: [
        const FadeEffect(
          duration: Duration(
            milliseconds: 300,
          ),
        ),
        const SlideEffect(
          begin: Offset(0, 2),
          end: const Offset(0, 0),
          duration: Duration(
            seconds: 1,
          ),
        ),
      ],
      child: GestureDetector(
        onTap: () {
          if (route != null) {
            context.push(route!, extra: title);
          } else if (title.startsWith("+")) {
            AppUrlLauncher.launchPhone(title);
          }
        },
        child: Container(
            margin: const EdgeInsets.symmetric(vertical: 1),
            height: 50,
            decoration: BoxDecoration(
              color: AppColors.palate5,
              borderRadius: BorderRadius.circular(12),
            ),
            width: MediaQuery.of(context).size.width * 0.9,
            child: Center(
              child: Text(
                textAlign: TextAlign.start,
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: fontSize ?? 18,
                  fontWeight: fontWeight ?? FontWeight.bold,
                ),
              ),
            )),
      ),
    );
  }
}
