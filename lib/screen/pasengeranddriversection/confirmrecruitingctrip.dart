import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/screen/pasengeranddriversection/choosepaymentoption.dart';
import 'package:rideshareapp/theme/app_theme.dart';
import 'package:rideshareapp/widget/bottomnav.dart';
import 'package:rideshareapp/widget/custombuttom.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class Confirmrecruitingctrip extends StatelessWidget {
  const Confirmrecruitingctrip({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(h * 0.02),
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
                  ],
                ),
                Spacewidgetheight(space: h * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Confirm Recurring Trip',
                      style: AppThemes.titleSmall.copyWith(
                        color: AppColors.textPrimary,
                      ),
                    ),
                  ],
                ),
                Card(
                  elevation: 8,
                  shadowColor: const Color.fromARGB(12, 13, 125, 244),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(h * 0.02),
                  ),
                  child: Container(
                    height: 537.4066162109375,
                    width: 392.3226318359375,

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(h * 0.02),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(19),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image(image: AssetImage(Appimage.s)),
                              Text(
                                ' Ikeja, Lagos',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.textPrimary,
                                ),
                              ),
                              SizedBox(width: w * 0.1, child: Divider()),
                              Icon(
                                Icons.location_on_outlined,
                                color: Appcolor.primarrylight,
                              ),
                              Text(
                                'Lekki Phase 1',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.textPrimary,
                                ),
                              ),
                            ],
                          ),
                          Spacewidgetheight(space: 10),

                          Row(
                            children: [
                              Image(image: AssetImage(Appimage.kkkkkk)),
                              Text(
                                ' Days',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.textSecondary,
                                ),
                              ),
                              Text(
                                ' Monday to Friday',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.textPrimary,
                                ),
                              ),
                            ],
                          ),
                          Spacewidgetheight(space: 10),
                          Row(
                            children: [
                              Image(image: AssetImage(Appimage.clock)),
                              Text(
                                ' Time:',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: AppColors.textPrimary,
                                ),
                              ),

                              Text(
                                '7:00 AM Departure, 4:00 PM Return',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: AppColors.textPrimary,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image(image: AssetImage(Appimage.chair)),
                              Text(
                                ' Seats',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: AppColors.textPrimary,
                                ),
                              ),

                              Text(
                                '2/4 available',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: AppColors.textPrimary,
                                ),
                              ),
                            ],
                          ),
                          Spacewidgetheight(space: 10),

                          Divider(color: Appcolor.grytextfield),
                          Spacewidgetheight(space: 10),

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
                                          fontSize: 9.19,
                                          color: AppColors.primaryOrange,
                                        ),
                                      ),
                                      Spacewidgetwidth(space: 5),
                                      Text(
                                        ' (120 reviews)',
                                        style: TextStyle(
                                          fontSize: 9.19,
                                          color: AppColors.textSecondary,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Image(
                                        height: 16,
                                        width: 16,
                                        image: AssetImage(
                                          Appimage.claritycarline,
                                        ),
                                      ),
                                      Text(
                                        'Toyota Corolla 2016',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: AppColors.textSecondary,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Divider(color: Appcolor.grytextfield),
                          Spacewidgetheight(space: 10),
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
                                  fontSize: 15.5,
                                  color: AppColors.textPrimary,
                                ),
                              ),
                              Text(
                                'per day',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: AppColors.textSecondary,
                                ),
                              ),
                            ],
                          ),
                          Spacewidgetheight(space: 16),
                          Container(
                            height: 60,
                            width: w.toDouble(),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  AppColors.fadeblue,
                                  AppColors.fadeorang,
                                ],
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                    '₦12,500',
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
                          Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Custombuttom(
                                tap: () {
                                  Get.to(Choosepaymentoption());
                                },
                                tittle: 'Confirm & Continue',
                                width: 189,
                                height: 56,
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
