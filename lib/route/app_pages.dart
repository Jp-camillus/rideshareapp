import 'package:get/get.dart';
import 'package:rideshareapp/route/app_routes.dart';
import 'package:rideshareapp/screen/auth/signin/welcomescreen-signin.dart';

import '../screen/home/placeholder_screens.dart';
import '../screen/nav/bottom_nav.dart';

class AppPages {
  

  static final List<GetPage> routes = [
    GetPage(
      name: AppRoutes.welcomeScreen,
      page: () => Welcomescreensignin(),
    ),
    
    // Main App Routes
    GetPage(
      name: AppRoutes.dashboard,
      page: () => MainDashboard(),
    ),
    GetPage(
      name: AppRoutes.myTrips,
      page: () => MyTripsScreen(),
    ),
    GetPage(
      name: AppRoutes.receipts,
      page: () => ReceiptsScreen(),
    ),
    GetPage(
      name: AppRoutes.account,
      page: () => AccountScreen(),
    ),
    // Add more routes here
  ];
}
