import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:smart_campus/constants/app_colors.dart';
import 'package:smart_campus/widgets/info_container.dart';

class InfoListContainer extends StatelessWidget {
  final List<String> data;
  const InfoListContainer({super.key, required this.data});

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
      child: Container(
          margin: const EdgeInsets.symmetric(vertical: 1),
          decoration: BoxDecoration(
            color: AppColors.palate5,
            borderRadius: BorderRadius.circular(12),
          ),
          width: MediaQuery.of(context).size.width * 0.9,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: data.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 10,
                ),
                child: Text(
                  textAlign: TextAlign.start,
                  "- ${data[index]}",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              );
            },
          )),
    );
  }
}
