import 'package:get/get.dart';
import 'package:rideshareapp/route/app_routes.dart';

class BottomNavController extends GetxController {
  var selectedIndex = 0.obs;

  void changeIndex(int index) {
    selectedIndex.value = index;
    
  }

  // Method to set current index without navigation (useful for initial setup)
  void setCurrentIndex(int index) {
    selectedIndex.value = index;
  }
}