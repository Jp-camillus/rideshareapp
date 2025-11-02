import 'package:get/get.dart';
import 'package:rideshareapp/route/app_routes.dart';
import 'package:rideshareapp/screen/Search_Trip_Section_(Passenger)/booking_confirmation.dart';
import 'package:rideshareapp/screen/Search_Trip_Section_(Passenger)/matchingtriplist.dart';
import 'package:rideshareapp/screen/Search_Trip_Section_(Passenger)/mytripticket.dart';
import 'package:rideshareapp/screen/Search_Trip_Section_(Passenger)/ratings.dart';
import 'package:rideshareapp/screen/Search_Trip_Section_(Passenger)/search_trip_section_(passenger)1.dart';
import 'package:rideshareapp/screen/Search_Trip_Section_(Passenger)/search_trip_section_(passenger)2.dart';
import 'package:rideshareapp/screen/Search_Trip_Section_(Passenger)/searchlivetriptracking.dart';
import 'package:rideshareapp/screen/Search_Trip_Section_(Passenger)/tripbookingsummary.dart';
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
import 'package:rideshareapp/screen/accountsettings/subscriptionplan.dart';
import 'package:rideshareapp/screen/accountsettings/supportchart.dart';
import 'package:rideshareapp/screen/accountsettings/vehicledetails.dart';
import 'package:rideshareapp/screen/accountsettings/vehicleinfo.dart';
import 'package:rideshareapp/screen/applylogisticspartner/accountsetting.dart';
import 'package:rideshareapp/screen/applylogisticspartner/applyasalogisticspartner.dart';
import 'package:rideshareapp/screen/auth/signin/fingerprint.dart';
import 'package:rideshareapp/screen/auth/signin/loginscreenpin.dart';
import 'package:rideshareapp/screen/auth/signin/signin.dart';
import 'package:rideshareapp/screen/auth/signin/welcomescreen-signin.dart';
import 'package:rideshareapp/screen/auth/signup/all_set.dart';
import 'package:rideshareapp/screen/auth/signup/camerascreen.dart';
import 'package:rideshareapp/screen/auth/signup/create-your-account.dart';
import 'package:rideshareapp/screen/auth/signup/otp_verification_screen.dart';
import 'package:rideshareapp/screen/auth/signup/phone_number_verification.dart';
import 'package:rideshareapp/screen/auth/signup/phone_number_verifysucessful.dart';
import 'package:rideshareapp/screen/auth/signup/review_picture_screen.dart';
import 'package:rideshareapp/screen/auth/signup/select_role.dart';
import 'package:rideshareapp/screen/auth/signup/signupsuccessfull.dart';
import 'package:rideshareapp/screen/auth/signup/uploadprofilepicture.dart';
import 'package:rideshareapp/screen/auth/signup/welcomescreen-signup.dart';
import 'package:rideshareapp/screen/bookingrequest/bookingandrequest.dart';
import 'package:rideshareapp/screen/bookingrequest/postariderequest.dart';
import 'package:rideshareapp/screen/bookingrequest/requestdetails.dart';
import 'package:rideshareapp/screen/chatpage/chatdetailscreen.dart';
import 'package:rideshareapp/screen/chatpage/chatscreen.dart';
import 'package:rideshareapp/screen/home/dashboard_home.dart';
import 'package:rideshareapp/screen/homescreen/livetriptracking.dart';
import 'package:rideshareapp/screen/homescreen/tripdetails.dart';
import 'package:rideshareapp/screen/homescreen/tripoverview.dart';
import 'package:rideshareapp/screen/kyc/driver_licenceidready.dart';
import 'package:rideshareapp/screen/kyc/driver_license_verification.dart';
import 'package:rideshareapp/screen/kyc/driver_verification.dart';
import 'package:rideshareapp/screen/kyc/license_scan.dart';
import 'package:rideshareapp/screen/kyc/vehicleinformation.dart';
import 'package:rideshareapp/screen/logistics/deliver_type.dart';
import 'package:rideshareapp/screen/logistics/farestimateandconfirmation.dart';
import 'package:rideshareapp/screen/logistics/homescreen.dart';
import 'package:rideshareapp/screen/logistics/packagedetails.dart';
import 'package:rideshareapp/screen/logistics/pickupanddropoffdetails.dart';
import 'package:rideshareapp/screen/logistics/selectvehicletype.dart';
import 'package:rideshareapp/screen/onboarding/onboardingscreen.dart';
import 'package:rideshareapp/screen/pasengeranddriversection/choosepaymentoption.dart';
import 'package:rideshareapp/screen/pasengeranddriversection/confirmrecruitingctrip.dart';
import 'package:rideshareapp/screen/pasengeranddriversection/ongoingtripview.dart';
import 'package:rideshareapp/screen/pasengeranddriversection/rateyourdriver.dart';
import 'package:rideshareapp/screen/pasengeranddriversection/tripbookedsuccessfully.dart';
import 'package:rideshareapp/screen/pasengeranddriversection/upcomingtrippassenger.dart';
import 'package:rideshareapp/screen/pasengeranddriversection/upcomingtripview.dart';
import 'package:rideshareapp/userwalletsection/wallet.dart';

