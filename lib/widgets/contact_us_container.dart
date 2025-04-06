import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:smart_campus/constants/app_colors.dart';
import 'package:smart_campus/utils/app_url_launcher.dart';

class ContactUsContainer extends StatelessWidget {
  const ContactUsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        color: AppColors.palate1,
        borderRadius: BorderRadius.circular(
          12,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  "CONTACT US",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.palate4,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                divider_line(context),
                SizedBox(
                  height: 5,
                ),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    "Government College of Enginnering, Karad",
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.palate4,
                    ),
                  ),
                ),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    "(An Autonomous Instiute of Government of Mahartashtra)",
                    style: TextStyle(
                      fontSize: 10,
                      color: AppColors.palate4,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                divider_line(context),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customRichText(
                  firstText: 'Address',
                  secondText:
                      'Vidyanagar, Karad, Dist: Satara, Maharashtra (India) - 415124',
                ),
                SizedBox(
                  height: 10,
                ),
                customRichText(
                  firstText: 'Contact',
                  secondText: '9545272414',
                ),
                SizedBox(
                  height: 10,
                ),
                customRichText(
                  firstText: 'Visit Website',
                  secondText: 'https://www.gcekarad.ac.in',
                ),
                SizedBox(
                  height: 10,
                ),
                customRichText(
                  firstText: 'Email',
                  secondText: 'admin.mis@gcekarad.ac.in',
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            divider_line(context),
            SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                ),
                Text(
                  "Follow us",
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColors.palate4,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Wrap(
                  direction: Axis.horizontal,
                  spacing: 20,
                  runSpacing: 10,
                  children: [
                    SocialMediaIcon(
                      path: 'assets/app_icons/linkdin.png',
                      url:
                          'https://www.linkedin.com/school/government-college-of-engineering-karad-official/',
                    ),
                    SocialMediaIcon(
                      url: 'https://www.facebook.com/GCoEKarad/',
                      path: 'assets/app_icons/facebook.png',
                    ),
                    SocialMediaIcon(
                      url: 'https://www.youtube.com/@gcek',
                      path: 'assets/app_icons/youtube.png',
                    ),
                    SocialMediaIcon(
                      url: 'https://twitter.com/gcekarad',
                      path: 'assets/app_icons/twitter.png',
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    "© 2025 Campus Sphere. All rights reserved.",
                    style: TextStyle(
                      fontSize: 10,
                      color: AppColors.palate4,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                GestureDetector(
                  onTap: () async {
                    AppUrlLauncher.lauchTheUrl(
                      Uri.parse(
                        'https://github.com/nandanmagdum/campus_sphere_privacy_policy/blob/main/privacy-policy.md',
                      ),
                    );
                  },
                  child: Text(
                    'Privacy Policy',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 10,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector SocialMediaIcon({
    required String url,
    required String path,
  }) {
    return GestureDetector(
      onTap: () {
        AppUrlLauncher.lauchTheUrl(
          Uri.parse(
            url,
          ),
        );
      },
      child: Image.asset(
        path,
        height: 30,
        width: 30,
      ),
    );
  }

  RichText customRichText(
      {required String firstText, required String secondText}) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: firstText + ': ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: secondText,
            style: TextStyle(
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }

  Container divider_line(BuildContext context) {
    return Container(
      height: 2,
      width: MediaQuery.of(context).size.width,
      color: AppColors.palate4,
    );
  }
}
