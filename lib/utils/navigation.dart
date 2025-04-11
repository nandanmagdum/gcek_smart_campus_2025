import 'package:go_router/go_router.dart';
import 'package:smart_campus/data/documents_data.dart';
import 'package:smart_campus/models/document_list_model.dart';
import 'package:smart_campus/pages/home_page.dart';
import 'package:smart_campus/pages/important/admission_page.dart';
import 'package:smart_campus/pages/important/document_list_page.dart';
import 'package:smart_campus/pages/important/documents_page.dart';
import 'package:smart_campus/pages/important/scholarship_page.dart';
import 'package:smart_campus/pages/settings_page.dart';
import 'package:smart_campus/pages/temp.dart';

class Navigation {
  static const rootRoute = "/";
  static const settingsRoute = "/settings";
  static const admissionRoute = '/admission';
  static const documentsRoute = '/documents';
  static const documentListRoute = '/documents/list';
  static const scholarshipRoute = '/scholarship';

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
      GoRoute(
        path: admissionRoute,
        builder: (context, state) {
          return AdmissionPage();
        },
      ),
      GoRoute(
        path: documentsRoute,
        builder: (context, state) {
          return DocumentsPage();
        },
      ),
      GoRoute(
        path: documentListRoute,
        builder: (context, state) {
          final categoryName = state.extra as String;
          return DocumentListPage(categoryName: categoryName);
        },
      ),
      GoRoute(
        path: scholarshipRoute,
        builder: (context, state) {
          return ScholarshipPage();
        },
      )
    ],
  );
}
