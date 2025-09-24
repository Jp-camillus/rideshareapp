import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/theme/app_theme.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class Matchingtriplist extends StatelessWidget {
  const Matchingtriplist({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacewidgetheight(space: h * 0.1),
            Container(
              height: h * 0.1,
              width: w.toDouble(),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(226, 240, 255, 1),
                    Color.fromRGBO(226, 240, 255, 0),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
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
                    Row(
                      children: [
                        Image(image: AssetImage(Appimage.sarh)),
                        Image(image: AssetImage(Appimage.filter)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Trip available',
                    style: AppThemes.titleSmall.copyWith(
                      color: AppColors.textPrimary,
                    ),
                  ),
                  Text(
                    '55 Results',
                    style: TextStyle(
                      fontSize: 12.9,
                      color: AppColors.textSecondary,
                    ),
                  ),
                  _buildcard(context),
                  _buildcard(context),
                  _buildcard(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _buildcard(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();
    return Card(
      shadowColor: const Color.fromARGB(33, 0, 123, 255),
      elevation: 6,
      child: Container(
        height: h * 0.25,
        width: w.toDouble(),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Image(image: AssetImage(Appimage.s)),
                  Spacewidgetwidth(space: 5),

                  Text(
                    'Ikeja, Lagos',
                    style: TextStyle(
                      fontSize: 12.77,
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
                      fontSize: 12.77,
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Chinedu O.',
                        style: TextStyle(
                          fontSize: 13.62,
                          color: AppColors.textPrimary,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.deepOrange,
                            size: h * 0.015,
                          ),
                          Text(
                            '4.2',
                            style: TextStyle(
                              color: Colors.deepOrange,
                              fontSize: h * 0.015,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Image(
                            height: h * 0.02,
                            image: AssetImage(Appimage.claritycarline),
                          ),
                          Text(
                            'Toyota Corolla (2018)',
                            style: TextStyle(fontSize: h * 0.012),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Spacewidgetwidth(space: 10),
                  Row(
                    children: [
                      Spacewidgetwidth(space: 5),
                      Text(
                        '₦1,200',
                        style: TextStyle(
                          fontSize: 13.62,
                          color: AppColors.textPrimary,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(
                    'View Trip',
                    style: TextStyle(
                      fontSize: 13.62,
                      color: AppColors.primaryBlue,
                    ),
                  ),
                  Icon(
                    size: h * 0.01,
                    Icons.arrow_forward_ios,
                    color: Appcolor.primarrylight,
                  ),
                ],
              ),
              Spacewidgetheight(space: 10),
              Divider(),
              Row(
                children: [
                  Image(image: AssetImage(Appimage.calendar)),
                  Text(
                    'Friday May 10, 2025',
                    style: TextStyle(
                      fontSize: 13,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  Spacewidgetwidth(space: 5),
                  Text(
                    "|",
                    style: TextStyle(
                      fontSize: 13,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  Spacewidgetwidth(space: 5),
                  Image(image: AssetImage(Appimage.clock)),
                  Text(
                    '8:00 AM',
                    style: TextStyle(
                      fontSize: 13,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  Spacewidgetwidth(space: 5),
                  Text(
                    "|",
                    style: TextStyle(
                      fontSize: 13,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  Spacewidgetwidth(space: 5),
                  Image(image: AssetImage(Appimage.chair)),

                  Text(
                    ' 3 seat',
                    style: TextStyle(
                      fontSize: 13,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: h * 0.03,
                    width: w * 0.2,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(247, 250, 255, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'Cheapest',
                        style: TextStyle(
                          fontSize: 13,
                          color: AppColors.primaryBlue,
                        ),
                      ),
                    ),
                  ),
                  Spacewidgetwidth(space: 5),
                  Text(
                    '|',
                    style: TextStyle(
                      fontSize: 13,
                      color: AppColors.textSecondary,
                    ),
                  ),
                  Container(
                    height: h * 0.03,
                    width: w * 0.2,
                    decoration: BoxDecoration(
                      color: AppColors.fadegreen,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'Fastest',
                        style: TextStyle(
                          fontSize: 13,
                          color: AppColors.success,
                        ),
                      ),
                    ),
                  ),
                  Spacewidgetwidth(space: 5),
                  Text(
                    '|',
                    style: TextStyle(
                      fontSize: 13,
                      color: AppColors.textSecondary,
                    ),
                  ),
                  Container(
                    height: h * 0.03,
                    width: w * 0.23,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 247, 253, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'Recommended',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromRGBO(243, 47, 202, 0.8),
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
    );
  }
}
