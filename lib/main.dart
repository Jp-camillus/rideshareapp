import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:rideshareapp/screen/Search_Trip_Section_(Passenger)/booking_confirmation.dart';
import 'package:rideshareapp/screen/Search_Trip_Section_(Passenger)/matchingtriplist.dart';
import 'package:rideshareapp/screen/Search_Trip_Section_(Passenger)/search_trip_section_(passenger)1.dart';
import 'package:rideshareapp/screen/Search_Trip_Section_(Passenger)/search_trip_section_(passenger)2.dart';
import 'package:rideshareapp/screen/Search_Trip_Section_(Passenger)/searchlivetriptracking.dart';
import 'package:rideshareapp/screen/Search_Trip_Section_(Passenger)/searchtripdetailsmap.dart';
import 'package:rideshareapp/screen/Search_Trip_Section_(Passenger)/tripbookingsummary.dart';
import 'package:rideshareapp/screen/Search_Trip_Section_(Passenger)/tripdetails.dart';
import 'package:rideshareapp/screen/Search_Trip_Section_(Passenger)/upcomingtripoverview.dart';
import 'package:rideshareapp/screen/Search_Trip_Section_(Passenger)/upcomingtrip.dart';
import 'package:rideshareapp/screen/auth/signin/fingerprint.dart';
import 'package:rideshareapp/screen/auth/signin/loginscreenpin.dart';
import 'package:rideshareapp/screen/auth/signin/signin.dart';
import 'package:rideshareapp/screen/auth/signin/welcomescreen-signin.dart';
import 'package:rideshareapp/screen/auth/signup/all_set.dart';
import 'package:rideshareapp/screen/auth/signup/create-your-account.dart';
import 'package:rideshareapp/screen/auth/signup/otp_verification_screen.dart';
import 'package:rideshareapp/screen/auth/signup/phone_number_verification.dart';
import 'package:rideshareapp/screen/auth/signup/phone_number_verifysucessful.dart';
import 'package:rideshareapp/screen/auth/signup/select_role.dart';
import 'package:rideshareapp/screen/auth/signup/signupsuccessfull.dart';
import 'package:rideshareapp/screen/auth/signup/uploadprofilepicture.dart';
import 'package:rideshareapp/screen/auth/signup/welcomescreen-signup.dart';
import 'package:rideshareapp/screen/homescreen/homescreen.dart';
import 'package:rideshareapp/screen/homescreen/livetriptracking.dart';
import 'package:rideshareapp/screen/homescreen/tripdetails.dart';
import 'package:rideshareapp/screen/homescreen/tripoverview.dart';
import 'package:rideshareapp/screen/kyc/driver_license_verification.dart';
import 'package:rideshareapp/screen/kyc/driver_verification.dart';
import 'package:rideshareapp/screen/kyc/vehicleinformation.dart';
import 'package:rideshareapp/screen/logistics/deliver_type.dart';
import 'package:rideshareapp/screen/logistics/farestimateandconfirmation.dart';
import 'package:rideshareapp/screen/logistics/homescreen.dart';
import 'package:rideshareapp/screen/logistics/packagedetails.dart';
import 'package:rideshareapp/screen/logistics/pickupanddropoffdetails.dart';
import 'package:rideshareapp/screen/logistics/selectvehicletype.dart';
import 'package:rideshareapp/screen/notification/notificationscreen.dart';
import 'package:rideshareapp/widget/homescreenwidget.dart';
import 'package:rideshareapp/widget/texter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.fff
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Farestimateandconfirmation(),
    );
  }
}
