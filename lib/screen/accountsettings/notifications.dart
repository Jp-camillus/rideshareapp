import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/theme/app_theme.dart';
import 'package:rideshareapp/widget/custombuttom.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
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
                    Spacewidgetheight(space: 30),
                    Row(
                      children: [
                        Text(
                          'Notifications',
                          style: AppThemes.bodySmall.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: AppColors.textPrimary,
                          ),
                        ),
                      ],
                    ),
                    Spacewidgetheight(space: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Driver Arrivals',
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.textPrimary,
                          ),
                        ),
                        Transform.scale(
                          scale: 0.8,
                          child: Switch.adaptive(
                            value: driverArrivals,
                            activeTrackColor: AppColors.colorBlue,
                            activeColor: AppColors.textWhite,
                            onChanged: (value) {
                              setState(() => driverArrivals = value);
                            },
                          ),
                        ),
                      ],
                    ),
                    Spacewidgetheight(space: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Promotions',
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.textPrimary,
                          ),
                        ),
                        Transform.scale(
                          scale: 0.8,
                          child: Switch.adaptive(
                            value: promotions,
                            activeTrackColor: AppColors.colorBlue,
                            activeColor: AppColors.textWhite,
                            onChanged: (value) {
                              setState(() => promotions = value);
                            },
                          ),
                        ),
                      ],
                    ),
                    Spacewidgetheight(space: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'App Tips',
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.textPrimary,
                          ),
                        ),
                        Transform.scale(
                          scale: 0.8,
                          child: Switch.adaptive(
                            value: appTips,
                            activeTrackColor: AppColors.colorBlue,
                            activeColor: AppColors.textWhite,
                            onChanged: (value) {
                              setState(() => appTips = value);
                            },
                          ),
                        ),
                      ],
                    ),
                    Spacewidgetheight(space: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Emails',
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.textPrimary,
                          ),
                        ),
                        Transform.scale(
                          scale: 0.8,
                          child: Switch.adaptive(
                            value: emails,
                            activeTrackColor: AppColors.colorBlue,
                            activeColor: AppColors.textWhite,
                            onChanged: (value) {
                              setState(() => emails = value);
                            },
                          ),
                        ),
                      ],
                    ),
                    Spacewidgetheight(space: 30),
                    Row(
                      children: [
                        Custombuttom(
                          fontsize: 14.03,
                          tittle: 'Save Changes',
                          width: 138,
                          height: 45,
                        ),
                      ],
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
