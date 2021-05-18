import 'package:get/get.dart';
import 'package:servdesk/pages/portals/data/portal_api_provider.dart';
import 'package:servdesk/pages/portals/data/portal_repository.dart';
import 'package:servdesk/pages/portals/presentation/controllers/portal_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IPortalProvider>(() => PortalProvider());
    // Get.lazyPut<IHomeRepository>(() => HomeRepository(provider: Get.find()));
    // Get.lazyPut(() => HomeController(homeRepository: Get.find()));
  }
}