import '../screen/home/placeholder_screens.dart';
import '../screen/nav/bottom_nav.dart';

class AppPages {
  static final List<GetPage> routes = [
    GetPage(name: AppRoutes.onboarding, page: () => OnboardingScreen()),

    GetPage(
      name: AppRoutes.welcomescreensignup,
      page: () => Welcomescreensignup(),
    ),

    // Main App Routes
    GetPage(name: AppRoutes.dashboard, page: () => MainDashboard()),
    GetPage(name: AppRoutes.myTrips, page: () => MyTripsScreen()),
    GetPage(name: AppRoutes.receipts, page: () => ReceiptsScreen()),
    GetPage(name: AppRoutes.account, page: () => AccountScreen()),
    // Acount settings
    GetPage(
      name: AppRoutes.accountandsecurity,
      page: () => AccountSecurityScreen(),
    ),
    GetPage(name: AppRoutes.addbankdetails, page: () => Addbankdetails()),
    GetPage(name: AppRoutes.paymentmethod, page: () => Paymentmethods()),
    GetPage(
      name: AppRoutes.addpaymentmethod,
      page: () => AddPaymentMethodScreen(),
    ),
    GetPage(name: AppRoutes.bankcard, page: () => Bankcard()),
    GetPage(
      name: AppRoutes.subscription,
      page: () => DriverSubscriptionScreen(),
    ),
    GetPage(name: AppRoutes.changePassword, page: () => ChangePasswordScreen()),
    GetPage(name: AppRoutes.helps, page: () => Help()),
    GetPage(name: AppRoutes.kycverification, page: () => Kycverification()),
    GetPage(name: AppRoutes.notifications, page: () => Notifications()),
    GetPage(name: AppRoutes.paymenthistory, page: () => PaymentHistory()),
    GetPage(name: AppRoutes.profiles, page: () => Profileview()),
    GetPage(
      name: AppRoutes.referandearnpaymenthistory,
      page: () => Referandearnpaymenthistory(),
    ),
    GetPage(
      name: AppRoutes.shareandearnscreen,
      page: () => ShareAndEarnScreen(),
    ),
    GetPage(name: AppRoutes.support, page: () => SupportChatScreen()),
    GetPage(name: AppRoutes.vehicledetail, page: () => Vehicledetails()),
    GetPage(name: AppRoutes.vehicleinfo, page: () => Vehicleinfo()),

    //applylogisticspartner
    GetPage(
      name: AppRoutes.accountsetting,
      page: () => AccountSettingsScreen(),
    ),
    GetPage(
      name: AppRoutes.applyasalogisticspartner,
      page: () => Applyasalogisticspartner(),
    ),
    GetPage(name: AppRoutes.logisticshome, page: () => Logisticshomescreen()),

    //signin
    GetPage(name: AppRoutes.fingerprint, page: () => Fingerprint()),
    GetPage(
      name: AppRoutes.loginscreen,
      page: () => Loginscreenpin(phoneNumber: '09091225688'),
    ),
    GetPage(name: AppRoutes.signin, page: () => Signin()),
    GetPage(name: AppRoutes.welcomescrenn, page: () => Welcomescreensignin()),

    //signup
    GetPage(name: AppRoutes.allset, page: () => AllSet()),
    GetPage(name: AppRoutes.camerascreen, page: () => CameraScreen()),
    GetPage(name: AppRoutes.createyouraccount, page: () => Createyouraccount()),
    GetPage(
      name: AppRoutes.otpverification,
      page: () => OtpVerificationScreen(phoneNumber: '091225266789'),
    ),
    GetPage(
      name: AppRoutes.phonenumberverification,
      page: () => PhoneNumberVerification(),
    ),
    GetPage(
      name: AppRoutes.phonenumberverificationsuccessfull,
      page: () => PhoneNumberVerifysucessful(),
    ),
    GetPage(name: AppRoutes.selectrole, page: () => SelectRole()),
    GetPage(name: AppRoutes.signupsucessfull, page: () => Signupsuccessfull()),
    GetPage(
      name: AppRoutes.uploadprofilepicture,
      page: () => Uploadprofilepicture(),
    ),
    // GetPage(
    //   name: AppRoutes.welcomescreensignup,
    //   page: () => Welcomescreensignup(),
    // ),

    //bookingrequest
    GetPage(name: AppRoutes.bookingandrequest, page: () => Bookingandrequest()),
    GetPage(
      name: AppRoutes.postaridequest,
      page: () => PostRideRequestScreen(),
    ),
    GetPage(name: AppRoutes.requestdetails, page: () => Requestdetails()),

    //chatpage
    GetPage(name: AppRoutes.chatdetailscreen, page: () => ChatDetailScreen()),
    GetPage(name: AppRoutes.chatscreen, page: () => ChatScreen()),

    //home
    GetPage(name: AppRoutes.dashboardhome, page: () => DashboardHome()),

    //homescreen
    GetPage(name: AppRoutes.livetriptracking, page: () => Livetriptracking()),
    GetPage(name: AppRoutes.dashboardhome, page: () => DashboardHome()),
    GetPage(name: AppRoutes.tripoverview, page: () => Tripoverview()),

    //kyc
    GetPage(
      name: AppRoutes.driverlicenseverification,
      page: () => DriverLicenseVerification(),
    ),
    GetPage(
      name: AppRoutes.driververification,
      page: () => DriverVerification(),
    ),

    GetPage(name: AppRoutes.licensescan, page: () => LicenseScan()),
    GetPage(
      name: AppRoutes.vehicleinformation,
      page: () => Vehicleinformation(),
    ),

    //logistics
    GetPage(name: AppRoutes.delivertype, page: () => DeliverType()),
    GetPage(
      name: AppRoutes.fardstestimaeandconfirmation,
      page: () => Farestimateandconfirmation(),
    ),
    GetPage(
      name: AppRoutes.homescreenlogistics,
      page: () => Logisticshomescreen(),
    ),
    GetPage(name: AppRoutes.packagedetails, page: () => Packagedetails()),
    GetPage(
      name: AppRoutes.pickupddropoffdetails,
      page: () => Pickupanddropoffdetails(),
    ),
    GetPage(name: AppRoutes.selectvehicletype, page: () => Selectvehicletype()),

    //notification
    GetPage(name: AppRoutes.notifications, page: () => Notifications()),

    //pasengeranddriversection
    GetPage(
      name: AppRoutes.choosepaymentoption,
      page: () => Choosepaymentoption(),
    ),
    GetPage(
      name: AppRoutes.confirmrecruitingtrip,
      page: () => Confirmrecruitingctrip(),
    ),
    GetPage(name: AppRoutes.livetriptracking, page: () => Livetriptracking()),
    GetPage(name: AppRoutes.ongoingtripview, page: () => Ongoingtripoverview()),
    GetPage(name: AppRoutes.rateyourdriver, page: () => Rateyourdriver()),
    GetPage(
      name: AppRoutes.tripbookedsuccessfully,
      page: () => Tripbookedsuccessfully(),
    ),
    GetPage(name: AppRoutes.tripoverview, page: () => Tripoverview()),
    GetPage(
      name: AppRoutes.upcomingtrippassenger,
      page: () => Upcomingtrippassenger(),
    ),
    GetPage(name: AppRoutes.upcomingtripview, page: () => Upcomingtripview()),

    //searchtripsection
    GetPage(
      name: AppRoutes.bookingconfirmation,
      page: () => BookingConfirmation(),
    ),
    GetPage(name: AppRoutes.matchingtriplist, page: () => Matchingtriplist()),
    GetPage(name: AppRoutes.mytripticket, page: () => MyTripTicketScreen()),
    GetPage(
      name: AppRoutes.ongoingtripoverview,
      page: () => Ongoingtripoverview(),
    ),
    GetPage(name: AppRoutes.ratings, page: () => RateTripScreen()),
    GetPage(
      name: AppRoutes.searchtripsectionpassenger1,
      page: () => SearchTripSectionpassenger1(),
    ),
    GetPage(
      name: AppRoutes.searchtripsectionpassenger2,
      page: () => SearchTripSectionpassenger2(),
    ),
    GetPage(
      name: AppRoutes.searchlivetriptracking,
      page: () => Searchlivetriptracking(),
    ),
    GetPage(
      name: AppRoutes.tripbookingsummary,
      page: () => Tripbookingsummary(),
    ),
    GetPage(name: AppRoutes.tripdetails, page: () => Tripdetails()),
    GetPage(name: AppRoutes.upcomingtrip, page: () => Upcomingtrip()),
    GetPage(
      name: AppRoutes.upcomingtripoverview,
      page: () => Upcomingtripoverview(),
    ),
    //wallet
    GetPage(name: AppRoutes.wallet, page: () => Wallet()),
  ];
}
