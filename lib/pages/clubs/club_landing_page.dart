import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_campus/controllers/club_controller.dart';
import 'package:smart_campus/widgets/primary_app_bar.dart';

class ClubLandingPage extends StatelessWidget {
  const ClubLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ClubController clubController = Get.find();
    return Scaffold(
      appBar: PrimaryAppBar(
        title: 'GCEK Clubs',
      ),
      body: Obx(() {
        if (clubController.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        } else if (clubController.error.value != '') {
          return Center(
            child: Text(clubController.error.value),
          );
        } else if (clubController.clubs.isNotEmpty) {
          return ListView.builder(
            shrinkWrap: true,
            itemCount: clubController.clubs.length,
            itemBuilder: (context, index) {
              return Text(clubController.clubs[index].name ?? "");
            },
          );
        } else {
          return Center(child: Text("Something went wrong!"));
        }
      }),
    );
  }
}
