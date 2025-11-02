import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/theme/app_theme.dart';
import 'package:rideshareapp/widget/custombuttom.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class Kycverification extends StatefulWidget {
  const Kycverification({super.key});

  @override
  State<Kycverification> createState() => _KycverificationState();
}

class _KycverificationState extends State<Kycverification> {
  bool pushNotifications = true;
  bool driverArrivals = true;
  bool promotions = true;
  bool appTips = true;
  bool emails = true;

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                child: Column(
                  children: [
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
                        const SizedBox(width: 12),
                        // spacer so title sits left below (we mirror screenshot where title is left aligned)
                        const Spacer(),
                        _notificationButton(hasDot: true, onTap: () {}),
                      ],
                    ),
                    Spacewidgetheight(space: 20),
                    Row(
                      children: [
                        Text(
                          'KYC Verification',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: AppColors.textPrimary,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Spacewidgetheight(space: 10),
              Container(
                height: 800,
                width: w.toDouble(),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: AppColors.textWhite,
                ),
                child: Column(
                  children: [
                    Spacewidgetheight(space: 20),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.textWhite,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3.9,
                            color: const Color.fromARGB(17, 1, 82, 168),
                            offset: Offset(0, 2),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 398,
                      width: 392,
                      child: Column(
                        children: [
                          Spacewidgetheight(space: 25),
                          Container(
                            height: 86,
                            width: w.toDouble(),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: AppColors.borderLight),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Image(image: AssetImage(Appimage.id)),
                                          Spacewidgetwidth(space: 5),
                                          Text(
                                            'NIN Verification',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: AppColors.textPrimary,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
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
                                              color: AppColors.success,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'View details',
                                    style: TextStyle(
                                      color: AppColors.colorBlue,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Spacewidgetheight(space: 25),
                          Container(
                            height: 86,
                            width: w.toDouble(),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: AppColors.borderLight),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Image(
                                            image: AssetImage(Appimage.cartag),
                                          ),
                                          Spacewidgetwidth(space: 5),
                                          Text(
                                            ' Driver’s License',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: AppColors.textPrimary,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Icon(
                                            Icons.check_circle_outline,
                                            size: 15,
                                            color: Colors.orange,
                                          ),

                                          Spacewidgetwidth(space: 5),
                                          Text(
                                            'Pending',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.orange,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Custombuttom(
                                    tittle: 'Resubmit',
                                    width: 108,
                                    height: 37,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Spacewidgetheight(space: 25),

                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.fadeblue,
                              border: Border.all(color: AppColors.borderLight),
                            ),
                            height: 74,
                            width: w.toDouble(),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'Your Driver’s License is under review. This may take 24–48 hours.',
                                  style: TextStyle(
                                    fontSize: 12,

                                    color: AppColors.colorBlue,
                                  ),
                                ),
                                Text(
                                  'If your document is blurry or invalid, you may be asked to resubmit.',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: AppColors.textSecondary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacewidgetheight(space: 20),
                          Text(
                            'Contact Support',
                            style: TextStyle(color: AppColors.colorBlue),
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
      ),
    );
  }

  Widget _notificationButton({
    required bool hasDot,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              border: Border.all(color: AppColors.borderLight),
            ),
            child: const Image(image: AssetImage(Appimage.notiff)),
          ),
          if (hasDot)
            Positioned(
              right: -2,
              top: -2,
              child: CircleAvatar(
                child: Center(
                  child: Text(
                    '2',
                    style: AppThemes.titleSmall.copyWith(fontSize: 8),
                  ),
                ),
                radius: 6,
                backgroundColor: AppColors.error,
              ),
            ),
        ],
      ),
    );
  }
}
