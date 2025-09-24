import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/theme/app_theme.dart';
import 'package:rideshareapp/widget/custombuttom.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class SearchTripdetails extends StatelessWidget {
  const SearchTripdetails({super.key});

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
                    Image(image: AssetImage(Appimage.pointlocation)),
                  ],
                ),
                Spacewidgetheight(space: h * 0.03),

                Container(
                  height: 825,
                  width: 392,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(h * 0.02),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(h * 0.025),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image(image: AssetImage(Appimage.s)),
                            Spacewidgetwidth(space: 5),

                            Text(
                              'Ikeja, Lagos',
                              style: TextStyle(
                                fontSize: 13.9,
                                color: AppColors.textPrimary,
                              ),
                            ),
                            Spacewidgetwidth(space: 5),

                            Container(width: w * 0.07, child: Divider()),
                            Spacewidgetwidth(space: 5),

                            Icon(
                              Icons.location_on_outlined,
                              color: Appcolor.primarrylight,
                              size: h * 0.02,
                            ),
                            Spacewidgetwidth(space: 5),

                            Text(
                              'Lekki Phase 1',
                              style: TextStyle(
                                fontSize: 13.9,
                                color: AppColors.textPrimary,
                              ),
                            ),
                          ],
                        ),
                        Spacewidgetheight(space: h * 0.01),

                        Row(
                          children: [
                            Image(image: AssetImage(Appimage.calendar)),
                            Spacewidgetwidth(space: 5),

                            Text(
                              'May 10, 2025 – 8:00 AM',
                              style: TextStyle(
                                fontSize: 13.9,
                                color: AppColors.textPrimary,
                              ),
                            ),
                            Spacewidgetwidth(space: w * 0.2),
                            // Container(
                            //   height: h * 0.03,
                            //   width: w * 0.2,
                            //   decoration: BoxDecoration(
                            //     color: AppColors.fadegreen,
                            //     borderRadius: BorderRadius.circular(10),
                            //   ),
                            //   child: Center(
                            //     child: Text(
                            //       'Confirmed',
                            //       style: TextStyle(
                            //         fontSize: 10,
                            //         color: AppColors.success,
                            //       ),
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                        Spacewidgetheight(space: h * 0.016),
                        Text(
                          '------------------------------------------------------------- ',
                          style: TextStyle(color: AppColors.textSecondary),
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
                              style: AppThemes.titleSmall.copyWith(
                                color: AppColors.textPrimary,
                                fontSize: 13,
                              ),
                            ),
                            Spacewidgetwidth(space: 10),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.deepOrange,
                                  size: 13,
                                ),
                                Text(
                                  '4.2',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: AppColors.primaryOrange,
                                  ),
                                ),
                                Spacewidgetwidth(space: 5),
                                Text(
                                  '85 trips',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: AppColors.textPrimary,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Spacewidgetheight(space: h * 0.015),
                        Row(
                          children: [
                            Image(image: AssetImage(Appimage.claritycarline)),
                            Spacewidgetwidth(space: 5),

                            Text(
                              'Vehicle:',
                              style: TextStyle(
                                fontSize: 13.9,
                                color: AppColors.textSecondary,
                              ),
                            ),
                            Spacewidgetwidth(space: w * 0.05),
                            Text(
                              'Toyota Corolla 2018',
                              style: TextStyle(
                                fontSize: 13.9,
                                color: AppColors.textPrimary,
                              ),
                            ),
                          ],
                        ),
                        Spacewidgetheight(space: h * 0.01),
                        Row(
                          children: [
                            Image(image: AssetImage(Appimage.no)),
                            Spacewidgetwidth(space: 5),

                            Text(
                              'Plate:',
                              style: TextStyle(
                                fontSize: 13.9,
                                color: AppColors.textSecondary,
                              ),
                            ),
                            Spacewidgetwidth(space: w * 0.05),
                            Text(
                              'ABC-234LK',
                              style: TextStyle(
                                fontSize: 13.9,
                                color: AppColors.textPrimary,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '--------------------------------------------------------------- ',
                          style: TextStyle(color: AppColors.textSecondary),
                        ),
                        Row(
                          children: [
                            Image(image: AssetImage(Appimage.chair)),
                            Spacewidgetwidth(space: 5),

                            Text(
                              'Seat:',
                              style: TextStyle(
                                fontSize: 13.9,
                                color: AppColors.textSecondary,
                              ),
                            ),
                            Spacewidgetwidth(space: w * 0.05),
                            Text(
                              '3 Seat',
                              style: TextStyle(
                                fontSize: 13.9,
                                color: AppColors.textPrimary,
                              ),
                            ),
                          ],
                        ),
                        Spacewidgetheight(space: h * 0.015),
                        Container(
                          height: h * 0.12,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromRGBO(245, 255, 247, 1),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Image(image: AssetImage(Appimage.money)),
                                    Spacewidgetwidth(space: w * 0.02),

                                    Text(
                                      '₦2,500',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: AppColors.textPrimary,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Spacewidgetwidth(space: w * 0.01),
                                    Text(
                                      'per Seat',
                                      style: TextStyle(
                                        fontSize: 13.9,
                                        color: AppColors.textPrimary,
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      height: h * 0.025,
                                      width: w * 0.06,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Appcolor.primarrylight,
                                        ),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Divider(color: Colors.black),
                                      ),
                                    ),
                                    Spacewidgetwidth(space: 5),
                                    Text(
                                      '1',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: AppColors.textPrimary,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Spacewidgetwidth(space: 5),
                                    Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                          color: Appcolor.primarrylight,
                                        ),
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        '+',
                                        textAlign: TextAlign.center,

                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                    Spacewidgetwidth(space: 5),
                                    Text(
                                      'Total:',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: AppColors.textPrimary,
                                      ),
                                    ),
                                    Spacewidgetwidth(space: 5),

                                    Text(
                                      '₦2,500',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: AppColors.textPrimary,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Spacewidgetheight(space: h * 0.015),
                        Text(
                          '---------------------------------------------------------------- ',
                          style: TextStyle(color: AppColors.textSecondary),
                        ),
                        Spacewidgetheight(space: h * 0.02),
                        Row(
                          children: [
                            Container(
                              height: 22.22334861755371,
                              width: 67.6700439453125,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(247, 250, 255, 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  'Cheapest',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color.fromRGBO(50, 129, 255, 1),
                                  ),
                                ),
                              ),
                            ),
                            Spacewidgetwidth(space: 2),
                            Text(
                              '|',
                              style: TextStyle(
                                fontSize: h * 0.028,
                                color: Appcolor.grytextfield,
                              ),
                            ),
                            Container(
                              height: 22.22334861755371,
                              width: 67.6700439453125,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(247, 255, 250, 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  'Fastest',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color.fromRGBO(46, 177, 91, 1),
                                  ),
                                ),
                              ),
                            ),
                            Spacewidgetwidth(space: 2),
                            Text(
                              '|',
                              style: TextStyle(
                                fontSize: h * 0.028,
                                color: Appcolor.grytextfield,
                              ),
                            ),
                            Container(
                              height: 22.22334861755371,
                              width: 75.6700439453125,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(255, 247, 253, 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  'Recommended',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color.fromRGBO(243, 47, 202, 0.8),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        Spacewidgetheight(space: h * 0.01),
                        Row(
                          children: [
                            Image(image: AssetImage(Appimage.verifyicon)),
                            Spacewidgetwidth(space: 5),

                            Text(
                              'Verified',
                              style: TextStyle(
                                fontSize: 13.9,
                                color: Color.fromRGBO(52, 199, 89, 1),
                              ),
                            ),
                            Spacewidgetwidth(space: w * 0.05),
                            Text(
                              '13 Completed Trips',
                              style: TextStyle(
                                fontSize: 13.9,
                                color: AppColors.textPrimary,
                              ),
                            ),
                            Spacer(),
                            Image(image: AssetImage(Appimage.message)),
                            Image(image: AssetImage(Appimage.call)),
                          ],
                        ),
                        Spacewidgetheight(space: h * 0.015),
                        Row(
                          children: [
                            Container(
                              height: 120.01248168945312,
                              width: 300,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(242, 248, 255, 1),
                                border: Border.all(
                                  color: Appcolor.grytextfield,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Image(
                                          image: AssetImage(
                                            Appimage.carbonreview,
                                          ),
                                        ),
                                        Spacewidgetwidth(space: 5),

                                        Text(
                                          'Sarah',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: AppColors.textPrimary,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Spacewidgetheight(space: h * 0.005),

                                    Row(
                                      children: [
                                        Text(
                                          'Very punctual and safe driver!',
                                          style: TextStyle(
                                            fontSize: 13.9,
                                            color: AppColors.textSecondary,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Spacewidgetheight(space: h * 0.005),

                                    Row(
                                      children: [
                                        Image(
                                          image: AssetImage(
                                            Appimage.carbonreview,
                                          ),
                                        ),
                                        Spacewidgetwidth(space: 5),

                                        Text(
                                          'James',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: AppColors.textPrimary,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Spacewidgetheight(space: h * 0.005),

                                    Row(
                                      children: [
                                        Text(
                                          'Smooth ride.',
                                          style: TextStyle(
                                            fontSize: 13.9,
                                            color: AppColors.textSecondary,
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
                        Spacewidgetheight(space: h * 0.015),
                        Row(
                          children: [
                            Image(image: AssetImage(Appimage.clock)),
                            Text(
                              'Driver will pick you at ikeja bus stop by 6:30 AM',
                              style: TextStyle(
                                fontSize: 12.5,
                                color: AppColors.textSecondary,
                              ),
                            ),
                          ],
                        ),
                        Spacewidgetheight(space: h * 0.01),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Custombuttom(
                              tittle: 'Book Now',
                              fontsize: 16.57,
                              width: 127.71427917480469,
                              height: 49.857139587402344,
                            ),
                            Spacewidgetwidth(space: 10),
                            GestureDetector(
                              onTap: () {
                                cancelbuttondialogue(context);
                              },
                              child: Text(
                                'Request Seat',
                                style: TextStyle(color: Appcolor.primarrylight),
                              ),
                            ),
                          ],
                        ),
                        Spacewidgetheight(space: 2),
                        Text(
                          'Free cancellation up to 1 hour before departure',
                          style: TextStyle(
                            fontSize: 12,
                            color: AppColors.textSecondary,
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
    );
  }

  void cancelbuttondialogue(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Container(
            height: h * 0.29,
            width: w * 0.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(image: AssetImage(Appimage.bluemessage)),
                  Text('Are you sure to cancel this boking?'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Custombuttom(tittle: 'Yes, I’m Sure', width: w * 0.3),
                      Spacewidgetwidth(space: 10),
                      Text('No, Don’t', style: TextStyle(color: Colors.red)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
