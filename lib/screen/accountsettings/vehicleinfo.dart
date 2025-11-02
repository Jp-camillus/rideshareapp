import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/theme/app_theme.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class Vehicleinfo extends StatelessWidget {
  const Vehicleinfo({super.key});

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
                          'Vehicle Details',
                          style: AppThemes.bodySmall.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: AppColors.textPrimary,
                          ),
                        ),
                      ],
                    ),
                    Spacewidgetheight(space: 20),

                    // Title (left aligned)
                  ],
                ),
              ),

              Container(
                height: 907.5693969726562,
                width: 440,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: AppColors.textWhite,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Status:'),
                          Row(
                            children: [
                              Image(image: AssetImage(Appimage.verifyicon)),
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
                      Spacewidgetheight(space: 60),
                      Card(
                        shadowColor: const Color.fromARGB(14, 0, 123, 255),
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.textWhite,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: 220.0021514892578,
                          width: w.toDouble(),
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Vehicle info',
                                  style: AppThemes.bodySmall.copyWith(
                                    fontSize: 16,
                                    color: AppColors.textPrimary,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Spacewidgetheight(space: 15),
                                Row(
                                  children: [
                                    Text(
                                      'Vehicle:',
                                      style: AppThemes.bodySmall.copyWith(
                                        fontSize: 14,
                                        color: AppColors.textSecondary,
                                      ),
                                    ),
                                    Spacewidgetwidth(space: 10),
                                    Text(
                                      'Toyota Corolla',
                                      style: AppThemes.bodySmall.copyWith(
                                        fontSize: 14,
                                        color: AppColors.textPrimary,
                                      ),
                                    ),
                                  ],
                                ),
                                Spacewidgetheight(space: 10),
                                Row(
                                  children: [
                                    Text(
                                      'Year:',
                                      style: AppThemes.bodySmall.copyWith(
                                        fontSize: 14,
                                        color: AppColors.textSecondary,
                                      ),
                                    ),
                                    Spacewidgetwidth(space: 10),
                                    Text(
                                      '2018',
                                      style: AppThemes.bodySmall.copyWith(
                                        fontSize: 14,
                                        color: AppColors.textPrimary,
                                      ),
                                    ),
                                  ],
                                ),
                                Spacewidgetheight(space: 10),
                                Row(
                                  children: [
                                    Text(
                                      'Plate:',
                                      style: AppThemes.bodySmall.copyWith(
                                        fontSize: 14,
                                        color: AppColors.textSecondary,
                                      ),
                                    ),
                                    Spacewidgetwidth(space: 10),
                                    Text(
                                      'KJA-123XY',
                                      style: AppThemes.bodySmall.copyWith(
                                        fontSize: 14,
                                        color: AppColors.textPrimary,
                                      ),
                                    ),
                                  ],
                                ),
                                Spacewidgetheight(space: 10),
                                Row(
                                  children: [
                                    Text(
                                      'Color:',
                                      style: AppThemes.bodySmall.copyWith(
                                        fontSize: 14,
                                        color: AppColors.textSecondary,
                                      ),
                                    ),
                                    Spacewidgetwidth(space: 10),
                                    Text(
                                      'White & Green',
                                      style: AppThemes.bodySmall.copyWith(
                                        fontSize: 14,
                                        color: AppColors.textPrimary,
                                      ),
                                    ),
                                  ],
                                ),
                                Spacewidgetheight(space: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Edit',
                                      style: TextStyle(
                                        fontSize: 13.9,
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
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.textWhite,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: 115.01153564453125,
                          width: w.toDouble(),
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Documents:',
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
                                      'Driver’s License.pdf',
                                      style: AppThemes.bodySmall.copyWith(
                                        fontSize: 13.61,
                                        color: AppColors.colorBlue,
                                      ),
                                    ),
                                  ],
                                ),
                                Spacewidgetheight(space: 5),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Vehicle Reg.pdf',
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
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.textWhite,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: 181,
                          width: w.toDouble(),
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Vehicle Photo',
                                  style: AppThemes.bodySmall.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.textPrimary,
                                  ),
                                ),
                                Spacewidgetheight(space: 15),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      Image(
                                        height: 105.29009246826172,
                                        width: 168.4641571044922,
                                        image: AssetImage(Appimage.greencar),
                                      ),
                                      Image(
                                        height: 105.29009246826172,
                                        width: 168.4641571044922,
                                        image: AssetImage(Appimage.ww),
                                      ),
                                    ],
                                  ),
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
