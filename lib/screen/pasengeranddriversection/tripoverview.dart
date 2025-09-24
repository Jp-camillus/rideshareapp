import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/screen/pasengeranddriversection/livetriptracking.dart';
import 'package:rideshareapp/theme/app_theme.dart';
import 'package:rideshareapp/widget/bottomnav.dart' show CustomBottomNavWidget;
import 'package:rideshareapp/widget/spacewidget.dart';

class Tripoverviewp extends StatelessWidget {
  const Tripoverviewp({super.key});

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
                    GestureDetector(
                      onTap: () {
                        Get.to(Livetriptrackingp());
                      },
                      child: Image(image: AssetImage(Appimage.pointlocation)),
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

                            Expanded(
                              child: Text(
                                'Lekki Phase 1',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: AppColors.textPrimary,
                                ),
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
                        Text(
                          '------------------------------------------------------ ',
                          style: TextStyle(color: Appcolor.grytextfield),
                        ),
                        Spacewidgetheight(space: h * 0.03),
                        Row(
                          children: [
                            Text(
                              'Vehicle Info',
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
                          '---------------------------------------------------- ',
                          style: TextStyle(color: Appcolor.grytextfield),
                        ),
                        Spacewidgetheight(space: h * 0.03),
                        Row(
                          children: [
                            Text(
                              'Passenger Requests',
                              style: AppThemes.titleSmall.copyWith(
                                color: AppColors.textPrimary,
                              ),
                            ),
                          ],
                        ),
                        Spacewidgetheight(space: h * 0.02),

                        Spacewidgetheight(space: h * 0.02),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Appcolor.gry),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: AssetImage(Appimage.lady),
                                ),
                                Spacewidgetwidth(space: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Sarah O.',
                                      style: AppThemes.titleSmall.copyWith(
                                        fontSize: 16,
                                        color: AppColors.textPrimary,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Status:',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: AppColors.textSecondary,
                                          ),
                                        ),
                                        Spacewidgetwidth(space: 5),
                                        Text(
                                          '✅ Booked (2 seats)',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: AppColors.textPrimary,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Image(image: AssetImage(Appimage.message)),
                                Image(image: AssetImage(Appimage.call)),
                              ],
                            ),
                          ),
                        ),
                        Spacewidgetheight(space: h * 0.02),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Appcolor.gry),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: AssetImage(
                                        Appimage.smileman,
                                      ),
                                    ),
                                    Spacewidgetwidth(space: 10),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'John D.',
                                          style: AppThemes.titleSmall.copyWith(
                                            fontSize: 16,
                                            color: AppColors.textPrimary,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Status:',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: AppColors.textSecondary,
                                              ),
                                            ),
                                            Spacewidgetwidth(space: 5),
                                            Text(
                                              '⏳ Pending (1 seat)',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: AppColors.textPrimary,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Image(image: AssetImage(Appimage.message)),
                                    Image(image: AssetImage(Appimage.call)),
                                  ],
                                ),
                                Spacewidgetheight(space: h * 0.026),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Appcolor.primary,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8),
                                        child: Text(
                                          'Accept',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    Spacewidgetwidth(space: 10),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Color.fromRGBO(247, 250, 255, 1),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8),
                                        child: Text(
                                          'Reject',
                                          style: TextStyle(
                                            color: Color.fromRGBO(
                                              50,
                                              129,
                                              255,
                                              1,
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
