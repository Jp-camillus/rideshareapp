import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/screen/pasengeranddriversection/ongoingtripview.dart';
import 'package:rideshareapp/screen/pasengeranddriversection/rateyourdriver.dart';
import 'package:rideshareapp/screen/pasengeranddriversection/tripoverview.dart';
import 'package:rideshareapp/screen/pasengeranddriversection/tripoverview2.dart';
import 'package:rideshareapp/screen/pasengeranddriversection/upcomingtripview.dart';
import 'package:rideshareapp/theme/app_theme.dart';
import 'package:rideshareapp/widget/custombuttom.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class Upcomingtrippassenger extends StatefulWidget {
  const Upcomingtrippassenger({super.key});

  @override
  State<Upcomingtrippassenger> createState() => _UpcomingtrippassengerState();
}

class _UpcomingtrippassengerState extends State<Upcomingtrippassenger> {
  bool upcomingtapped = false;
  bool ongointriptapped = false;
  bool completedtriptapped = false;

  @override
  void initState() {
    super.initState();
    setState(() {
      upcomingtapped = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Spacewidgetheight(space: h * 0.06),

              Spacewidgetheight(space: h * 0.05),
              Row(
                children: [
                  Text(
                    'Trips',
                    style: AppThemes.titleSmall.copyWith(
                      color: AppColors.textPrimary,
                    ),
                  ),
                ],
              ),
              Card(
                elevation: 5,
                shadowColor: const Color.fromARGB(104, 0, 0, 0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.backgroundLight,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  height: h * 0.07,
                  width: w.toDouble(),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                upcomingtapped = true;
                                ongointriptapped = false;
                                completedtriptapped = false;
                              });
                            },
                            child:
                                upcomingtapped
                                    ? Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          'Upcoming Trip',
                                          style: TextStyle(
                                            fontSize: 12.9,
                                            color: AppColors.primaryBlue,
                                          ),
                                        ),
                                        SizedBox(
                                          width: w * 0.2,
                                          child: Divider(
                                            color: AppColors.primaryBlue,
                                          ),
                                        ),
                                      ],
                                    )
                                    : Text(
                                      'Upcoming Trip',
                                      style: TextStyle(
                                        fontSize: 12.9,

                                        color: AppColors.textSecondary,
                                      ),
                                    ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                upcomingtapped = false;
                                ongointriptapped = true;
                                completedtriptapped = false;
                              });
                            },
                            child:
                                ongointriptapped
                                    ? Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          'Ongoing Trip',
                                          style: TextStyle(
                                            fontSize: 12.9,

                                            color: AppColors.primaryBlue,
                                          ),
                                        ),
                                        SizedBox(
                                          width: w * 0.2,
                                          child: Divider(
                                            color: AppColors.primaryBlue,
                                          ),
                                        ),
                                      ],
                                    )
                                    : Text(
                                      'Ongoing Trip',
                                      style: TextStyle(
                                        fontSize: 12.9,

                                        color: AppColors.textSecondary,
                                      ),
                                    ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                upcomingtapped = false;
                                ongointriptapped = false;
                                completedtriptapped = true;
                              });
                            },
                            child:
                                completedtriptapped
                                    ? Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          'Completed Trip',
                                          style: TextStyle(
                                            fontSize: 12.9,

                                            color: AppColors.primaryBlue,
                                          ),
                                        ),
                                        SizedBox(
                                          width: w * 0.2,
                                          child: Divider(
                                            color: AppColors.primaryBlue,
                                          ),
                                        ),
                                      ],
                                    )
                                    : Text(
                                      'Completed Trip',
                                      style: TextStyle(
                                        fontSize: 12.9,

                                        color: AppColors.textSecondary,
                                      ),
                                    ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Spacewidgetheight(space: h * 0.028),
              _buildcard(context),
              if (upcomingtapped)
                GestureDetector(
                  onTap: () {
                    Get.to(Tripoverviewp2());
                  },
                  child: Card(
                    elevation: 8,
                    shadowColor: const Color.fromARGB(12, 13, 125, 244),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(h * 0.02),
                    ),
                    child: Container(
                      height: 359.303955078125,
                      width: 392.3226318359375,

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(h * 0.02),
                      ),
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Bayo A.',
                                      style: AppThemes.titleLarge.copyWith(
                                        color: AppColors.textPrimary,
                                        fontSize: 20,
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
                                            fontSize: 9.19,
                                            color: AppColors.primaryOrange,
                                          ),
                                        ),
                                        Spacewidgetwidth(space: 5),
                                        Text(
                                          ' (120 reviews)',
                                          style: TextStyle(
                                            fontSize: 9.19,
                                            color: AppColors.textSecondary,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image(
                                          height: 16,
                                          width: 16,
                                          image: AssetImage(
                                            Appimage.claritycarline,
                                          ),
                                        ),
                                        Text(
                                          'Toyota Corolla 2016',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: AppColors.textSecondary,
                                          ),
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
                                  ' Ikeja, Lagos',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: AppColors.textPrimary,
                                  ),
                                ),
                                SizedBox(width: w * 0.1, child: Divider()),
                                Icon(
                                  Icons.location_on_outlined,
                                  color: Appcolor.primarrylight,
                                ),
                                Text(
                                  'Lekki Phase 1',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: AppColors.textPrimary,
                                  ),
                                ),
                              ],
                            ),
                            Spacewidgetheight(space: 10),

                            Row(
                              children: [
                                Image(image: AssetImage(Appimage.kkkkkk)),
                                Text(
                                  'Schedule: ',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: AppColors.textSecondary,
                                  ),
                                ),
                                Text(
                                  'Mon-Fri',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: AppColors.textPrimary,
                                  ),
                                ),
                                Image(image: AssetImage(Appimage.clock)),
                                Text(
                                  '7:00 AM',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: AppColors.textPrimary,
                                  ),
                                ),
                                Icon(Icons.arrow_forward, size: 16),
                                Text(
                                  ' 4:00 PM',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: AppColors.textPrimary,
                                  ),
                                ),
                              ],
                            ),
                            Spacewidgetheight(space: 10),
                            Row(
                              children: [
                                Image(image: AssetImage(Appimage.chair)),
                                Text(
                                  ' Seats',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: AppColors.textPrimary,
                                  ),
                                ),

                                Text(
                                  '2/4 available',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: AppColors.textPrimary,
                                  ),
                                ),
                              ],
                            ),
                            Spacewidgetheight(space: 10),

                            Divider(color: Appcolor.grytextfield),
                            Spacewidgetheight(space: 10),
                            Row(
                              children: [
                                Text(
                                  'Price: ',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: AppColors.textSecondary,
                                  ),
                                ),
                                Text(
                                  '₦2500 ',
                                  style: TextStyle(
                                    fontSize: 15.5,
                                    color: AppColors.textPrimary,
                                  ),
                                ),
                                Text(
                                  'per day',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: AppColors.textSecondary,
                                  ),
                                ),
                              ],
                            ),
                            Spacewidgetheight(space: h * 0.025),
                            Row(
                              children: [
                                Custombuttom(
                                  tap: () {
                                    Get.to(Tripoverviewp());
                                  },
                                  tittle: 'Join Weekly Ride',
                                  width: 138,
                                  height: 42,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              Spacewidgetheight(space: 150),
            ],
          ),
        ),
      ),
    );
  }

  _buildcard(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();
    return Card(
      shadowColor: const Color.fromARGB(33, 0, 123, 255),
      elevation: 6,
      child: Container(
        height: h * 0.29,
        width: w.toDouble(),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
                                image: AssetImage(Appimage.whitecar),
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
                                image: AssetImage(Appimage.smileman),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacewidgetwidth(space: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Chinedu O.',
                        style: AppThemes.titleSmall.copyWith(
                          color: AppColors.textPrimary,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.star,
                            size: 12,
                            color: AppColors.primaryOrange,
                          ),
                          Text(
                            '4.2',
                            style: TextStyle(
                              color: AppColors.primaryOrange,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Spacewidgetwidth(space: 10),
                  Spacer(),
                  if (upcomingtapped)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Spacewidgetwidth(space: 5),
                        Text(
                          'Remind me',
                          style: TextStyle(
                            fontSize: 10,
                            color: AppColors.textPrimary,
                          ),
                        ),
                        Switch(
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          value: true,
                          onChanged: (value) {},
                        ),
                      ],
                    ),
                  if (ongointriptapped)
                    CircleAvatar(
                      radius: w * 0.025,
                      backgroundColor: Appcolor.primary,
                      child: Icon(
                        size: h * 0.015,
                        Icons.check,
                        color: Colors.white,
                      ),
                    ),
                  if (completedtriptapped)
                    Image(
                      height: h * 0.05,
                      image: AssetImage(Appimage.verifyicon),
                    ),
                ],
              ),
              Spacewidgetheight(space: 10),
              Divider(),
              Row(
                children: [
                  Image(image: AssetImage(Appimage.s)),
                  Spacewidgetwidth(space: 5),

                  Text(
                    'Ibadan (Iwo Road Park),',
                    style: TextStyle(
                      fontSize: 10,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  Spacewidgetwidth(space: 5),

                  Container(width: w * 0.05, child: Divider()),
                  Spacewidgetwidth(space: 5),

                  Icon(
                    Icons.location_on_outlined,
                    color: AppColors.primaryBlue,
                    size: h * 0.02,
                  ),
                  Spacewidgetwidth(space: 5),

                  Expanded(
                    child: Text(
                      'Lagos (Ojota Bus Terminal)',
                      maxLines: 2,
                      overflow: TextOverflow.fade,
                      style: TextStyle(
                        fontSize: 10,
                        color: AppColors.textPrimary,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Image(image: AssetImage(Appimage.chair)),
                  Spacewidgetwidth(space: 5),

                  Text(
                    'Pickup Point:',
                    style: TextStyle(
                      fontSize: 10,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  Spacewidgetwidth(space: w * 0.05),
                  Text(
                    'Agric Bus Stop',
                    style: TextStyle(
                      fontSize: 10,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Image(image: AssetImage(Appimage.calendar)),
                  Text(
                    'Tuesday, April 30, 2025',
                    style: TextStyle(
                      fontSize: 10,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  Spacewidgetwidth(space: 5),
                  Text("|"),
                  Spacewidgetwidth(space: 5),
                  Image(image: AssetImage(Appimage.clock)),
                  Text(
                    '8:00 AM',
                    style: TextStyle(
                      fontSize: 10,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  Spacewidgetwidth(space: 5),
                  Text("|"),
                  Spacewidgetwidth(space: 5),
                  Image(image: AssetImage(Appimage.chair)),

                  Text(
                    ' 1 seat',
                    style: TextStyle(
                      fontSize: 10,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ],
              ),
              Spacewidgetheight(space: h * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  if (upcomingtapped)
                    Custombuttom(
                      tittle: 'View Trip',
                      width: 103,
                      height: 35,
                      tap: () {
                        Get.to(Upcomingtripview());
                      },
                    ),
                  if (ongointriptapped)
                    Custombuttom(
                      tittle: 'View Trip',
                      width: 103,
                      height: 35,
                      tap: () {
                        Get.to(Ongoingtripoverview());
                      },
                    ),
                  if (completedtriptapped)
                    Custombuttom(
                      tittle: 'Leave a Review',
                      width: 137,
                      height: 35,
                      tap: () {
                        Get.to(Rateyourdriver());
                      },
                    ),
                  Spacewidgetwidth(space: w * 0.05),
                  if (upcomingtapped)
                    Text(
                      'Cancel',
                      style: TextStyle(color: Appcolor.primarrylight),
                    ),
                  if (ongointriptapped)
                    Text(
                      'Chat  Driver',
                      style: TextStyle(color: Appcolor.primarrylight),
                    ),
                  if (completedtriptapped)
                    GestureDetector(
                      onTap: () {
                        completedTrip(context);
                      },
                      child: Text(
                        'Rebook',
                        style: TextStyle(color: Appcolor.primarrylight),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void completedTrip(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Container(
            height: h * 0.29,
            width: w * 0.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(image: AssetImage(Appimage.messagesucces)),
                  Text('Are you sure to re-book this trip?'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Custombuttom(tittle: 'Yes, I’m Sure', width: w * 0.3),
                      Spacewidgetwidth(space: 10),
                      Text('No, Don’t', style: TextStyle(color: Colors.red)),
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
}
