import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/widget/bottomnav.dart';
import 'package:rideshareapp/widget/custombuttom.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class Tripbookedsuccessfully extends StatelessWidget {
  const Tripbookedsuccessfully({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Spacewidgetheight(space: h * 0.06),
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
              ],
            ),
            Spacewidgetheight(space: h * 0.3),

            Text(
              'Trip Booked Successfully!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.green,
              ),
            ),
            Spacewidgetheight(space: h * 0.02),
            Text(
              'You’ve joined Bayo A.’s recurring ride from',
              style: TextStyle(
                fontSize: 12.9,
                fontWeight: FontWeight.w700,
                color: AppColors.textPrimary,
              ),
            ),
            Text(
              'Ikorodu to Island (Mon–Fri).',
              style: TextStyle(
                fontSize: 12.9,
                fontWeight: FontWeight.w700,
                color: AppColors.textPrimary,
              ),
            ),
            Spacewidgetheight(space: h * 0.02),

            Container(
              height: h * 0.08,
              width: w.toDouble(),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Appcolor.bottombackground,
                    const Color.fromARGB(87, 255, 245, 237),
                    const Color.fromARGB(17, 180, 197, 253),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Your trip token code as a passenger: ',
                          style: TextStyle(
                            fontSize: 12,
                            color: AppColors.textSecondary,
                          ),
                        ),
                        Text(
                          ' PS-2120',
                          style: TextStyle(
                            fontSize: 12,
                            color: AppColors.textPrimary,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Share this code with your driver to confirm identity.',
                          style: TextStyle(
                            fontSize: 12,
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Spacewidgetheight(space: h * 0.06),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Custombuttom(tittle: 'View My Trips', width: w * 0.31),
                Spacewidgetwidth(space: 20),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Add to Calender',
                    style: TextStyle(color: AppColors.colorBlue),
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
