import 'package:servdesk/pages/home/presentation/views/home_view.dart';
import 'package:servdesk/pages/notifications/presentation/views/notifications_view.dart';
import 'package:servdesk/pages/requests/presentation/views/requests_view.dart';
import 'package:servdesk/presentation/routes/routes.dart';
import 'package:get/get.dart';

class Application {
  static const INITIAL = Routes.ROOT;

  static final routes = [
    GetPage(
      name: Routes.ROOT,
      page: () => HomeView(),
      // binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.REQUESTS,
      page: () => RequestsView(),
      // binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.Notifications,
      page: () => NotificationsView(),
      // binding: HomeBinding(),
    ),
  ];
}
