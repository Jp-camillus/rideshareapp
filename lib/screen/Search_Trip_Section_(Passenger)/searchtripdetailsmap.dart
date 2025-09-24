import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/theme/app_theme.dart';
import 'package:rideshareapp/widget/custombuttom.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class Searchtripdetailsmap extends StatelessWidget {
  const Searchtripdetailsmap({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(),
              height: h * 1.1,
              width: w.toDouble(),
              child: Stack(
                children: [
                  // Container(

                  // ),
                  Positioned(
                    top: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(Appimage.maps),
                        ),
                      ),
                      height: h * 0.5,
                      width: w.toDouble(),
                    ),
                  ),
                  Positioned(
                    top: h * 0.06,
                    left: w * 0.05,
                    child: GestureDetector(
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
                  ),
                  Positioned(
                    bottom: h * 0.15,
                    child: Container(
                      height: h * 0.6,
                      width: w.toDouble(),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Stack(
                          children: [
                            Spacewidgetheight(space: h * 0.1),
                            Positioned(
                              bottom: h * 0.12,
                              right: 1,
                              left: 1,
                              child: Card(
                                elevation: 10,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                shadowColor: const Color.fromARGB(
                                  47,
                                  13,
                                  125,
                                  244,
                                ),
                                child: Container(
                                  height: h * 0.35,
                                  width: w.toDouble(),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: Column(
                                      children: [
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
                                                          image: AssetImage(
                                                            Appimage.whitecar,
                                                          ),
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
                                                          image: AssetImage(
                                                            Appimage.smileman,
                                                          ),
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
                                              style: AppThemes.titleMedium
                                                  .copyWith(
                                                    color:
                                                        AppColors.textPrimary,
                                                  ),
                                            ),
                                            Spacewidgetwidth(space: 10),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.deepOrange,
                                                  size: 10,
                                                ),
                                                Text(
                                                  '4.2',
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    color:
                                                        AppColors.primaryOrange,
                                                  ),
                                                ),
                                                Spacewidgetwidth(space: 5),
                                                Text(
                                                  '85 trips',
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    color:
                                                        AppColors.textPrimary,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Image(
                                              image: AssetImage(
                                                Appimage.verifyicon,
                                              ),
                                            ),
                                            Spacewidgetwidth(space: 5),

                                            Text(
                                              'Verified',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Color.fromRGBO(
                                                  52,
                                                  199,
                                                  89,
                                                  1,
                                                ),
                                              ),
                                            ),
                                            Spacewidgetwidth(space: w * 0.05),
                                            Image(
                                              image: AssetImage(
                                                Appimage.message,
                                              ),
                                            ),
                                            Image(
                                              image: AssetImage(Appimage.call),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Image(
                                              height: h * 0.02,

                                              image: AssetImage(
                                                Appimage.claritycarline,
                                              ),
                                            ),
                                            Spacewidgetwidth(space: 5),

                                            Text(
                                              'Vehicle',
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: AppColors.textSecondary,
                                              ),
                                            ),
                                            Spacewidgetwidth(space: w * 0.05),
                                            Text(
                                              'ABC-234LK',
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: AppColors.textPrimary,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Spacewidgetheight(space: 10),
                                        Row(
                                          children: [
                                            Image(
                                              height: h * 0.02,
                                              image: AssetImage(Appimage.chair),
                                            ),
                                            Spacewidgetwidth(space: 5),

                                            Text(
                                              'Available Seats:',
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: AppColors.textSecondary,
                                              ),
                                            ),
                                            Spacewidgetwidth(space: w * 0.05),
                                            Text(
                                              '3 Seats',
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: AppColors.textPrimary,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Spacewidgetheight(space: 10),
                                        Row(
                                          children: [
                                            Image(
                                              height: h * 0.02,
                                              image: AssetImage(
                                                Appimage.person,
                                              ),
                                            ),
                                            Spacewidgetwidth(space: 5),

                                            Text(
                                              'Pickup Point:',
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: AppColors.textSecondary,
                                              ),
                                            ),
                                            Spacewidgetwidth(space: w * 0.05),
                                            Text(
                                              'Agric Bus Stop',
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: AppColors.textPrimary,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Spacewidgetheight(space: 10),
                                        Row(
                                          children: [
                                            Image(
                                              height: h * 0.02,
                                              image: AssetImage(Appimage.s),
                                            ),
                                            Spacewidgetwidth(space: 5),

                                            Text(
                                              'Drop-off:',
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: AppColors.textSecondary,
                                              ),
                                            ),
                                            Spacewidgetwidth(space: w * 0.05),
                                            Text(
                                              'Admiralty Way',
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: AppColors.textPrimary,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Spacewidgetheight(space: 10),
                                        Row(
                                          children: [
                                            Image(
                                              height: h * 0.02,
                                              image: AssetImage(
                                                Appimage.location,
                                              ),
                                            ),
                                            Spacewidgetwidth(space: 5),

                                            Text(
                                              'Lagos (Ojota Bus Terminal)',
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: AppColors.textPrimary,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Image(
                                              image: AssetImage(
                                                Appimage.calendar,
                                              ),
                                            ),
                                            Spacewidgetwidth(space: 10),
                                            Text(
                                              'Friday May 10, 2025',
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: AppColors.textPrimary,
                                              ),
                                            ),
                                            Spacewidgetwidth(space: 10),
                                            Text(
                                              "|",
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: AppColors.textSecondary,
                                              ),
                                            ),
                                            Spacewidgetwidth(space: 10),
                                            Image(
                                              image: AssetImage(Appimage.clock),
                                            ),
                                            Text(
                                              '8:00 AM',
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: AppColors.textPrimary,
                                              ),
                                            ),
                                            Spacewidgetwidth(space: 10),
                                            Text(
                                              "|",
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: AppColors.textSecondary,
                                              ),
                                            ),
                                            Spacewidgetwidth(space: 10),
                                            Image(
                                              image: AssetImage(Appimage.chair),
                                            ),

                                            Text(
                                              ' 3 seat',
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: AppColors.textPrimary,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              height: h * 0.03,
                                              width: w * 0.2,
                                              decoration: BoxDecoration(
                                                color: Color.fromRGBO(
                                                  247,
                                                  250,
                                                  255,
                                                  1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'Cheapest',
                                                  style: TextStyle(
                                                    fontSize: 10,
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
                                            Spacewidgetwidth(space: 5),
                                            Text(
                                              '|',
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: AppColors.textSecondary,
                                              ),
                                            ),
                                            Container(
                                              height: h * 0.03,
                                              width: w * 0.2,
                                              decoration: BoxDecoration(
                                                color: Color.fromRGBO(
                                                  247,
                                                  255,
                                                  250,
                                                  1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'Fastest',
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    color: Color.fromRGBO(
                                                      46,
                                                      177,
                                                      91,
                                                      1,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Spacewidgetwidth(space: 5),
                                            Text(
                                              '|',
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: AppColors.textSecondary,
                                              ),
                                            ),
                                            Container(
                                              height: h * 0.03,
                                              width: w * 0.2,
                                              decoration: BoxDecoration(
                                                color: Color.fromRGBO(
                                                  255,
                                                  247,
                                                  253,
                                                  1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'Recommended',
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    color: Color.fromRGBO(
                                                      243,
                                                      47,
                                                      202,
                                                      0.8,
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
                              ),
                            ),
                            Positioned(
                              top: 0,
                              child: Container(
                                height: h * 0.1,
                                width: w * 0.3,
                                child: Image(
                                  fit: BoxFit.cover,
                                  image: AssetImage(Appimage.whitecar),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: h * 0.15,
                    left: 0,
                    right: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Custombuttom(
                              tittle: 'Book Now',
                              width: 127.71427917480469,
                              fontsize: 16,
                              height: 50,
                            ),
                            Spacewidgetwidth(space: 10),
                            GestureDetector(
                              onTap: () {},
                              child: Text(
                                'Request Seat',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: AppColors.colorBlue,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Spacewidgetheight(space: 10),
                        Text(
                          'Free cancellation up to 1 hour before departure',
                          style: TextStyle(
                            fontSize: 10,
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
