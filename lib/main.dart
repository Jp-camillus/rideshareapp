import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';

import 'bindings/app_bindings.dart';
import 'route/app_routes.dart';
import 'route/app_pages.dart';

import 'theme/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // Make app always in portrait
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final appThemes = Get.put(AppThemes(), permanent: true);
    return ScreenUtilInit(
      designSize: const Size(440, 956),
      builder:
          (context, child) => Obx(() {
            return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Rideshare App',
              theme: appThemes.lightTheme,
              darkTheme: appThemes.darkTheme,
              themeMode: appThemes.themeMode.value,
              initialBinding: AppBinding(),
              initialRoute: AppRoutes.welcomeScreen,
              getPages: AppPages.routes,
            );
          }),
    );
  }
}
