import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/screen/logistics/selectvehicletype.dart';
import 'package:rideshareapp/theme/app_theme.dart';
import 'package:rideshareapp/widget/bottomnav.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class DeliverType extends StatelessWidget {
  const DeliverType({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
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
                        'Step 3 of 5',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.textPrimary,
                        ),
                      ),
                      Text(
                        '60% Complete',
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
                          width: w * 0.6,
                          height: h * 0.0152,
                          decoration: BoxDecoration(
                            color: AppColors.colorBlue,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        Container(
                          width: w * 0.2,
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
                    height: 450.2195129394531,
                    width: 398,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: AppColors.buttongradient,
                    ),
                    child: Center(
                      child: Container(
                        height: 448.2195129394531,
                        width: 396,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(18),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Spacewidgetheight(space: h * 0.02),
                              Row(
                                children: [
                                  Text(
                                    'Delivery Type',
                                    style: AppThemes.titleMedium.copyWith(
                                      color: AppColors.textPrimary,
                                    ),
                                  ),
                                ],
                              ),
                              Spacewidgetheight(space: h * 0.02),
                              Container(
                                height: h * 0.11,
                                width: w.toDouble(),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color.fromRGBO(209, 213, 219, 1),
                                  ),
                                  borderRadius: BorderRadius.circular(h * 0.02),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ListTile(
                                      leading: Image(
                                        image: AssetImage(Appimage.clock),
                                      ),
                                      title: Text(
                                        'Instant Delivery',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: AppColors.textPrimary,
                                        ),
                                      ),
                                      subtitle: Text(
                                        'Find nearest driver now',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: AppColors.textSecondary,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Spacewidgetheight(space: h * 0.02),
                              Container(
                                height: h * 0.11,
                                width: w.toDouble(),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color.fromRGBO(209, 213, 219, 1),
                                  ),
                                  borderRadius: BorderRadius.circular(h * 0.02),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ListTile(
                                      leading: Image(
                                        image: AssetImage(Appimage.kkkkkk),
                                      ),
                                      title: Text(
                                        'Scheduled Delivery',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: AppColors.textPrimary,
                                        ),
                                      ),
                                      subtitle: Text(
                                        'Select date & time',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: AppColors.textSecondary,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Spacewidgetheight(space: h * 0.02),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Get.to(Selectvehicletype());
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
      ),
      bottomNavigationBar: const CustomBottomNavWidget(),
    );
  }
}
