import 'package:get/get.dart';
import 'package:servdesk/pages/home/data/home_api_provider.dart';


class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IHomeProvider>(() => HomeProvider());
    // Get.lazyPut<IHomeRepository>(() => HomeRepository(provider: Get.find()));
    // Get.lazyPut(() => HomeController(homeRepository: Get.find()));
  }
}
