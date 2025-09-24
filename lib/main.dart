import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/screen/Search_Trip_Section_(Passenger)/ratings.dart';
import 'package:rideshareapp/screen/applylogisticspartner/applyasalogisticspartner.dart';
import 'package:rideshareapp/screen/auth/signin/signin.dart';
import 'package:rideshareapp/screen/auth/signin/welcomescreen-signin.dart';
import 'package:rideshareapp/screen/auth/signup/create-your-account.dart';
import 'package:rideshareapp/screen/auth/signup/otp_verification_screen.dart';
import 'package:rideshareapp/screen/auth/signup/phone_number_verification.dart';
import 'package:rideshareapp/screen/auth/signup/review_picture_screen.dart';
import 'package:rideshareapp/screen/auth/signup/signupsuccessfull.dart';
import 'package:rideshareapp/screen/homescreen/tripoverview.dart';
import 'package:rideshareapp/screen/logistics/deliver_type.dart';
import 'package:rideshareapp/screen/logistics/farestimateandconfirmation.dart';
import 'package:rideshareapp/screen/logistics/homescreen.dart';
import 'package:rideshareapp/screen/logistics/pickupanddropoffdetails.dart';
import 'package:rideshareapp/screen/logistics/selectvehicletype.dart';
import 'package:rideshareapp/screen/nav/bottom_nav.dart';
import 'package:rideshareapp/screen/pasengeranddriversection/tripoverview.dart';
import 'package:rideshareapp/screen/pasengeranddriversection/upcomingtrippassenger.dart';

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

  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
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
              // initialRoute: AppRoutes.welcomeScreen,
              // getPages: AppPages.routes,
              home: Welcomescreensignin(),
            );
          }),
    );
  }
}
