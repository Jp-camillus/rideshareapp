import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/theme/app_theme.dart';
import 'package:rideshareapp/widget/bottomnav.dart';
import 'package:rideshareapp/widget/custombuttom.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class Ongoingtripoverview extends StatelessWidget {
  const Ongoingtripoverview({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(h * 0.028),
            child: Column(
              children: [
                Spacewidgetheight(space: h * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  ],
                ),
                Spacewidgetheight(space: h * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Trip Overview',
                      style: AppThemes.titleSmall.copyWith(
                        color: AppColors.textPrimary,
                      ),
                    ),
                  ],
                ),

                Container(
                  height: h * 0.9,
                  width: w.toDouble(),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(h * 0.02),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(h * 0.025),
                    child: Column(
                      children: [
                        Spacewidgetheight(space: h * 0.03),
                        Row(
                          children: [
                            Text(
                              'Trip Details',
                              style: AppThemes.titleSmall.copyWith(
                                fontSize: 12.9,
                                color: AppColors.textPrimary,
                              ),
                            ),
                          ],
                        ),
                        Spacewidgetheight(space: h * 0.02),

                        Row(
                          children: [
                            Text(
                              'From: ',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.textSecondary,
                              ),
                            ),

                            Image(image: AssetImage(Appimage.s)),
                            Spacewidgetwidth(space: 5),

                            Text(
                              'Ikeja, Lagos',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.textPrimary,
                              ),
                            ),
                            Spacewidgetwidth(space: 5),

                            Container(width: w * 0.07, child: Divider()),
                            Spacewidgetwidth(space: 5),
                            Text(
                              'To: ',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.textSecondary,
                              ),
                            ),

                            Icon(
                              Icons.location_on_outlined,
                              color: Appcolor.primarrylight,
                              size: h * 0.02,
                            ),
                            Spacewidgetwidth(space: 5),

                            Text(
                              'Lekki Phase 1',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.textPrimary,
                              ),
                            ),
                          ],
                        ),
                        Spacewidgetheight(space: h * 0.01),
                        Row(
                          children: [
                            Text(
                              'Date & Time:',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.textSecondary,
                              ),
                            ),
                            Spacewidgetwidth(space: w * 0.05),
                            Text(
                              'May 5, 2025 – 4:00 PM',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.textPrimary,
                              ),
                            ),
                          ],
                        ),
                        Spacewidgetheight(space: h * 0.01),
                        Row(
                          children: [
                            Text(
                              'Seats Available:',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.textSecondary,
                              ),
                            ),
                            Spacewidgetwidth(space: w * 0.05),
                            Text(
                              '3 Seats',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.textPrimary,
                              ),
                            ),
                          ],
                        ),
                        Spacewidgetheight(space: h * 0.01),
                        Row(
                          children: [
                            Text(
                              'Price per Seat:',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.textSecondary,
                              ),
                            ),
                            Spacewidgetwidth(space: w * 0.05),
                            Text(
                              '₦1500',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.textPrimary,
                              ),
                            ),
                          ],
                        ),
                        Spacewidgetheight(space: h * 0.01),
                        Row(
                          children: [
                            Text(
                              'Trip Type:',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.textSecondary,
                              ),
                            ),
                            Spacewidgetwidth(space: w * 0.05),
                            Text(
                              'One-time',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.textPrimary,
                              ),
                            ),
                          ],
                        ),

                        Spacewidgetheight(space: h * 0.016),
                        Row(
                          children: [
                            Text(
                              '--------------------------------------------- ',
                              style: TextStyle(color: Appcolor.grytextfield),
                            ),
                            Container(
                              height: h * 0.03,
                              width: w * 0.18,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(247, 255, 250, 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  'Confirmed',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color.fromRGBO(46, 177, 91, 1),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Spacewidgetheight(space: h * 0.03),
                        Row(
                          children: [
                            Text(
                              ' Driver & Vehicle Info',
                              style: AppThemes.titleSmall.copyWith(
                                fontSize: 12.9,
                                color: AppColors.textPrimary,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: w * 0.17,

                              child: Stack(
                                children: [
                                  Positioned(
                                    top: h * 0.01,
                                    left: w * 0.05,
                                    child: Container(
                                      height: h * 0.041,
                                      width: w * 0.12,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.contain,
                                          image: AssetImage(Appimage.whitecar),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Container(
                                      height: h * 0.05,
                                      width: w * 0.07,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                          image: AssetImage(Appimage.smileman),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Spacewidgetwidth(space: 10),
                            Text(
                              'Aisha B.',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.textPrimary,
                              ),
                            ),
                            Spacewidgetwidth(space: 10),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.deepOrange,
                                  size: 12,
                                ),
                                Text(
                                  '4.2',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: AppColors.primaryOrange,
                                  ),
                                ),
                                Spacewidgetwidth(space: 5),
                                Text(
                                  '85 trips',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: AppColors.textSecondary,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Image(image: AssetImage(Appimage.message)),
                            Spacewidgetwidth(space: 5),
                            Image(image: AssetImage(Appimage.call)),
                          ],
                        ),
                        Spacewidgetheight(space: h * 0.02),
                        Row(
                          children: [
                            Image(image: AssetImage(Appimage.verifyicon)),
                            Spacewidgetwidth(space: 5),

                            Text(
                              'Verified',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(52, 199, 89, 1),
                              ),
                            ),
                            Spacewidgetwidth(space: w * 0.05),
                            Text(
                              '13 Completed Trips',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.textSecondary,
                              ),
                            ),
                          ],
                        ),
                        Spacewidgetheight(space: h * 0.02),
                        Row(
                          children: [
                            Text(
                              'Make & Model:',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.textSecondary,
                              ),
                            ),
                            Spacewidgetwidth(space: w * 0.05),
                            Text(
                              'Toyota Corolla',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.textPrimary,
                              ),
                            ),
                          ],
                        ),
                        Spacewidgetheight(space: h * 0.02),
                        Row(
                          children: [
                            Text(
                              'Year:',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.textSecondary,
                              ),
                            ),
                            Spacewidgetwidth(space: w * 0.05),
                            Text(
                              '2018',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.textPrimary,
                              ),
                            ),
                          ],
                        ),
                        Spacewidgetheight(space: h * 0.02),
                        Row(
                          children: [
                            Text(
                              'Plate Number:',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.textSecondary,
                              ),
                            ),
                            Spacewidgetwidth(space: w * 0.05),
                            Text(
                              'ABC123JK',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.textPrimary,
                              ),
                            ),
                          ],
                        ),
                        Spacewidgetheight(space: h * 0.01),
                        Spacewidgetheight(space: h * 0.01),
                        Text(
                          '-------------------------------------------------- ',
                          style: TextStyle(color: Appcolor.grytextfield),
                        ),
                        Spacewidgetheight(space: h * 0.03),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Custombuttom(
                              tittle: 'Track Trip',
                              width: w * 0.25,
                              fontsize: 12.9,
                            ),
                            Spacewidgetwidth(space: 20),
                            GestureDetector(
                              onTap: () {},
                              child: Text(
                                'Cancel Trip',
                                style: TextStyle(
                                  color: AppColors.error,
                                  fontSize: 12.9,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavWidget(),
    );
  }
}
