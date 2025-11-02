import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/theme/app_theme.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class Profileview extends StatelessWidget {
  const Profileview({super.key});

  @override
  Widget build(BuildContext context) {
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

                    // Title (left aligned)
                    Row(
                      children: [
                        Text(
                          'James Profile',
                          style: AppThemes.bodySmall.copyWith(
                            fontWeight: FontWeight.w800,
                            color: AppColors.textPrimary,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    // PROFILE CARD
                    Row(
                      children: [
                        // Avatar with gradient ring
                        Container(
                          width: 70,
                          height: 74,
                          padding: const EdgeInsets.all(3.5),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: AppColors.buttongradient,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(36),
                              border: Border.all(
                                color: const Color(0xFFF4F6F8),
                              ),
                            ),
                            padding: const EdgeInsets.all(1),
                            child: Container(
                              width: 70,
                              height: 74,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,

                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(Appimage.profile),
                                ),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(width: 12),

                        // Info
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'James Okafor',
                                style: AppThemes.bodySmall.copyWith(
                                  fontWeight: FontWeight.w800,
                                  color: AppColors.textPrimary,
                                  fontSize: 15,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'james.okafor@gmail.com',
                                style: AppThemes.bodySmall.copyWith(
                                  fontWeight: FontWeight.w100,
                                  color: AppColors.textSecondary,
                                  fontSize: 12,
                                ),
                              ),
                              Row(
                                children: [
                                  // small role chip
                                  Text(
                                    'Driver',
                                    style: AppThemes.bodySmall.copyWith(
                                      fontWeight: FontWeight.w800,
                                      color: AppColors.textSecondary,
                                      fontSize: 10,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        size: 12,
                                        color: AppColors.warning,
                                      ),
                                      SizedBox(width: 6),
                                      Text(
                                        '4.8',
                                        style: AppThemes.bodySmall.copyWith(
                                          fontWeight: FontWeight.w800,
                                          color: AppColors.warning,
                                          fontSize: 10,
                                        ),
                                      ),
                                      SizedBox(width: 8),
                                      Text(
                                        'Based On 42 Reviews',
                                        style: AppThemes.bodySmall.copyWith(
                                          fontWeight: FontWeight.w800,
                                          color: AppColors.textSecondary,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              GestureDetector(
                                onTap: () {},
                                child: Text(
                                  'View Profile',
                                  style: AppThemes.bodyMedium.copyWith(
                                    fontWeight: FontWeight.w100,
                                    color: AppColors.primaryBlue,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Icon(Icons.arrow_drop_down_outlined),

                    const SizedBox(height: 18),
                  ],
                ),
              ),
              Container(
                height: 692.0062255859375,
                width: 440,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: AppColors.textWhite,
                ),
                child: Column(
                  children: [
                    Spacewidgetheight(space: 60),
                    Card(
                      shadowColor: const Color.fromARGB(14, 0, 123, 255),
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.textWhite,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 93.50953674316406,
                        width: 392,
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Verification Status',
                                style: AppThemes.bodySmall.copyWith(
                                  fontSize: 16,
                                  color: AppColors.textPrimary,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Spacewidgetheight(space: 15),
                              Row(
                                children: [
                                  Image(image: AssetImage(Appimage.verify)),
                                  Spacewidgetwidth(space: 10),
                                  Text(
                                    'Not verified',
                                    style: AppThemes.bodySmall.copyWith(
                                      fontSize: 13.61,
                                      color: AppColors.textSecondary,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      shadowColor: const Color.fromARGB(14, 0, 123, 255),
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.textWhite,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 93.50953674316406,
                        width: 392,
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Bio',
                                style: AppThemes.bodySmall.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.textPrimary,
                                ),
                              ),
                              Spacewidgetheight(space: 15),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Write your bio...',
                                    style: AppThemes.bodySmall.copyWith(
                                      fontSize: 13.61,
                                      color: AppColors.textSecondary,
                                    ),
                                  ),
                                  Text(
                                    'Add here',
                                    style: AppThemes.bodySmall.copyWith(
                                      fontSize: 13.61,
                                      color: AppColors.colorBlue,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      shadowColor: const Color.fromARGB(14, 0, 123, 255),
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.textWhite,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 93.50953674316406,
                        width: 392,
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Your Reviews',
                                style: AppThemes.bodySmall.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.textPrimary,
                                ),
                              ),
                              Spacewidgetheight(space: 15),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'No reviews yet',
                                    style: AppThemes.bodySmall.copyWith(
                                      fontSize: 13.61,
                                      color: AppColors.textSecondary,
                                    ),
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
