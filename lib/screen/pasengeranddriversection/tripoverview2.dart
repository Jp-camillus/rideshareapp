import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/theme/app_theme.dart';
import 'package:rideshareapp/widget/bottomnav.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class Tripoverviewp2 extends StatelessWidget {
  const Tripoverviewp2({super.key});

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
                          color: AppColors.primaryBlue,
                        ),
                      ),
                    ),
                    Image(image: AssetImage(Appimage.pointlocation)),
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
                    Container(
                      height: h * 0.03,
                      width: w * 0.2,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(247, 250, 255, 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'You (Driver)',
                          style: TextStyle(
                            color: Color.fromRGBO(50, 129, 255, 1),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                Container(
                  height: h * 0.85,
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
                                fontSize: 18,
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
                              'Ikorodu',
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
                              'Island',
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
                              'Every Mon–Fri',
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
                            Image(image: AssetImage(Appimage.clock)),
                            Text(
                              ' 7:00 AM ',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.textPrimary,
                              ),
                            ),
                            Spacewidgetwidth(space: w * 0.05),
                            Icon(Icons.arrow_forward),
                            Text(
                              ' 4:00 PM',
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
                              'Recurring Trip',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.textPrimary,
                              ),
                            ),
                          ],
                        ),

                        Spacewidgetheight(space: h * 0.016),
                        Text(
                          '----------------------------------------------------------- ',
                          style: TextStyle(color: Appcolor.grytextfield),
                        ),
                        Spacewidgetheight(space: h * 0.03),
                        Row(
                          children: [
                            Text(
                              'Driver Info',
                              style: AppThemes.titleSmall.copyWith(
                                fontSize: 16,
                                color: AppColors.textPrimary,
                              ),
                            ),
                          ],
                        ),
                        Spacewidgetheight(space: h * 0.02),
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
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Bayo A.',
                                  style: AppThemes.titleLarge.copyWith(
                                    color: AppColors.textPrimary,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                          ],
                        ),
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
                        Spacewidgetheight(space: h * 0.01),
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
                        Spacewidgetheight(space: h * 0.01),
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
                          '----------------------------------------------------------- ',
                          style: TextStyle(color: Appcolor.grytextfield),
                        ),
                        Spacewidgetheight(space: h * 0.03),
                        Row(
                          children: [
                            Text(
                              'Trip Schedule',
                              style: AppThemes.titleSmall.copyWith(
                                color: AppColors.textPrimary,
                              ),
                            ),
                          ],
                        ),
                        Spacewidgetheight(space: h * 0.02),
                        Row(
                          children: [
                            Image(image: AssetImage(Appimage.kkkkkk)),
                            Text(
                              'Days:',
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColors.textSecondary,
                              ),
                            ),
                            Text(
                              'Monday to Friday',
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColors.textPrimary,
                              ),
                            ),
                          ],
                        ),
                        Spacewidgetheight(space: 5),

                        Row(
                          children: [
                            Image(image: AssetImage(Appimage.clock)),
                            Text(
                              'Departure:',
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColors.textSecondary,
                              ),
                            ),
                            Text(
                              '7:00 AM',
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColors.textPrimary,
                              ),
                            ),
                          ],
                        ),
                        Spacewidgetheight(space: 5),
                        Row(
                          children: [
                            Image(image: AssetImage(Appimage.clock)),
                            Text(
                              'Return Trip:',
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColors.textSecondary,
                              ),
                            ),
                            Text(
                              '4:00 PM (if applicable)',
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColors.textPrimary,
                              ),
                            ),
                          ],
                        ),
                        Spacewidgetheight(space: 5),
                        Row(
                          children: [
                            Text(
                              'Price: ',
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColors.textSecondary,
                              ),
                            ),
                            Text(
                              '₦2500 ',
                              style: TextStyle(
                                fontSize: 15,
                                color: AppColors.textPrimary,
                              ),
                            ),
                            Text(
                              ' per day',
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColors.textSecondary,
                              ),
                            ),
                          ],
                        ),
                        Spacewidgetheight(space: 20),
                        Container(
                          height: 60,
                          width: w.toDouble(),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [AppColors.fadeblue, AppColors.fadeorang],
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Total (5 Days):',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: AppColors.textPrimary,
                                      ),
                                    ),
                                    Text(
                                      '(NGN)',
                                      style: TextStyle(
                                        fontSize: 13.65,
                                        color: AppColors.textSecondary,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'X9PQ6',
                                  style: TextStyle(
                                    fontSize: 18.2,
                                    color: AppColors.textPrimary,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Spacewidgetheight(space: h * 0.02),

                        Spacewidgetheight(space: h * 0.02),
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
