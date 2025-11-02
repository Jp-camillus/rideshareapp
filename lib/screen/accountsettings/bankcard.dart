import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/theme/app_theme.dart';
import 'package:rideshareapp/widget/custombuttom.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class Bankcard extends StatefulWidget {
  const Bankcard({super.key});

  @override
  State<Bankcard> createState() => _BankcardState();
}

class _BankcardState extends State<Bankcard> {
  bool rememberCard = false;

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
                          'Payment Methods',
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
                      Container(
                        width: w.toDouble(),
                        height: 83,
                        decoration: BoxDecoration(
                          color: AppColors.colorBlue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'You have 1 payment bank',
                                style: TextStyle(
                                  color: AppColors.textWhite,
                                  fontSize: 14,
                                ),
                              ),
                              Custombuttom(
                                tittle: 'Add New Method',
                                fontsize: 12.7,
                                width: 150,
                                height: 35,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Spacewidgetheight(space: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 138,
                            width: 239.7797393798828,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: AppColors.borderLight),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color.fromRGBO(255, 248, 243, 1),
                                  Color.fromRGBO(255, 248, 243, 0.349),
                                  Color.fromRGBO(220, 228, 255, 0.253),
                                ],
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image(
                                        image: AssetImage(Appimage.verifyicon),
                                      ),
                                      Text(
                                        'Bank Card',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: AppColors.textPrimary,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Spacewidgetwidth(space: 30),
                                      Text(
                                        'MasterCard/Visa/Verve Card',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: AppColors.textPrimary,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Spacewidgetwidth(space: 30),

                                      Text(
                                        'FCMB  |   6576 **** 0902',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: AppColors.textSecondary,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Default',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: AppColors.textPrimary,
                                    ),
                                  ),
                                  Transform.scale(
                                    scale: 0.8,
                                    child: Switch.adaptive(
                                      value: rememberCard,
                                      activeTrackColor: AppColors.colorBlue,
                                      activeColor: AppColors.textWhite,
                                      onChanged: (value) {
                                        setState(() => rememberCard = value);
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              Spacewidgetheight(space: 20),
                              Row(
                                children: [
                                  Text(
                                    'Edit',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: AppColors.colorBlue,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 14,
                                    color: AppColors.colorBlue,
                                  ),
                                ],
                              ),
                            ],
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
