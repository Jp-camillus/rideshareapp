import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/screen/logistics/packagedetails.dart';
import 'package:rideshareapp/theme/app_theme.dart';
import 'package:rideshareapp/widget/bottomnav.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class Pickupanddropoffdetails extends StatelessWidget {
  const Pickupanddropoffdetails({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Stack(
          children: [
            Image(image: AssetImage(Appimage.backmap)),

            Column(
              children: [
                Spacewidgetheight(space: h * 0.1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.arrow_back,
                          color: Appcolor.primarrylight,
                        ),
                      ),
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              border: Border.all(color: Colors.grey),
                            ),
                            alignment: Alignment.center,
                            child: const Padding(
                              padding: EdgeInsets.all(6.0),
                              child: Icon(Icons.notifications_none_outlined),
                            ),
                          ),
                        ),
                        Positioned(
                          right: w * 0.01,
                          bottom: h * 0.039,
                          child: CircleAvatar(
                            radius: w * 0.015,
                            backgroundColor: Colors.red,
                            child: Text(
                              '2',
                              style: TextStyle(
                                fontSize: h * 0.01,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Step 1 of 5',
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    Text(
                      '20% Complete',
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.textPrimary,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: h * 0.0152,
                  width: w.toDouble(),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(217, 217, 217, 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: w * 0.2,
                        height: h * 0.0152,
                        decoration: BoxDecoration(
                          color: AppColors.colorBlue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Container(
                        width: w * 0.6,
                        height: h * 0.0152,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(217, 217, 217, 1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacewidgetheight(space: h * 0.03),
                Container(
                  height: h * 0.51,
                  width: w * 0.8505,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(255, 112, 67, 1),
                        Color.fromRGBO(0, 86, 179, 1),
                      ],
                    ),
                  ),
                  child: Center(
                    child: Container(
                      height: h * 0.508,
                      width: w * 0.85,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Pickup & Drop-off Details',
                              style: AppThemes.titleMedium.copyWith(
                                color: AppColors.textPrimary,
                              ),
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.all(0),
                              leading: Icon(Icons.location_on_outlined),
                              title: Text(
                                'From',
                                style: TextStyle(
                                  fontSize: 15.7,
                                  color: AppColors.textSecondary,
                                ),
                              ),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'Pickup Address',
                                hintStyle: TextStyle(
                                  fontSize: 15.7,
                                  color: AppColors.textSecondary,
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Image(image: AssetImage(Appimage.blue2arrow)),
                              ],
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.all(0),
                              leading: Image(image: AssetImage(Appimage.s)),
                              title: Text(
                                'To',
                                style: TextStyle(
                                  fontSize: 15.7,
                                  color: AppColors.textSecondary,
                                ),
                              ),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(0),
                                hintText: 'Drop-off Address',
                                hintStyle: TextStyle(
                                  fontSize: 15.7,
                                  color: AppColors.textSecondary,
                                ),
                              ),
                            ),
                            Spacewidgetheight(space: 5),

                            Spacewidgetheight(space: h * 0.05),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Get.to(Packagedetails());
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Appcolor.gradientblue,
                                          Appcolor.gradientorang,
                                        ],
                                      ),
                                      borderRadius: BorderRadius.circular(
                                        w * 0.06,
                                      ),
                                    ),
                                    height: h * 0.06,
                                    alignment: Alignment.center,
                                    width: w * 0.27,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Next',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          Spacewidgetwidth(space: 10),
                                          Icon(
                                            Icons.arrow_forward_ios_outlined,
                                            color: Colors.white,
                                            size: h * 0.015,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavWidget(),
    );
  }
}
