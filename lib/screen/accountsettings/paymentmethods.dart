import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/theme/app_theme.dart';
import 'package:rideshareapp/widget/custombuttom.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class Paymentmethods extends StatelessWidget {
  const Paymentmethods({super.key});

  @override
  Widget build(BuildContext context) {
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
                          'Payment Methods',
                          style: AppThemes.bodySmall.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: AppColors.textPrimary,
                          ),
                        ),
                      ],
                    ),
                    Spacewidgetheight(space: 50),
                    Container(
                      height: 317,
                      width: 392,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(230, 242, 255, 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image(image: AssetImage(Appimage.messagelink)),
                          Text(
                            'Want to get paid?',
                            style: TextStyle(
                              color: AppColors.textPrimary,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Just add a payout method and you’ll be well',
                            style: TextStyle(
                              color: AppColors.textPrimary,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            'On your way',
                            style: TextStyle(
                              color: AppColors.textPrimary,
                              fontSize: 12,
                            ),
                          ),
                          Custombuttom(
                            tap: () {
                              _pleaseNotethatdialog(context);
                            },
                            tittle: 'Add New Method',
                            width: 150,
                            fontsize: 12.7,
                            height: 35,
                          ),
                        ],
                      ),
                    ),

                    // Title (left aligned)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _pleaseNotethatdialog(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Container(
            height: 244,
            width: 298.55859375,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(image: AssetImage(Appimage.messagepin)),
                  Text(
                    'Please note that:',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  Text(
                    'You will be charged a sum of 50 Naira!',
                    style: TextStyle(
                      fontSize: 13.9,
                      color: AppColors.textSecondary,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Custombuttom(tittle: 'Proceed', width: 107, height: 48),
                      Spacewidgetwidth(space: 10),
                      Text('Cancel', style: TextStyle(color: Colors.red)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
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
