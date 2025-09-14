import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/screen/logistics/farestimateandconfirmation.dart';
import 'package:rideshareapp/theme/app_theme.dart';
import 'package:rideshareapp/widget/bottomnav.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class Selectvehicletype extends StatelessWidget {
  const Selectvehicletype({super.key});

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
                        'Step 4 of 5',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.textPrimary,
                        ),
                      ),
                      Text(
                        '80% Complete',
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
                          width: w * 0.8,
                          height: h * 0.0152,
                          decoration: BoxDecoration(
                            color: Appcolor.primary,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        Container(
                          width: w * 0.1,
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
                    height: h * 0.71,
                    width: w * 0.902,
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
                        height: h * 0.708,
                        width: w * 0.9,
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
                                    'Select Vehicle Type',
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
                                        image: AssetImage(Appimage.motorbike),
                                      ),
                                      title: Text(
                                        'Motorbike',
                                        style: TextStyle(
                                          color: AppColors.textPrimary,
                                        ),
                                      ),
                                      subtitle: Text(
                                        '15-30 mins',
                                        style: TextStyle(
                                          color: AppColors.textSecondary,
                                        ),
                                      ),
                                      trailing: Text(
                                        'N1,500',
                                        style: TextStyle(
                                          color: AppColors.textPrimary,
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
                                        image: AssetImage(
                                          Appimage.claritycarline,
                                        ),
                                      ),
                                      title: Text(
                                        'Car',
                                        style: TextStyle(
                                          color: AppColors.textPrimary,
                                        ),
                                      ),
                                      subtitle: Text(
                                        '20-40 mins',
                                        style: TextStyle(
                                          color: AppColors.textSecondary,
                                        ),
                                      ),
                                      trailing: Text(
                                        'N2,500',
                                        style: TextStyle(
                                          color: AppColors.textPrimary,
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
                                        image: AssetImage(Appimage.van),
                                      ),
                                      title: Text(
                                        'Van',
                                        style: TextStyle(
                                          color: AppColors.textPrimary,
                                        ),
                                      ),
                                      subtitle: Text(
                                        '30-60 mins',
                                        style: TextStyle(
                                          color: AppColors.textSecondary,
                                        ),
                                      ),
                                      trailing: Text(
                                        'N3,500',
                                        style: TextStyle(
                                          color: AppColors.textPrimary,
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
                                        image: AssetImage(Appimage.truck),
                                      ),
                                      title: Text(
                                        'Truck',
                                        style: TextStyle(
                                          color: AppColors.textPrimary,
                                        ),
                                      ),
                                      subtitle: Text(
                                        '45-90 mins',
                                        style: TextStyle(
                                          color: AppColors.textSecondary,
                                        ),
                                      ),
                                      trailing: Text(
                                        'N4,500',
                                        style: TextStyle(
                                          color: AppColors.textPrimary,
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
                                      Get.to(Farestimateandconfirmation());
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
