import 'package:url_launcher/url_launcher.dart';

class AppUrlLauncher {
  static void lauchTheUrl(URL) async {
    if (!await launchUrl(URL)) {
      throw Exception('Could not launch ${URL}');
    }
  }
}
