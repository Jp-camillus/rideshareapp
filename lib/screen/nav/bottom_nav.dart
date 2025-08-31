import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/bottom_nav_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rideshareapp/controllers/bottom_nav_controller.dart';

import '../../widget/bottomnav.dart';
import '../home/dashboard_home.dart';
import '../home/placeholder_screens.dart';

class MainDashboard extends GetView<BottomNavController> {
  const MainDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true, // <-- important for the pop-up/bump overflow
      
      body: Obx(() {
        switch (controller.selectedIndex.value) {
          case 0:
            return const DashboardHome();
          case 1:
            return const MyTripsScreen();
          case 2:
            return const ReceiptsScreen();
          case 3:
            return const AccountScreen();
          default:
            return const DashboardHome();
        }
      }),
      bottomNavigationBar: const CustomBottomNavWidget(),
    );
  }
}
