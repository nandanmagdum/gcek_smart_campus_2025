import 'package:go_router/go_router.dart';
import 'package:smart_campus/pages/home_page.dart';
import 'package:smart_campus/pages/settings_page.dart';
import 'package:smart_campus/pages/temp.dart';

class Navigation {
  static const rootRoute = "/";
  static const settingsRoute = "/settings";
  static final GoRouter router = GoRouter(
    initialLocation: rootRoute,
    routes: [
      GoRoute(
        path: rootRoute,
        builder: (context, state) {
          return HomePage();
        },
      ),
      GoRoute(
        path: settingsRoute,
        builder: (context, state) {
          return SettingsPage();
        },
      ),
    ],
  );
}
