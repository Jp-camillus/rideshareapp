import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/route/app_routes.dart';
import 'package:rideshareapp/screen/auth/signin/signin.dart';
import 'package:rideshareapp/theme/app_theme.dart';
import 'package:rideshareapp/widget/custombuttom.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

import '../../../controllers/auth_controller.dart';
import '../../../services/navigation_service.dart';

class Welcomescreensignin extends GetView<LoginController> {
  const Welcomescreensignin({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();
    return Scaffold(
      body: Column(
        children: [
          Spacewidgetheight(space: h * 0.1),
          Row(
            children: [
              Image(
                fit: BoxFit.cover,
                width: w * 0.49,
                image: AssetImage(Appimage.s7),
              ),
              Image(
                fit: BoxFit.cover,
                width: w * 0.49,
                image: AssetImage(Appimage.s8),
              ),
            ],
          ),
          Row(
            children: [
              Stack(
                children: [
                  Container(
                    width: w * 0.49,
                    height: h * 0.2,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(Appimage.s9)),
                    ),
                  ),
                  Positioned(
                    top: h * 0.05,
                    child: Container(
                      width: w * 0.49,
                      height: h * 0.15,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            const Color.fromARGB(10, 255, 255, 255),
                            const Color.fromARGB(143, 255, 255, 255),
                            Colors.white,
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    width: w * 0.49,
                    height: h * 0.2,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(Appimage.s10)),
                    ),
                  ),
                  Positioned(
                    top: h * 0.05,
                    child: Container(
                      width: w * 0.49,
                      height: h * 0.15,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            const Color.fromARGB(10, 255, 255, 255),
                            const Color.fromARGB(143, 255, 255, 255),
                            Colors.white,
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              // Image(
              //   fit: BoxFit.cover,
              //   width: w * 0.49,
              //   image:
              // ),c
            ],
          ),
          Padding(
            padding: EdgeInsets.all(h * 0.025),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.offNamed(AppRoutes.dashboard);
                      },
                      child: Text(
                        'Welcome',
                        style: AppThemes.titleLarge.copyWith(
                          color: AppColors.primaryBlue,
                          fontSize: 32,
                        ),
                      ),
                    ),
                    Spacewidgetwidth(space: w * 0.02),
                    Text(
                      'back!',
                      style: AppThemes.titleLarge.copyWith(
                        fontSize: 32,

                        color: AppColors.textPrimary,
                      ),
                    ),
                  ],
                ),
                Image(image: AssetImage(Appimage.arrow)),
                Text(
                  'Log in to access your rides, bookings, and',
                  style: AppThemes.titleSmall.copyWith(
                    fontSize: 16,
                    color: AppColors.textSecondary,
                  ),
                ),
                Text(
                  'messages',
                  style: AppThemes.titleSmall.copyWith(
                    fontSize: 16,
                    color: AppColors.textSecondary,
                  ),
                  // style: TextStyle(
                  //   fontSize: h * 0.039,
                  //   fontWeight: FontWeight.w500,
                  // ),
                ),
                Spacewidgetheight(space: h * 0.07),
                Custombuttomwithicon(
                  tap: () {
                    Get.to(Signin());
                  },
                  tittle: 'Login your Account',
                  width: w.toDouble(),
                  icon: Icon(Icons.email_outlined, color: Colors.white),
                ),

                Spacewidgetheight(space: h * 0.05),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'I want to create an account ?',
                      style: TextStyle(fontSize: 13.83),
                    ),
                    Spacewidgetwidth(space: 5),
                    Text(
                      'Sign Up',
                      style: TextStyle(
                        color: AppColors.primaryBlue,
                        fontSize: 13.83,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
