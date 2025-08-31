import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/widget/custombuttom.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class Upcomingtrip extends StatefulWidget {
  const Upcomingtrip({super.key});

  @override
  State<Upcomingtrip> createState() => _UpcomingtripState();
}

class _UpcomingtripState extends State<Upcomingtrip> {
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
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Spacewidgetheight(space: h * 0.06),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: CircleAvatar(
                    
                    child: Icon(
                      Icons.arrow_back,
                      color: Appcolor.primarrylight,
                    ),
                  ),
                ),
              ],
            ),
            Spacewidgetheight(space: h * 0.05),
            Row(
              children: [
                Text(
                  'Trips',
                  style: TextStyle(
                    fontSize: h * 0.02,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Card(
              elevation: 7,
              shadowColor: const Color.fromARGB(104, 0, 0, 0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                height: h * 0.08,
                width: w.toDouble(),
                child: Padding(
                  padding: const EdgeInsets.all(12),
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
                          child: upcomingtapped
                              ? Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Upcoming Trip',
                                      style: TextStyle(
                                        color: Appcolor.primarrylight,
                                      ),
                                    ),
                                    SizedBox(
                                      width: w * 0.2,
                                      child: Divider(
                                        color: Appcolor.primarrylight,
                                      ),
                                    ),
                                  ],
                                )
                              : Text('Upcoming Trip'),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              upcomingtapped = false;
                              ongointriptapped = true;
                              completedtriptapped = false;
                            });
                          },
                          child: ongointriptapped
                              ? Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Ongoing Trip',
                                      style: TextStyle(
                                        color: Appcolor.primarrylight,
                                      ),
                                    ),
                                    SizedBox(
                                      width: w * 0.2,
                                      child: Divider(
                                        color: Appcolor.primarrylight,
                                      ),
                                    ),
                                  ],
                                )
                              : Text('Ongoing Trip'),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              upcomingtapped = false;
                              ongointriptapped = false;
                              completedtriptapped = true;
                            });
                          },
                          child: completedtriptapped
                              ? Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Completed Trip',
                                      style: TextStyle(
                                        color: Appcolor.primarrylight,
                                      ),
                                    ),
                                    SizedBox(
                                      width: w * 0.2,
                                      child: Divider(
                                        color: Appcolor.primarrylight,
                                      ),
                                    ),
                                  ],
                                )
                              : Text('Completed Trip'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Spacewidgetheight(space: h * 0.028),
            _buildcard(context),
          ],
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
                        style: TextStyle(
                          fontSize: h * 0.018,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.deepOrange,
                            size: h * 0.015,
                          ),
                          Text(
                            '4.2',
                            style: TextStyle(
                              color: Colors.deepOrange,
                              fontSize: h * 0.015,
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
                          style: TextStyle(fontWeight: FontWeight.w700),
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
                    'Ibadan (Iwo Road Park)',
                    style: TextStyle(fontSize: h * 0.015),
                  ),
                  Spacewidgetwidth(space: 5),

                  Container(width: w * 0.07, child: Divider()),
                  Spacewidgetwidth(space: 5),

                  Icon(
                    Icons.location_on_outlined,
                    color: Appcolor.primarrylight,
                    size: h * 0.02,
                  ),
                  Spacewidgetwidth(space: 5),

                  Text(
                    'Lagos (Ojota Bus Terminal)',
                    style: TextStyle(fontSize: h * 0.015),
                  ),
                ],
              ),
              Row(
                children: [
                  Image(image: AssetImage(Appimage.chair)),
                  Spacewidgetwidth(space: 5),

                  Text('Pickup Point:'),
                  Spacewidgetwidth(space: w * 0.05),
                  Text('Agric Bus Stop'),
                ],
              ),
              Row(
                children: [
                  Image(image: AssetImage(Appimage.calendar)),
                  Text('Tuesday, April 30, 2025'),
                  Spacewidgetwidth(space: 5),
                  Text("|"),
                  Spacewidgetwidth(space: 5),
                  Image(image: AssetImage(Appimage.clock)),
                  Text('8:00 AM'),
                  Spacewidgetwidth(space: 5),
                  Text("|"),
                  Spacewidgetwidth(space: 5),
                  Image(image: AssetImage(Appimage.chair)),

                  Text(' 1 seat'),
                ],
              ),
              Spacewidgetheight(space: h * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  if (upcomingtapped)
                    Custombuttom(tittle: 'View Trip', width: w * 0.28),
                  if (ongointriptapped)
                    Custombuttom(tittle: 'View Trip', width: w * 0.28),
                  if (completedtriptapped)
                    Custombuttom(tittle: 'Leave a Review', width: w * 0.28),
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
