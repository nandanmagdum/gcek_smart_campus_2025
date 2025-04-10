import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_campus/constants/app_colors.dart';
import 'package:smart_campus/controllers/home_page_controller.dart';
import 'package:smart_campus/controllers/link_controller.dart';
import 'package:smart_campus/controllers/theme_controller.dart';
import 'package:smart_campus/utils/app_url_launcher.dart';
import 'package:smart_campus/utils/dynamic_links.dart';
import 'package:smart_campus/utils/navigation.dart';
import 'package:smart_campus/widgets/carousel_images.dart';
import 'package:smart_campus/widgets/contact_us_container.dart';
import 'package:smart_campus/widgets/primary_app_bar.dart';
import 'package:get/get.dart';
import 'package:smart_campus/widgets/title_container.dart';
import 'package:smart_campus/widgets/topic_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final LinkController linkController = Get.find();
    return Obx(
      () => Scaffold(
        appBar: PrimaryAppBar(),
        backgroundColor: ThemeController.scaffoldBackgroudColor.value,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsetsDirectional.symmetric(
              horizontal: 10,
              vertical: 12,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                ),
                CarouselImages(),
                SizedBox(
                  height: 20,
                ),
                TitleContainer(
                  title: 'Important',
                ),
                SizedBox(
                  height: 10,
                ),
                Wrap(
                  runSpacing: 10,
                  direction: Axis.horizontal,
                  alignment: WrapAlignment.center,
                  children: [
                    TopicContainer(
                      text: "Admission",
                      imagePath: 'assets/app_icons/admission.png',
                    ),
                    TopicContainer(
                      text: "Document",
                      imagePath: 'assets/app_icons/document.png',
                    ),
                    TopicContainer(
                      text: "Scholarship",
                      imagePath: 'assets/app_icons/scholarship.png',
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                TitleContainer(
                  title: 'News And Updates',
                ),
                SizedBox(
                  height: 10,
                ),
                Wrap(
                  runSpacing: 10,
                  direction: Axis.horizontal,
                  alignment: WrapAlignment.center,
                  children: [
                    TopicContainer(
                      text: 'MHT-CET',
                      imagePath: 'assets/app_icons/mht_cet.png',
                    ),
                    TopicContainer(
                      text: 'JEE Main',
                      imagePath: 'assets/app_icons/jee_main.png',
                    ),
                    TopicContainer(
                      text: 'Cap Round',
                      imagePath: 'assets/app_icons/cap_round.png',
                    ),
                    TopicContainer(
                      text: 'GCEK Web',
                      imagePath: 'assets/app_icons/gcek_logo.png',
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                TitleContainer(
                  title: 'About GCEK',
                ),
                SizedBox(
                  height: 10,
                ),
                Wrap(
                  direction: Axis.horizontal,
                  runSpacing: 10,
                  alignment: WrapAlignment.center,
                  children: [
                    TopicContainer(
                      text: 'About GCEK',
                      imagePath: 'assets/app_icons/about_gcek.png',
                    ),
                    TopicContainer(
                      text: 'Branches',
                      imagePath: 'assets/app_icons/branches.png',
                    ),
                    TopicContainer(
                      text: 'Placement',
                      imagePath: 'assets/app_icons/placement.png',
                    ),
                    TopicContainer(
                      text: 'College Clubs',
                      imagePath: 'assets/app_icons/campus_life.png',
                    ),
                    TopicContainer(
                      text: 'Facilities',
                      imagePath: 'assets/app_icons/facility.png',
                    ),
                    TopicContainer(
                      text: 'Placement Galary',
                      imagePath: 'assets/app_icons/placement.png',
                    ),
                    TopicContainer(
                      text: 'Services',
                      imagePath: 'assets/app_icons/services.png',
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                ContactUsContainer(),
                SizedBox(
                  height: 10,
                ),
                // TextButton(
                //   onPressed: () async {
                //     AppUrlLauncher.lauchTheUrl(linkController.links['test']);
                //   },
                //   child: Text("Test"),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
