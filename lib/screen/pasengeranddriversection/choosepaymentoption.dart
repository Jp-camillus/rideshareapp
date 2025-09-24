import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/screen/Search_Trip_Section_(Passenger)/tripbookingsummary.dart';
import 'package:rideshareapp/screen/pasengeranddriversection/tripbookedsuccessfully.dart';
import 'package:rideshareapp/theme/app_theme.dart';
import 'package:rideshareapp/widget/bottomnav.dart';
import 'package:rideshareapp/widget/custombuttom.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class Choosepaymentoption extends StatelessWidget {
  const Choosepaymentoption({super.key});

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
                Spacewidgetheight(space: h * 0.03),

                Card(
                  elevation: 8,
                  shadowColor: const Color.fromARGB(12, 13, 125, 244),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(h * 0.02),
                  ),
                  child: Container(
                    height: 600.4066162109375,
                    width: 392.3226318359375,

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(h * 0.02),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(19),
                      child: Column(
                        children: [
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
                          Spacewidgetheight(space: 50),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Choose Days:',
                                style: AppThemes.titleSmall.copyWith(
                                  color: AppColors.textPrimary,
                                ),
                              ),
                            ],
                          ),
                          Spacewidgetheight(space: 10),

                          Row(
                            children: [
                              Checkbox(
                                checkColor: AppColors.textSecondary,
                                value: false,
                                onChanged: (value) {},
                              ),
                              Text(
                                'Mon',
                                style: TextStyle(
                                  color: AppColors.textSecondary,
                                ),
                              ),
                              Spacewidgetwidth(space: 5),
                              Checkbox(
                                checkColor: AppColors.textSecondary,
                                value: false,
                                onChanged: (value) {},
                              ),
                              Text(
                                'Tue',
                                style: TextStyle(
                                  color: AppColors.textSecondary,
                                ),
                              ),
                              Spacewidgetwidth(space: 5),
                              Checkbox(
                                checkColor: AppColors.textSecondary,
                                value: false,
                                onChanged: (value) {},
                              ),
                              Text(
                                'Wed',
                                style: TextStyle(
                                  color: AppColors.textSecondary,
                                ),
                              ),
                              Spacewidgetwidth(space: 5),
                              Checkbox(
                                checkColor: AppColors.textSecondary,
                                value: false,
                                onChanged: (value) {},
                              ),
                              Text(
                                'Thur',
                                style: TextStyle(
                                  color: AppColors.textSecondary,
                                ),
                              ),
                              Spacewidgetwidth(space: 5),
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                checkColor: AppColors.textSecondary,
                                value: false,
                                onChanged: (value) {},
                              ),
                              Text(
                                'Fri',
                                style: TextStyle(
                                  color: AppColors.textSecondary,
                                ),
                              ),
                              Spacewidgetwidth(space: 5),
                              Checkbox(
                                checkColor: AppColors.textSecondary,
                                value: false,
                                onChanged: (value) {},
                              ),
                              Text(
                                'Sat',
                                style: TextStyle(
                                  color: AppColors.textSecondary,
                                ),
                              ),
                              Spacewidgetwidth(space: 5),
                              Checkbox(
                                checkColor: AppColors.textSecondary,
                                value: false,
                                onChanged: (value) {},
                              ),
                              Text(
                                'Sun',
                                style: TextStyle(
                                  color: AppColors.textSecondary,
                                ),
                              ),

                              Spacewidgetwidth(space: 5),
                            ],
                          ),
                          Spacewidgetheight(space: 15),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Select Payment Method:',
                                style: AppThemes.titleSmall.copyWith(
                                  color: AppColors.textPrimary,
                                ),
                              ),
                            ],
                          ),
                          RadioMenuButton(
                            value: false,
                            groupValue: 0,
                            style: ButtonStyle(),
                            onChanged: (value) {},
                            child: Text(
                              'Wallet',
                              style: TextStyle(color: AppColors.textSecondary),
                            ),
                          ),
                          RadioMenuButton(
                            value: false,
                            groupValue: 0,
                            style: ButtonStyle(),
                            onChanged: (value) {},
                            child: Text(
                              'Bank Transfer',
                              style: TextStyle(color: AppColors.textSecondary),
                            ),
                          ),
                          RadioMenuButton(
                            value: false,
                            groupValue: 0,
                            style: ButtonStyle(),
                            onChanged: (value) {},
                            child: Text(
                              'Debit/Credit Card',
                              style: TextStyle(color: AppColors.textSecondary),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'Other Options',
                                style: TextStyle(color: AppColors.colorBlue),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 12,
                                color: AppColors.colorBlue,
                              ),
                            ],
                          ),

                          Spacewidgetheight(space: 10),
                          Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Custombuttom(
                                tap: () {
                                  Get.to(Tripbookedsuccessfully());
                                },
                                tittle: 'Proceed to Payment',
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
