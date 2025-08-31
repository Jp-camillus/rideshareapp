import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Global shortcut
NavigationService get navService => Get.find<NavigationService>(); 

class NavigationService extends GetxService {
  // Navigate to a named route
  Future<dynamic>? navigateTo(String routeName, {dynamic argument}) {
    return Get.toNamed(routeName, arguments: argument);
  }

  // Navigate to a named route and replace the current one
  Future<dynamic>? navigateToReplace(String routeName, {dynamic arguments}) {
    return Get.offNamed(routeName, arguments: arguments);
  }

  // Navigate to a named route and remove all routes below it
  Future<dynamic>? navigateToAndRemoveUntil(String routeName, {dynamic argument}) {
    return Get.offAllNamed(routeName, arguments: argument);
  }

  // Push a widget and replace current
  Future<dynamic>? navigateToReplaceWidget(Widget route) {
    return Get.off(() => route);
  }

  // Push a widget and remove all previous routes
  Future<dynamic>? navigateToAndRemoveUntilWidget(Widget route) {
    return Get.offAll(() => route);
  }

  // Push a widget as a new route
  Future<dynamic>? navigateToRoute(Widget route) {
    return Get.to(() => route);
  }

  // Push a widget and replace
  Future<dynamic>? pushReplacement(Widget route) {
    return Get.off(() => route);
  }

  // Go back
  void goBack({dynamic value}) {
    Get.back(result: value);
  }

  // Check if can pop
  bool canPop() {
    return Get.key.currentState?.canPop() ?? false;
  }

  // Pop until specific route
  void popUntil(String routeName) {
    Get.until((route) => route.settings.name == routeName);
  }

  // // Example profile navigation method (keeping your logic)
  // navigateToProfile({required String? username, Function(bool)? setLoading}) async {
  //   if (username == null) {
  //     navigateToRoute(ProfileScreen(profile: ProfileResponseModel(data: ProfileDatas(profile: userService.user))));
  //   } else if (username == userService.userName) {
  //     navigateToRoute(ProfileScreen(profile: ProfileResponseModel(data: ProfileDatas(profile: userService.user))));
  //   } else {
  //     var res = await profileRepo.getStoredUserByUserName(username: username);
  //     if (res != null) {
  //       navigateToRoute(ProfileScreen(profile: res));
  //     } else {
  //       if (setLoading != null) setLoading(true);
  //       var response = await profileRepo.getUserDataByUserName(userName: username);
  //       if (setLoading != null) setLoading(false);

  //       if (response.isRight()) {
  //         navigateToRoute(ProfileScreen(profile: response.asRight()));
  //       } else {
  //         appSnackBar(message: "Could not get user profile");
  //       }
  //     }
  //   }
  // }
}
