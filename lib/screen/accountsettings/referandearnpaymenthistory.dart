import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/theme/app_theme.dart';
import 'package:rideshareapp/widget/custombuttom.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class Referandearnpaymenthistory extends StatefulWidget {
  const Referandearnpaymenthistory({Key? key}) : super(key: key);

  @override
  State<Referandearnpaymenthistory> createState() =>
      _ReferandearnpaymenthistoryState();
}

class _ReferandearnpaymenthistoryState
    extends State<Referandearnpaymenthistory> {
  final TextEditingController oldPasswordController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  void handleSave() {
    // TODO: Add logic to update password
    debugPrint('Password changed successfully');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFC),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header row
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

                  const SizedBox(height: 10),
                  const Text(
                    "Payout History",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 753,
              width: 440,
              decoration: BoxDecoration(
                color: AppColors.textWhite,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Column(
                children: [
                  Spacewidgetheight(space: 30),
                  Container(
                    height: 76,
                    width: 392,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      border: Border.all(color: AppColors.borderLight),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image(
                                    image: AssetImage(
                                      Appimage.calendarandclockk,
                                    ),
                                  ),
                                  Spacewidgetwidth(space: 10),
                                  Text(
                                    'May 7, 2025',
                                    style: TextStyle(
                                      color: AppColors.textPrimary,
                                    ),
                                  ),
                                  Spacewidgetwidth(space: 5),
                                  Text(
                                    '08:30am',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: AppColors.textPrimary,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                '₦12,000',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: AppColors.textPrimary,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.check_circle_outline_sharp,
                                color: Colors.orange,
                                size: 12,
                              ),
                              Spacewidgetwidth(space: 6),
                              Text(
                                'Pending',
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacewidgetheight(space: 30),
                  Container(
                    height: 76,
                    width: 392,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      border: Border.all(color: AppColors.borderLight),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image(
                                    image: AssetImage(
                                      Appimage.calendarandclockk,
                                    ),
                                  ),
                                  Spacewidgetwidth(space: 10),
                                  Text(
                                    'May 7, 2025',
                                    style: TextStyle(
                                      color: AppColors.textPrimary,
                                    ),
                                  ),
                                  Spacewidgetwidth(space: 5),
                                  Text(
                                    '08:30am',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: AppColors.textPrimary,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                '₦12,000',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: AppColors.textPrimary,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.check_circle_outline_sharp,
                                color: Colors.green,
                                size: 12,
                              ),
                              Spacewidgetwidth(space: 6),
                              Text(
                                'Paid',
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacewidgetheight(space: 30),
                  Container(
                    height: 76,
                    width: 392,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      border: Border.all(color: AppColors.borderLight),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image(
                                    image: AssetImage(
                                      Appimage.calendarandclockk,
                                    ),
                                  ),
                                  Spacewidgetwidth(space: 10),
                                  Text(
                                    'May 7, 2025',
                                    style: TextStyle(
                                      color: AppColors.textPrimary,
                                    ),
                                  ),
                                  Spacewidgetwidth(space: 5),
                                  Text(
                                    '08:30am',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: AppColors.textPrimary,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                '₦12,000',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: AppColors.textPrimary,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.check_circle_outline_sharp,
                                color: Colors.red,
                                size: 12,
                              ),
                              Spacewidgetwidth(space: 6),
                              Text(
                                'Failed',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
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
