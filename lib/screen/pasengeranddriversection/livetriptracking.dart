import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/screen/pasengeranddriversection/confirmrecruitingctrip.dart';
import 'package:rideshareapp/theme/app_theme.dart';
import 'package:rideshareapp/widget/bottomnav.dart';
import 'package:rideshareapp/widget/custombuttom.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class Livetriptrackingp extends StatefulWidget {
  const Livetriptrackingp({super.key});

  @override
  State<Livetriptrackingp> createState() => _LivetriptrackingpState();
}

class _LivetriptrackingpState extends State<Livetriptrackingp> {
  bool ontap = false;
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: ontap ? h * 0.55 : h * 0.82,
                  width: w.toDouble(),
                ),
                Container(
                  height: ontap ? h * 0.5 : h * 0.8,
                  width: w.toDouble(),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image:
                          ontap
                              ? AssetImage(Appimage.maps)
                              : AssetImage(Appimage.mapcar),
                    ),
                  ),
                ),
                Spacewidgetheight(space: h * 0.15),
                Positioned(
                  top: h * 0.09,
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
                  top: ontap ? h * 0.439 : h * 0.75,
                  left: w * 0.43,
                  bottom: 0,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        ontap = !ontap;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: w * 0.01,
                            color: const Color.fromARGB(40, 0, 123, 255),
                          ),
                        ],
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child:
                            ontap
                                ? Icon(Icons.keyboard_arrow_down_rounded)
                                : Icon(Icons.keyboard_arrow_up_sharp),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Spacewidgetheight(space: h * 0.03),
                  Row(
                    children: [
                      Text(
                        'Trip Details',
                        style: AppThemes.titleSmall.copyWith(
                          color: AppColors.textPrimary,
                        ),
                      ),
                    ],
                  ),
                  Spacewidgetheight(space: h * 0.02),

                  Row(
                    children: [
                      Text(
                        'Route:  ',
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColors.textSecondary,
                        ),
                      ),
                      Text(
                        'From:  ',
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
                  Spacewidgetheight(space: h * 0.02),
                  Row(
                    children: [
                      Text(
                        'Started:  ',
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColors.textSecondary,
                        ),
                      ),
                      Spacewidgetwidth(space: 5),

                      Text(
                        '7:00AM – May 2, 2025',
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColors.textPrimary,
                        ),
                      ),
                    ],
                  ),
                  Spacewidgetheight(space: h * 0.02),
                  Divider(color: Appcolor.grytextfield),
                  Row(
                    children: [
                      Text(
                        'Passengers',
                        style: TextStyle(
                          fontSize: h * 0.02,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),

                  Container(
                    decoration: BoxDecoration(),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(Appimage.lady),
                          ),
                          Spacewidgetwidth(space: 10),
                          Text(
                            'Sarah O.',
                            style: AppThemes.titleSmall.copyWith(
                              color: AppColors.textPrimary,
                              fontSize: 16,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: h * 0.02,
                                color: Colors.deepOrange,
                              ),
                              Spacewidgetwidth(space: 5),
                              Text('4.2'),
                            ],
                          ),
                          Spacewidgetwidth(space: 5),

                          Container(width: w * 0.03, child: Divider()),
                          Spacewidgetwidth(space: 5),

                          Text('Seat 1'),
                          Spacewidgetwidth(space: 5),

                          Spacer(),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Appcolor.primary,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Text(
                                'Mark Pickup',
                                style: TextStyle(color: AppColors.textWhite),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'Status: Awaiting',
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColors.textSecondary,
                        ),
                      ),
                    ],
                  ),
                  Spacewidgetheight(space: h * 0.01),
                  Text(
                    '-------------------------------------------------- ',
                    style: TextStyle(color: Appcolor.grytextfield),
                  ),
                  Container(
                    decoration: BoxDecoration(),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(Appimage.lady),
                          ),
                          Spacewidgetwidth(space: 10),
                          Text(
                            'Sarah O.',
                            style: AppThemes.titleSmall.copyWith(
                              color: AppColors.textPrimary,
                              fontSize: 16,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: h * 0.02,
                                color: Colors.deepOrange,
                              ),
                              Spacewidgetwidth(space: 5),
                              Text(
                                '4.2',
                                style: TextStyle(color: Colors.deepOrange),
                              ),
                            ],
                          ),
                          Spacewidgetwidth(space: 5),

                          Container(width: w * 0.03, child: Divider()),
                          Spacewidgetwidth(space: 5),

                          Text('Seat 1'),
                          Spacewidgetwidth(space: 5),

                          Spacer(),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Appcolor.primary,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Text(
                                'Mark Pickup',
                                style: TextStyle(color: AppColors.textWhite),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'Status: Awaiting',
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColors.textSecondary,
                        ),
                      ),
                    ],
                  ),
                  Spacewidgetheight(space: h * 0.02),
                  // Text(
                  //   '---------------------------------------------------------------------------------------------------------- ',
                  //   style: TextStyle(color: Appcolor.grytextfield),
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '🚨 Emergency',
                        style: TextStyle(color: AppColors.error, fontSize: 16),
                      ),
                      Spacewidgetwidth(space: 5),
                      Image(image: AssetImage(Appimage.message)),
                      Spacewidgetwidth(space: 5),
                      Image(image: AssetImage(Appimage.call)),
                    ],
                  ),
                  Spacewidgetheight(space: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Custombuttom(
                        tap: () {
                          Get.to(Confirmrecruitingctrip());
                        },
                        tittle: 'Mark Trip as Completed',
                        width: 219,
                        height: 48,
                      ),
                      Spacewidgetwidth(space: 10),
                      Text(
                        'Cancel',
                        style: TextStyle(color: AppColors.colorBlue),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavWidget(),
    );
  }
}
