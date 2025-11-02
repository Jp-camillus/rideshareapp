import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/route/app_routes.dart';
import 'package:rideshareapp/services/navigation_service.dart';
import 'package:rideshareapp/theme/app_theme.dart';
import 'package:rideshareapp/widget/customtextfield.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class Help extends StatelessWidget {
  const Help({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();
    return Scaffold(
      body: Container(
        height: h.toDouble(),
        width: w.toDouble(),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(221, 237, 255, 1),

              Color.fromRGBO(178, 215, 255, 0.07),
              Color.fromRGBO(178, 215, 255, 0.07),
              Color.fromRGBO(178, 215, 255, 0.07),
              Color.fromRGBO(178, 215, 255, 0.07),
              Color.fromRGBO(178, 215, 255, 0.07),
            ],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: CircleAvatar(
                        backgroundColor: AppColors.cardLight,
                        child: Icon(
                          Icons.arrow_back,
                          color: Appcolor.primarrylight,
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    // spacer so title sits left below (we mirror screenshot where title is left aligned)
                    const Spacer(),
                    Text(
                      'Cancel',
                      style: TextStyle(color: AppColors.error, fontSize: 16),
                    ),
                  ],
                ),
                Spacewidgetheight(space: 10),
                Spacewidgetheight(space: 20),

                Row(
                  children: [
                    Text(
                      'Hi Alayande',
                      style: TextStyle(
                        fontSize: 18,
                        color: AppColors.textPrimary,
                      ),
                    ),
                  ],
                ),
                Spacewidgetheight(space: 10),

                Row(
                  children: [
                    Text(
                      'How can we help you?',
                      style: TextStyle(
                        fontSize: 20,
                        color: AppColors.textPrimary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Spacewidgetheight(space: 20),

                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(255, 253, 253, 1),
                    suffixIcon: Image(image: AssetImage(Appimage.recorder)),
                    prefixIcon: Image(image: AssetImage(Appimage.searchgrey)),
                    hintText: 'Search here..',
                    hintStyle: TextStyle(
                      color: AppColors.textSecondary,
                      fontSize: 14,
                    ),
                    enabled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(229, 229, 229, 1),
                      ),
                      borderRadius: BorderRadius.circular(w * 0.039),
                    ),

                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(229, 229, 229, 1),
                      ),
                      borderRadius: BorderRadius.circular(w * 0.039),
                    ),
                  ),
                ),
                Spacewidgetheight(space: 20),
                Row(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 7,
                      shadowColor: const Color.fromARGB(75, 0, 123, 255),
                      child: Container(
                        height: 46,
                        width: 205.91835021972656,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: AssetImage(Appimage.messageoutline)),
                            Spacewidgetwidth(space: 5),
                            GestureDetector(
                              onTap: () {
                                NavigationService().navigateTo(
                                  AppRoutes.support,
                                );
                              },
                              child: Text(
                                'Send Us Message',
                                style: TextStyle(color: AppColors.colorBlue),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Spacewidgetheight(space: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: 147,
                        height: 112.24291229248047,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromRGBO(223, 241, 255, 1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image(
                                image: AssetImage(Appimage.notificationblue),
                              ),
                              Text(
                                'Questions about',
                                style: TextStyle(
                                  color: AppColors.textSecondary,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                'Getting Started',
                                style: TextStyle(
                                  color: AppColors.textPrimary,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Spacewidgetwidth(space: 10),
                      Container(
                        width: 147,
                        height: 112.24291229248047,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromRGBO(232, 255, 235, 1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image(image: AssetImage(Appimage.settinggreen)),
                              Text(
                                'Questions about',
                                style: TextStyle(
                                  color: AppColors.textSecondary,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                'How to Book',
                                style: TextStyle(
                                  color: AppColors.textPrimary,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Spacewidgetwidth(space: 10),
                      Container(
                        width: 147,
                        height: 112.24291229248047,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromRGBO(255, 236, 239, 1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image(image: AssetImage(Appimage.dollar)),
                              Text(
                                'Questions about',
                                style: TextStyle(
                                  color: AppColors.textSecondary,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                'Payment Meth…',
                                style: TextStyle(
                                  color: AppColors.textPrimary,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
