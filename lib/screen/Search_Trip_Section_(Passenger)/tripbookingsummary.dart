import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/theme/app_theme.dart';
import 'package:rideshareapp/widget/custombuttom.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class Tripbookingsummary extends StatelessWidget {
  const Tripbookingsummary({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacewidgetheight(space: h * 0.05),
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: CircleAvatar(
                  backgroundColor: AppColors.cardLight,
                  child: Icon(Icons.arrow_back, color: Appcolor.primarrylight),
                ),
              ),
              Spacewidgetheight(space: h * 0.02),
              Text(
                'Trip Booking Summary',
                style: AppThemes.titleSmall.copyWith(
                  fontSize: 18,
                  color: AppColors.textPrimary,
                ),
              ),
              Spacewidgetheight(space: h * 0.01),
              Container(
                height: h * 0.58,
                width: w.toDouble(),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: w * 0.26,
                            height: h * 0.12,
                            child: Stack(
                              children: [
                                Positioned(
                                  top: h * 0.01,
                                  left: w * 0.11,
                                  bottom: 20,
                                  child: Container(
                                    height: h * 0.05,
                                    width: w * 0.17,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.contain,
                                        image: AssetImage(Appimage.whitecar),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Positioned(
                                    bottom: 40,

                                    child: Container(
                                      height: h * 0.05,
                                      width: w * 0.17,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(Appimage.smileman),
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
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Chinedu O.',
                                style: AppThemes.titleMedium.copyWith(
                                  color: AppColors.textPrimary,
                                  fontSize: 18,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: AppColors.primaryOrange,
                                    size: 12.58,
                                  ),
                                  Text(
                                    '4.2',
                                    style: TextStyle(
                                      fontSize: 12.58,
                                      color: AppColors.primaryOrange,
                                    ),
                                  ),
                                  Spacewidgetwidth(space: 5),
                                  Text(
                                    '(250)',
                                    style: TextStyle(
                                      fontSize: 12.58,
                                      color: AppColors.textSecondary,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    size: 15,
                                    Icons.location_on_outlined,
                                    color: Appcolor.primarrylight,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'Building 8, 77 N WASHINGTON ST, ',
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: 10.58,
                                          color: AppColors.textPrimary,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Spacewidgetwidth(space: 10),
                        ],
                      ),
                      Divider(),
                      Spacewidgetheight(space: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Date',
                            style: TextStyle(
                              fontSize: 12.9,
                              color: AppColors.textSecondary,
                            ),
                          ),
                          Text(
                            'May 2 @ 7:00 AM',
                            style: TextStyle(
                              fontSize: 15,
                              color: AppColors.textPrimary,
                            ),
                          ),
                        ],
                      ),
                      Spacewidgetheight(space: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Seat',
                            style: TextStyle(
                              fontSize: 12.9,
                              color: AppColors.textSecondary,
                            ),
                          ),
                          Text(
                            '1seat',
                            style: TextStyle(
                              fontSize: 15,
                              color: AppColors.textPrimary,
                            ),
                          ),
                        ],
                      ),
                      Spacewidgetheight(space: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Price',
                            style: TextStyle(
                              fontSize: 12.9,
                              color: AppColors.textSecondary,
                            ),
                          ),
                          Text(
                            '₦2,500',
                            style: TextStyle(
                              fontSize: 15,
                              color: AppColors.textPrimary,
                            ),
                          ),
                        ],
                      ),
                      Spacewidgetheight(space: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Charges',
                            style: TextStyle(
                              fontSize: 12.9,
                              color: AppColors.textSecondary,
                            ),
                          ),
                          Text(
                            '#300',
                            style: TextStyle(
                              fontSize: 15,
                              color: AppColors.textPrimary,
                            ),
                          ),
                        ],
                      ),
                      Spacewidgetheight(space: 10),
                      Divider(),
                      Row(
                        children: [
                          Image(image: AssetImage(Appimage.clock)),
                          Spacewidgetwidth(space: 10),
                          Text(
                            'Free cancellation before January 15',
                            style: TextStyle(
                              fontSize: 12.9,
                              color: AppColors.textSecondary,
                            ),
                          ),
                        ],
                      ),
                      Spacewidgetheight(space: h * 0.051),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
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
                          padding: EdgeInsets.all(13),
                          child: Row(
                            children: [
                              Text(
                                'Total',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.textPrimary,
                                ),
                              ),
                              Text(
                                ' (NGN)',
                                style: TextStyle(
                                  fontSize: 12.9,
                                  color: AppColors.textSecondary,
                                ),
                              ),
                              Spacer(),
                              Text(
                                '₦1,200',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.textPrimary,
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
              Spacewidgetheight(space: h * 0.02),
              Text(
                'Select Payment Method:',
                style: TextStyle(fontSize: 16, color: AppColors.textPrimary),
              ),
              Row(
                children: [
                  Radio(value: false, groupValue: true, onChanged: (value) {}),
                  Text(
                    'Wallet',
                    style: TextStyle(
                      fontSize: 13.5,
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Radio(value: false, groupValue: true, onChanged: (value) {}),
                  Text(
                    'Bank Transfer',
                    style: TextStyle(
                      fontSize: 13.5,
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Radio(value: false, groupValue: true, onChanged: (value) {}),
                  Text(
                    'Debit/Credit Card',
                    style: TextStyle(
                      fontSize: 13.5,
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
              Spacewidgetheight(space: h * 0.02),
              Row(
                children: [
                  Spacewidgetwidth(space: w * 0.12),
                  Text(
                    'Other Options',
                    style: TextStyle(
                      fontSize: 13.5,
                      color: AppColors.primaryBlue,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: h * 0.016,
                    color: Appcolor.primarrylight,
                  ),
                ],
              ),
              Spacewidgetheight(space: h * 0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Custombuttom(
                    tittle: 'Confirm Booking & Pay',
                    width: 198,
                    height: 48,
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
