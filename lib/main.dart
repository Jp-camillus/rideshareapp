import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/screen/Search_Trip_Section_(Passenger)/ratings.dart';
import 'package:rideshareapp/screen/Search_Trip_Section_(Passenger)/tripdetails.dart';
import 'package:rideshareapp/screen/Search_Trip_Section_(Passenger)/upcomingtrip.dart';
import 'package:rideshareapp/screen/Search_Trip_Section_(Passenger)/upcomingtripoverview.dart';
import 'package:rideshareapp/screen/accountsettings/accountandsecurity.dart';
import 'package:rideshareapp/screen/accountsettings/addbankdetails.dart';
import 'package:rideshareapp/screen/accountsettings/addpaymentmethod.dart';
import 'package:rideshareapp/screen/accountsettings/bankcard.dart';
import 'package:rideshareapp/screen/accountsettings/changepassword.dart';
import 'package:rideshareapp/screen/accountsettings/help.dart';
import 'package:rideshareapp/screen/accountsettings/kycverification.dart';
import 'package:rideshareapp/screen/accountsettings/notifications.dart';
import 'package:rideshareapp/screen/accountsettings/paymenthistory.dart';
import 'package:rideshareapp/screen/accountsettings/paymentmethods.dart';
import 'package:rideshareapp/screen/accountsettings/profileview.dart';
import 'package:rideshareapp/screen/accountsettings/referandearnpaymenthistory.dart';
import 'package:rideshareapp/screen/accountsettings/shareandearnscreen.dart';
import 'package:rideshareapp/screen/accountsettings/supportchart.dart';
import 'package:rideshareapp/screen/accountsettings/vehicledetails.dart';
import 'package:rideshareapp/screen/accountsettings/vehicleinfo.dart';
import 'package:rideshareapp/screen/applylogisticspartner/applyasalogisticspartner.dart';
import 'package:rideshareapp/screen/auth/signin/signin.dart';
import 'package:rideshareapp/screen/auth/signin/welcomescreen-signin.dart';
import 'package:rideshareapp/screen/auth/signup/create-your-account.dart';
import 'package:rideshareapp/screen/auth/signup/otp_verification_screen.dart';
import 'package:rideshareapp/screen/auth/signup/phone_number_verification.dart';
import 'package:rideshareapp/screen/auth/signup/review_picture_screen.dart';
import 'package:rideshareapp/screen/auth/signup/signupsuccessfull.dart';
import 'package:rideshareapp/screen/auth/signup/welcomescreen-signup.dart';
import 'package:rideshareapp/screen/bookingrequest/bookingandrequest.dart';
import 'package:rideshareapp/screen/bookingrequest/postariderequest.dart';
import 'package:rideshareapp/screen/bookingrequest/requestdetails.dart';
import 'package:rideshareapp/screen/chatpage/chatdetailscreen.dart';
import 'package:rideshareapp/screen/chatpage/chatscreen.dart';
import 'package:rideshareapp/screen/homescreen/tripoverview.dart';
import 'package:rideshareapp/screen/kyc/vehicleinformation.dart';
import 'package:rideshareapp/screen/logistics/deliver_type.dart';
import 'package:rideshareapp/screen/logistics/farestimateandconfirmation.dart';
import 'package:rideshareapp/screen/logistics/homescreen.dart';
import 'package:rideshareapp/screen/logistics/pickupanddropoffdetails.dart';
import 'package:rideshareapp/screen/logistics/selectvehicletype.dart';
import 'package:rideshareapp/screen/nav/bottom_nav.dart';
import 'package:rideshareapp/screen/notification/notificationscreen.dart';
import 'package:rideshareapp/screen/onboarding/onboardingscreen.dart';
import 'package:rideshareapp/screen/pasengeranddriversection/tripoverview.dart';
import 'package:rideshareapp/screen/pasengeranddriversection/upcomingtrippassenger.dart';
import 'package:rideshareapp/userwalletsection/wallet.dart';

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
    MyApp(), // Wrap your app
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
              initialRoute: AppRoutes.onboarding,
              getPages: AppPages.routes,
              home: OnboardingScreen(),
            );
          }),
    );
  }
}
