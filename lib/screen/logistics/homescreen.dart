import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/screen/homescreen/tripdetails.dart';
import 'package:rideshareapp/screen/logistics/pickupanddropoffdetails.dart';
import 'package:rideshareapp/screen/pasengeranddriversection/confirmrecruitingctrip.dart';
import 'package:rideshareapp/screen/pasengeranddriversection/tripoverview.dart';
import 'package:rideshareapp/screen/pasengeranddriversection/upcomingtripview.dart';
import 'package:rideshareapp/theme/app_theme.dart';
import 'package:rideshareapp/widget/custombuttom.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class Logisticshomescreen extends StatefulWidget {
  const Logisticshomescreen({super.key});

  @override
  State<Logisticshomescreen> createState() => _LogisticshomescreenState();
}

class _LogisticshomescreenState extends State<Logisticshomescreen> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(h * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacewidgetheight(space: h * 0.06),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(image: AssetImage(Appimage.location)),
                  Spacewidgetwidth(space: w * 0.031),
                  Text(
                    'Lagos (Ojota Bus Terminal)',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [],
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(7),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            border: Border.all(color: Colors.grey),
                          ),
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Icon(
                              Icons.notifications_none_outlined,
                              size: h * 0.02,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: w * 0.01,
                        bottom: h * 0.025,
                        child: CircleAvatar(
                          radius: w * 0.015,
                          backgroundColor: Colors.red,
                          child: Text(
                            '2',
                            style: TextStyle(
                              fontSize: h * 0.01,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Welcome back,",
                    style: AppThemes.titleMedium.copyWith(
                      color: AppColors.textPrimary,
                    ),
                  ),
                  Spacewidgetwidth(space: 2),
                  Text(
                    'Ahmed',
                    style: AppThemes.bodySmall.copyWith(
                      color: AppColors.textPrimary,
                    ),
                  ),
                ],
              ),
              Spacewidgetheight(space: h * 0.03),
              Row(
                children: [
                  Image(image: AssetImage(Appimage.wallet)),
                  Spacewidgetwidth(space: 5),
                  Text(
                    'N5,740',
                    style: AppThemes.titleMedium.copyWith(
                      color: AppColors.textPrimary,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  Spacewidgetwidth(space: 5),
                  Icon(
                    Icons.visibility_outlined,
                    color: AppColors.textSecondary,
                  ),
                ],
              ),
              Spacewidgetheight(space: h * 0.03),

              GestureDetector(
                onTap: () {},
                child: Container(
                  height: h * 0.17,
                  width: w.toDouble(),
                  decoration: BoxDecoration(
                    gradient: AppColors.buttongradient,
                    borderRadius: BorderRadius.circular(w * 0.05),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image(image: AssetImage(Appimage.hugeiconsvan)),
                            Icon(Icons.arrow_forward, color: Colors.white),
                          ],
                        ),
                        Text(
                          'Join a trip',
                          style: AppThemes.titleLarge.copyWith(
                            fontSize: 15,
                            color: AppColors.textWhite,
                          ),
                        ),
                        Text(
                          'Search for rides or book',
                          style: AppThemes.titleSmall.copyWith(
                            fontSize: 10,
                            color: AppColors.textWhite,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Spacewidgetheight(space: h * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: h * 0.17,
                    width: w * 0.43,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Appcolor.primary,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image(image: AssetImage(Appimage.locationwhite)),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: h * 0.02,
                              ),
                            ],
                          ),
                          Text(
                            'Post a trip',
                            style: AppThemes.titleLarge.copyWith(
                              fontSize: 15,
                              color: AppColors.textWhite,
                            ),
                          ),
                          Text(
                            'Offer seat as a Driver',
                            style: AppThemes.titleSmall.copyWith(
                              fontSize: 10,
                              color: AppColors.textWhite,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(Pickupanddropoffdetails());
                    },
                    child: Container(
                      height: h * 0.17,
                      width: w * 0.43,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Appcolor.gradientorang,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image(image: AssetImage(Appimage.box)),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                  size: h * 0.02,
                                ),
                              ],
                            ),
                            Text(
                              'Send Package',
                              style: AppThemes.titleLarge.copyWith(
                                fontSize: 15,
                                color: AppColors.textWhite,
                              ),
                            ),
                            Text(
                              'Create delivery order',
                              style: AppThemes.titleSmall.copyWith(
                                fontSize: 10,
                                color: AppColors.textWhite,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Spacewidgetheight(space: h * 0.05),
              // ListTile(
              //   leading:
              //   contentPadding: EdgeInsets.all(0),
              //   title: const
              //   subtitle: const ,
              // ),

              /// SLANTED CONTAINER WITH GRADIENT
              // ⬇️ Replace your current gradient Container with this:
              Spacewidgetheight(space: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: w * 0.7,

                    child: Stack(
                      children: [
                        Container(
                          child: Container(
                            height: h * 0.05,
                            width: w * 0.1,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(Appimage.womanlookup),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: w * 0.0,
                          right: w * 0.42,
                          child: Container(
                            height: h * 0.05,
                            width: w * 0.1,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(Appimage.manj),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // left: w * 0.35,
                          right: w * 0.42,

                          child: Container(
                            height: h * 0.05,
                            width: w * 0.1,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(Appimage.manjef),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: w * 0.001,
                          bottom: h * 0.013,
                          left: w * 0.32,

                          child: Text(
                            'Top Rated Driver',
                            style: AppThemes.titleLarge.copyWith(
                              color: AppColors.textPrimary,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              Spacewidgetheight(space: h * 0.028),

              Spacewidgetheight(space: 20),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Card(
                        elevation: 8,
                        shadowColor: const Color.fromARGB(15, 13, 125, 244),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(h * 0.02),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(h * 0.02),
                          ),
                          height: 325,
                          width: 308,
                          child: GestureDetector(
                            onTap: () {},
                            child: Padding(
                              padding: EdgeInsets.all(15),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: w * 0.17,

                                        child: Stack(
                                          children: [
                                            Positioned(
                                              top: h * 0.01,
                                              left: w * 0.05,
                                              child: Container(
                                                height: h * 0.041,
                                                width: w * 0.12,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    fit: BoxFit.contain,
                                                    image: AssetImage(
                                                      Appimage.whitecar,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              child: Container(
                                                height: h * 0.05,
                                                width: w * 0.07,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      Appimage.smileman,
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Aisha B.',
                                            style: AppThemes.titleLarge
                                                .copyWith(
                                                  color: AppColors.textPrimary,
                                                  fontSize: 15.5,
                                                ),
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: AppColors.primaryOrange,
                                                size: h * 0.02,
                                              ),
                                              Text(
                                                '4.2',
                                                style: TextStyle(
                                                  color:
                                                      AppColors.primaryOrange,
                                                  fontSize: 10,
                                                ),
                                              ),
                                              Spacewidgetwidth(space: 5),
                                              Text(
                                                '85 trips',
                                                style: TextStyle(fontSize: 8.5),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Text(
                                        '₦3,500',
                                        style: AppThemes.titleLarge.copyWith(
                                          color: AppColors.textPrimary,
                                          fontSize: 12.67,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Divider(color: Appcolor.grytextfield),
                                  Spacewidgetheight(space: 10),

                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on_outlined,
                                        color: Appcolor.primarrylight,
                                      ),
                                      Spacewidgetwidth(space: 2),
                                      Text(
                                        'Lagos (Ojota Bus Terminal)',
                                        style: TextStyle(fontSize: 10.56),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Spacewidgetwidth(space: h * 0.012),
                                      Text(
                                        '|',
                                        style: TextStyle(
                                          fontSize: h * 0.026,
                                          color: Appcolor.grytextfield,
                                        ),
                                      ),
                                      // Container(
                                      //   width: w * 0.68,
                                      //   decoration: BoxDecoration(
                                      //     border: Border(
                                      //       bottom: BorderSide(
                                      //         style: BorderStyle.soli,
                                      //         color: Appcolor.grytextfield,
                                      //       ),
                                      //     ),
                                      //   ),
                                      // ),
                                      Text(
                                        '----------------------------------- ',
                                        style: TextStyle(
                                          color: Appcolor.grytextfield,
                                        ),
                                      ),
                                      Container(
                                        height: h * 0.03,
                                        width: w * 0.2,
                                        decoration: BoxDecoration(
                                          color: AppColors.fadegreen,
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Confirmed',
                                            style: TextStyle(
                                              fontSize: 9,
                                              color: AppColors.success,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Spacewidgetheight(space: 10),

                                  Row(
                                    children: [
                                      Image(image: AssetImage(Appimage.s)),
                                      Spacewidgetwidth(space: 2),
                                      Text(
                                        'Ibadan (Iwo Road Park)',
                                        style: TextStyle(fontSize: 10.56),
                                      ),
                                    ],
                                  ),
                                  Spacewidgetheight(space: 10),
                                  Divider(color: Appcolor.grytextfield),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Image(
                                            image: AssetImage(Appimage.clock),
                                          ),
                                          Text(
                                            '8:00 AM',
                                            style: TextStyle(
                                              fontSize: 8.45,
                                              color: AppColors.textSecondary,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Image(
                                            image: AssetImage(
                                              Appimage.calendar,
                                            ),
                                          ),
                                          Text(
                                            'Tuesday, April 30, 2025',
                                            style: TextStyle(
                                              fontSize: 8.45,
                                              color: AppColors.textSecondary,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Image(image: AssetImage(Appimage.sl)),
                                          Text(
                                            '1 seat',
                                            style: TextStyle(
                                              fontSize: 8.45,
                                              color: AppColors.textSecondary,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Spacewidgetheight(space: h * 0.02),
                                  Row(
                                    children: [
                                      Container(
                                        height: 33,
                                        width: 85,
                                        decoration: BoxDecoration(
                                          color: AppColors.colorBlue,
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'View Trip',
                                            style: TextStyle(
                                              fontSize: 13.5,
                                              color: AppColors.textWhite,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Spacewidgetwidth(space: w * 0.03),
                                      Container(
                                        height: 33,
                                        width: 83,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: AppColors.primaryBlue,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Chat',
                                            style: TextStyle(
                                              color: AppColors.primaryBlue,
                                              fontSize: 13.5,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Spacewidgetwidth(space: w * 0.03),
                                      Text(
                                        'Cancel',
                                        style: TextStyle(
                                          fontSize: 13.5,
                                          color: AppColors.primaryRed,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Spacewidgetwidth(space: w * 0.015),
                    GestureDetector(
                      onTap: () {},
                      child: Card(
                        elevation: 8,
                        shadowColor: const Color.fromARGB(15, 13, 125, 244),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(h * 0.02),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(h * 0.02),
                          ),
                          height: 325,
                          width: 308,
                          child: GestureDetector(
                            onTap: () {},
                            child: Padding(
                              padding: EdgeInsets.all(15),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: w * 0.17,

                                        child: Stack(
                                          children: [
                                            Positioned(
                                              top: h * 0.01,
                                              left: w * 0.05,
                                              child: Container(
                                                height: h * 0.041,
                                                width: w * 0.12,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    fit: BoxFit.contain,
                                                    image: AssetImage(
                                                      Appimage.whitecar,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              child: Container(
                                                height: h * 0.05,
                                                width: w * 0.07,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      Appimage.smileman,
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Aisha B.',
                                            style: AppThemes.titleLarge
                                                .copyWith(
                                                  color: AppColors.textPrimary,
                                                  fontSize: 15.5,
                                                ),
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: AppColors.primaryOrange,
                                                size: h * 0.02,
                                              ),
                                              Text(
                                                '4.2',
                                                style: TextStyle(
                                                  color:
                                                      AppColors.primaryOrange,
                                                  fontSize: 10,
                                                ),
                                              ),
                                              Spacewidgetwidth(space: 5),
                                              Text(
                                                '85 trips',
                                                style: TextStyle(fontSize: 8.5),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Text(
                                        '₦3,500',
                                        style: AppThemes.titleLarge.copyWith(
                                          color: AppColors.textPrimary,
                                          fontSize: 12.67,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Divider(color: Appcolor.grytextfield),
                                  Spacewidgetheight(space: 10),

                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on_outlined,
                                        color: Appcolor.primarrylight,
                                      ),
                                      Spacewidgetwidth(space: 2),
                                      Text(
                                        'Lagos (Ojota Bus Terminal)',
                                        style: TextStyle(fontSize: 10.56),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Spacewidgetwidth(space: h * 0.012),
                                      Text(
                                        '|',
                                        style: TextStyle(
                                          fontSize: h * 0.026,
                                          color: Appcolor.grytextfield,
                                        ),
                                      ),
                                      // Container(
                                      //   width: w * 0.68,
                                      //   decoration: BoxDecoration(
                                      //     border: Border(
                                      //       bottom: BorderSide(
                                      //         style: BorderStyle.soli,
                                      //         color: Appcolor.grytextfield,
                                      //       ),
                                      //     ),
                                      //   ),
                                      // ),
                                      Text(
                                        '----------------------------------- ',
                                        style: TextStyle(
                                          color: Appcolor.grytextfield,
                                        ),
                                      ),
                                      Container(
                                        height: h * 0.03,
                                        width: w * 0.2,
                                        decoration: BoxDecoration(
                                          color: AppColors.fadegreen,
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Confirmed',
                                            style: TextStyle(
                                              fontSize: 9,
                                              color: AppColors.success,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Spacewidgetheight(space: 10),

                                  Row(
                                    children: [
                                      Image(image: AssetImage(Appimage.s)),
                                      Spacewidgetwidth(space: 2),
                                      Text(
                                        'Ibadan (Iwo Road Park)',
                                        style: TextStyle(fontSize: 10.56),
                                      ),
                                    ],
                                  ),
                                  Spacewidgetheight(space: 10),
                                  Divider(color: Appcolor.grytextfield),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Image(
                                            image: AssetImage(Appimage.clock),
                                          ),
                                          Text(
                                            '8:00 AM',
                                            style: TextStyle(
                                              fontSize: 8.45,
                                              color: AppColors.textSecondary,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Image(
                                            image: AssetImage(
                                              Appimage.calendar,
                                            ),
                                          ),
                                          Text(
                                            'Tuesday, April 30, 2025',
                                            style: TextStyle(
                                              fontSize: 8.45,
                                              color: AppColors.textSecondary,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Image(image: AssetImage(Appimage.sl)),
                                          Text(
                                            '1 seat',
                                            style: TextStyle(
                                              fontSize: 8.45,
                                              color: AppColors.textSecondary,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Spacewidgetheight(space: h * 0.02),
                                  Row(
                                    children: [
                                      Container(
                                        height: 33,
                                        width: 85,
                                        decoration: BoxDecoration(
                                          color: AppColors.colorBlue,
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'View Trip',
                                            style: TextStyle(
                                              fontSize: 13.5,
                                              color: AppColors.textWhite,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Spacewidgetwidth(space: w * 0.03),
                                      Container(
                                        height: 33,
                                        width: 83,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: AppColors.primaryBlue,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Chat',
                                            style: TextStyle(
                                              color: AppColors.primaryBlue,
                                              fontSize: 13.5,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Spacewidgetwidth(space: w * 0.03),
                                      Text(
                                        'Cancel',
                                        style: TextStyle(
                                          fontSize: 13.5,
                                          color: AppColors.primaryRed,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Spacewidgetwidth(space: w * 0.015),
                  ],
                ),
              ),
              Spacewidgetheight(space: h * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Booking & Request',
                    style: AppThemes.titleLarge.copyWith(
                      color: AppColors.textPrimary,
                      fontSize: 15.5,
                    ),
                  ),
                  Text(
                    'View all',
                    style: AppThemes.titleLarge.copyWith(
                      color: AppColors.colorBlue,
                      fontWeight: FontWeight.w400,
                      fontSize: 15.5,
                    ),
                  ),
                ],
              ),
              Spacewidgetheight(space: h * 0.05),
              Spacewidgetwidth(space: w * 0.015),
              Card(
                elevation: 8,
                shadowColor: const Color.fromARGB(12, 13, 125, 244),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(h * 0.02),
                ),
                child: Container(
                  height: 211,

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(h * 0.02),
                  ),
                  width: 298,
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(Appimage.lady),
                            ),
                            Spacewidgetwidth(space: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Aisha B.',
                                  style: AppThemes.titleLarge.copyWith(
                                    color: AppColors.textPrimary,
                                    fontSize: 15.5,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.deepOrange,
                                      size: 10,
                                    ),
                                    Text(
                                      '4.2',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: AppColors.primaryOrange,
                                      ),
                                    ),
                                    Spacewidgetwidth(space: 5),
                                    Text(
                                      '85 trips',
                                      style: TextStyle(fontSize: 8.5),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Spacer(),
                            Container(
                              height: h * 0.03,
                              width: w * 0.2,
                              decoration: BoxDecoration(
                                color: AppColors.fadeorang,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  'Pending',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: AppColors.primaryOrange,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Divider(color: Appcolor.grytextfield),
                        Spacewidgetheight(space: 10),
                        Row(
                          children: [
                            Image(image: AssetImage(Appimage.s)),
                            Text(
                              'Ikeja',
                              style: TextStyle(
                                fontSize: 10,
                                color: AppColors.textSecondary,
                              ),
                            ),
                            SizedBox(width: w * 0.1, child: Divider()),
                            Icon(
                              Icons.location_on_outlined,
                              color: Appcolor.primarrylight,
                            ),
                            Text(
                              'Lekki',
                              style: TextStyle(
                                fontSize: 10,
                                color: AppColors.textSecondary,
                              ),
                            ),
                          ],
                        ),
                        Spacewidgetheight(space: h * 0.025),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.to(Confirmrecruitingctrip());
                              },
                              child: Container(
                                height: 33,
                                width: 85,
                                decoration: BoxDecoration(
                                  gradient: AppColors.buttongradient,
                                  color: AppColors.colorBlue,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text(
                                    'Accept',
                                    style: TextStyle(
                                      fontSize: 13.5,
                                      color: AppColors.textWhite,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Spacewidgetwidth(space: 20),
                            Text(
                              'Reject',
                              style: TextStyle(
                                color: AppColors.error,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Spacewidgetheight(space: h * 0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recent Past Trips',
                    style: AppThemes.titleLarge.copyWith(
                      color: AppColors.textPrimary,
                      fontSize: 15.5,
                    ),
                  ),
                  Text(
                    'View all',
                    style: AppThemes.titleLarge.copyWith(
                      color: AppColors.colorBlue,
                      fontWeight: FontWeight.w400,
                      fontSize: 15.5,
                    ),
                  ),
                ],
              ),

              Spacewidgetheight(space: h * 0.05),
              Spacewidgetwidth(space: w * 0.015),
              GestureDetector(
                onTap: () {},
                child: Card(
                  elevation: 8,
                  shadowColor: const Color.fromARGB(12, 13, 125, 244),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(h * 0.02),
                  ),
                  child: Container(
                    height: h * 0.25,

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(h * 0.02),
                    ),
                    width: w * 0.8,
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Passenger',
                            style: AppThemes.titleLarge.copyWith(
                              color: AppColors.textPrimary,
                              fontSize: 15.5,
                            ),
                          ),
                          Spacewidgetheight(space: h * 0.02),
                          Row(
                            children: [
                              Icon(Icons.location_on),
                              Text(
                                'Enugu (Holy Ghost Park)',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: AppColors.textSecondary,
                                ),
                              ),
                              Spacer(),
                              Container(
                                height: h * 0.03,
                                width: w * 0.2,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(231, 255, 237, 1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    'Completed',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: AppColors.success,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Spacewidgetheight(space: h * 0.02),
                          Row(
                            children: [
                              Image(image: AssetImage(Appimage.s)),
                              Text(
                                'Ibadan (Iwo Road Park)',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: AppColors.textSecondary,
                                ),
                              ),
                            ],
                          ),
                          Spacewidgetheight(space: h * 0.02),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.to(Tripoverviewp());
                                },
                                child: Container(
                                  height: 33,
                                  width: 90,
                                  decoration: BoxDecoration(
                                    color: AppColors.colorBlue,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'View Details',
                                      style: TextStyle(
                                        fontSize: 13.5,
                                        color: AppColors.textWhite,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Spacewidgetwidth(space: w * 0.03),
                              Container(
                                height: 33,
                                width: 83,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: AppColors.primaryBlue,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text(
                                    'Book Again',
                                    style: TextStyle(
                                      color: AppColors.primaryBlue,
                                      fontSize: 13.5,
                                    ),
                                  ),
                                ),
                              ),
                              Spacewidgetwidth(space: w * 0.03),
                              Text(
                                'Cancel',
                                style: TextStyle(
                                  fontSize: 13.5,
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
              ),
              Spacewidgetheight(space: h * 0.05),
              Container(
                height: 122,
                width: 392,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      const Color.fromARGB(78, 255, 111, 67),
                      const Color.fromARGB(123, 0, 123, 255),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      ' Invite friends and get ₦500 off your next trip!',
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.colorBlue,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Appcolor.gradientblue,
                              Appcolor.gradientorang,
                            ],
                          ),
                          borderRadius: BorderRadius.circular(w * 0.06),
                        ),
                        height: 35,
                        alignment: Alignment.center,
                        width: 120,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Refer & Earn',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.textWhite,
                              ),
                            ),
                            Spacewidgetwidth(space: w * 0.02),

                            Icon(
                              Icons.arrow_forward_ios,
                              size: 10,
                              color: AppColors.textWhite,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacewidgetheight(space: 150),
            ],
          ),
        ),
      ),
    );
  }

  void initailmapdialogue(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Container(
            height: h * 0.7,
            width: w * 0.8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: h * 0.25,
                    width: w.toDouble(),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(Appimage.maps),
                      ),
                    ),
                  ),
                  Spacewidgetheight(space: h * 0.05),
                  Text(
                    'Allow “Swiftrides” to use your ',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: h * 0.0256,
                    ),
                  ),
                  Text(
                    'location',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: h * 0.0256,
                    ),
                  ),
                  Spacewidgetheight(space: h * 0.02),

                  Text(
                    'For a reliable ride, Swiftrides collects location data',
                  ),
                  Text('from the time you open the app until a trip ends'),
                  Text('This improves  pickup, support, and more.'),
                  Spacewidgetheight(space: h * 0.038),
                  Text(
                    'Allow Once',
                    style: TextStyle(
                      fontSize: h * 0.0256,
                      color: Appcolor.primarrylight,
                    ),
                  ),
                  Spacewidgetheight(space: h * 0.038),
                  Text(
                    'Allow While Using App',
                    style: TextStyle(
                      fontSize: h * 0.0256,
                      color: Appcolor.primarrylight,
                    ),
                  ),
                  Spacewidgetheight(space: h * 0.038),
                  Text(
                    'Don’t Allow',
                    style: TextStyle(
                      fontSize: h * 0.0256,
                      color: Appcolor.primarrylight,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  //this is for the kyc dialogue
  void kycdialogue(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Container(
            height: h * 0.7,
            width: w * 0.8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        backgroundColor: const Color.fromRGBO(18, 18, 29, 0.05),
                        child: Image(image: AssetImage(Appimage.close)),
                      ),
                    ],
                  ),
                  Spacewidgetheight(space: h * 0.05),
                  Row(
                    children: [
                      Text(
                        'Driver Verification Required ',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: h * 0.0256,
                        ),
                      ),
                    ],
                  ),
                  Spacewidgetheight(space: h * 0.02),

                  Row(
                    children: [
                      Text('Before you can start posting trips, please '),
                    ],
                  ),
                  Row(
                    children: [
                      Text('complete the quick verification steps below'),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: h * 0.2,
                        width: w * 0.5,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(Appimage.verification),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(value: false, onChanged: (value) {}),
                      Text('NIN Verification'),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(value: false, onChanged: (value) {}),
                      Text('Vehicle Information'),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(value: false, onChanged: (value) {}),
                      Text('Driver’s License Upload'),
                    ],
                  ),
                  Spacewidgetheight(space: h * 0.02),
                  Center(
                    child: Custombuttom(
                      tittle: 'ok, Continue',
                      width: w * 0.35,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class SlantedTopRoundedClipper extends CustomClipper<Path> {
  final double radius;
  final double leftTop; // y-offset of top-left edge (px)
  final double rightTop; // y-offset of top-right edge (px)

  SlantedTopRoundedClipper({
    this.radius = 20,
    this.leftTop = 16,
    this.rightTop = 0,
  });

  @override
  Path getClip(Size size) {
    final r = radius.clamp(0.0, size.shortestSide / 2);

    // Clamp offsets so they stay within the card height
    final lt = leftTop.clamp(0.0, size.height - r);
    final rt = rightTop.clamp(0.0, size.height - r);

    final path = Path();

    // Start on left edge, just below the top-left rounded corner
    path.moveTo(0, lt + r);

    // Top-left rounded corner (vertical edge -> top edge)
    path.quadraticBezierTo(0, lt, r, lt);

    // Slanted STRAIGHT top edge to the start of top-right corner
    path.lineTo(size.width - r, rt);

    // Top-right rounded corner (top edge -> vertical edge)
    path.quadraticBezierTo(size.width, rt, size.width, rt + r);

    // Right vertical edge down to bottom-right corner start
    path.lineTo(size.width, size.height - r);

    // Bottom-right rounded corner
    path.quadraticBezierTo(
      size.width,
      size.height,
      size.width - r,
      size.height,
    );

    // Bottom straight edge
    path.lineTo(r, size.height);

    // Bottom-left rounded corner
    path.quadraticBezierTo(0, size.height, 0, size.height - r);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;

  //dialogue box for map
}
