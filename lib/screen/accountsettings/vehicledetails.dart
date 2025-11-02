import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/theme/app_theme.dart';
import 'package:rideshareapp/widget/customtextfield.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class Vehicledetails extends StatelessWidget {
  const Vehicledetails({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: SafeArea(
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
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: AppColors.textWhite,
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Make',
                          style: TextStyle(color: AppColors.textPrimary),
                        ),
                      ],
                    ),
                    Spacewidgetheight(space: 5),
                    Row(
                      children: [
                        Container(
                          height: 46.05763626098633,
                          width: 343,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(color: Colors.grey.shade300),
                          ),
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color.fromRGBO(243, 244, 246, 1),

                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: AppColors.borderLight,
                                ),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              hint: Text(
                                'Toyota',
                                style: TextStyle(
                                  color: AppColors.textSecondary,
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide(
                                  color: AppColors.borderLight,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    Spacewidgetheight(space: h * 0.05),
                    Row(
                      children: [
                        Text(
                          'Model',
                          style: TextStyle(color: AppColors.textPrimary),
                        ),
                      ],
                    ),
                    Spacewidgetheight(space: 5),
                    Row(
                      children: [
                        Container(
                          height: 46.05763626098633,
                          width: 343,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(color: Colors.grey.shade300),
                          ),
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color.fromRGBO(243, 244, 246, 1),

                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: AppColors.borderLight,
                                ),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              hint: Text(
                                'Corolla',
                                style: TextStyle(
                                  color: AppColors.textSecondary,
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide(
                                  color: AppColors.borderLight,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    Spacewidgetheight(space: h * 0.05),
                    Row(
                      children: [
                        Text(
                          'Type',
                          style: TextStyle(color: AppColors.textPrimary),
                        ),
                      ],
                    ),
                    Spacewidgetheight(space: 5),
                    Row(
                      children: [
                        Container(
                          height: 46.05763626098633,
                          width: 343,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(color: Colors.grey.shade300),
                          ),
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color.fromRGBO(243, 244, 246, 1),

                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: AppColors.borderLight,
                                ),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              hint: Text(
                                'Covertible',
                                style: TextStyle(
                                  color: AppColors.textSecondary,
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide(
                                  color: AppColors.borderLight,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    Spacewidgetheight(space: h * 0.05),
                    Row(
                      children: [
                        Text(
                          'Year',
                          style: TextStyle(color: AppColors.textPrimary),
                        ),
                      ],
                    ),
                    Spacewidgetheight(space: 5),
                    Row(
                      children: [
                        Container(
                          height: 46.05763626098633,
                          width: 218,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(color: Colors.grey.shade300),
                          ),
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color.fromRGBO(243, 244, 246, 1),

                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: AppColors.borderLight,
                                ),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              hint: Text(
                                '2018',
                                style: TextStyle(
                                  color: AppColors.textSecondary,
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide(
                                  color: AppColors.borderLight,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    Spacewidgetheight(space: h * 0.05),
                    Row(
                      children: [
                        Text(
                          'Color',
                          style: TextStyle(color: AppColors.textPrimary),
                        ),
                      ],
                    ),
                    Spacewidgetheight(space: 5),
                    Row(
                      children: [
                        Container(
                          height: 46.05763626098633,
                          width: 218,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(color: Colors.grey.shade300),
                          ),
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color.fromRGBO(243, 244, 246, 1),

                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: AppColors.borderLight,
                                ),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              hint: Text(
                                'Black',
                                style: TextStyle(
                                  color: AppColors.textSecondary,
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide(
                                  color: AppColors.borderLight,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    Spacewidgetheight(space: h * 0.05),
                    Row(
                      children: [
                        Text(
                          'Plate Number',
                          style: TextStyle(color: AppColors.textPrimary),
                        ),
                      ],
                    ),
                    Spacewidgetheight(space: 5),
                    Row(
                      children: [
                        Container(
                          height: 46.05763626098633,
                          width: 218,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(color: Colors.grey.shade300),
                          ),
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color.fromRGBO(243, 244, 246, 1),

                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: AppColors.borderLight,
                                ),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              hint: Text(
                                'LAG-987XZ',
                                style: TextStyle(
                                  color: AppColors.textSecondary,
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide(
                                  color: AppColors.borderLight,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    Spacewidgetheight(space: h * 0.028),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Upload Vehicle Photo',
                                  style: TextStyle(
                                    color: AppColors.textPrimary,
                                  ),
                                ),
                              ],
                            ),
                            Spacewidgetheight(space: h * 0.02),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Container(
                                    height: 105.29009246826172,
                                    width: 168.4641571044922,
                                    child: Image(
                                      fit: BoxFit.cover,
                                      image: AssetImage(Appimage.greencar),
                                    ),
                                  ),
                                  Container(
                                    height: 105.29009246826172,
                                    width: 168.4641571044922,
                                    child: Image(
                                      fit: BoxFit.cover,
                                      image: AssetImage(Appimage.ww),
                                    ),
                                  ),
                                ],
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
