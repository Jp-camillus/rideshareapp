import 'package:get/get.dart';

import '../controllers/auth_controller.dart';
import '../controllers/bottom_nav_controller.dart';
import '../services/navigation_service.dart';
import '../theme/app_theme.dart';


class AppBinding extends Bindings {
  @override
  void dependencies() {
    /// Services
    Get.put<NavigationService>(NavigationService(), permanent: true);

    /// P:Controllers
     Get.put<BottomNavController>(BottomNavController(), permanent: true); 
    // L:Controllers
     Get.lazyPut<LoginController>(() => LoginController());

    /// RepoImpl
    // Get.lazyPut<ProfileRepo>(() => ProfileRepoImpl());
  }
}
