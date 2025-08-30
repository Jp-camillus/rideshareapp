import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/widget/custombuttom.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class Searchlivetriptracking extends StatefulWidget {
  const Searchlivetriptracking({super.key});

  @override
  State<Searchlivetriptracking> createState() => _SearchlivetriptrackingState();
}

class _SearchlivetriptrackingState extends State<Searchlivetriptracking> {
  bool ontap = false;
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: ontap ? h * 0.55 : h * 0.82,
                  width: w.toDouble(),
                ),
                Container(
                  height: ontap ? h * 0.5 : h * 0.8,
                  width: w.toDouble(),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: ontap
                          ? AssetImage(Appimage.maps)
                          : AssetImage(Appimage.mapcar),
                    ),
                  ),
                ),
                Spacewidgetheight(space: h * 0.15),
                Positioned(
                  top: h * 0.09,
                  left: w * 0.05,
                  child: GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.arrow_back,
                        color: Appcolor.primarrylight,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: ontap ? h * 0.439 : h * 0.75,
                  left: w * 0.43,
                  bottom: 0,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        ontap = !ontap;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: w * 0.01,
                            color: const Color.fromARGB(40, 0, 123, 255),
                          ),
                        ],
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: ontap
                            ? Icon(Icons.keyboard_arrow_down_rounded)
                            : Icon(Icons.keyboard_arrow_up_sharp),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Spacewidgetheight(space: h * 0.03),
                  Row(
                    children: [
                      Text(
                        'Trip Details',
                        style: TextStyle(
                          fontSize: h * 0.02,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Spacewidgetheight(space: h * 0.02),

                  Row(
                    children: [
                      Text('Route:  '),
                      Text('From:  '),

                      Image(image: AssetImage(Appimage.s)),
                      Spacewidgetwidth(space: 5),

                      Text('Ikeja, Lagos'),
                      Spacewidgetwidth(space: 5),

                      Container(width: w * 0.07, child: Divider()),
                      Spacewidgetwidth(space: 5),
                      Text('To: '),

                      Icon(
                        Icons.location_on_outlined,
                        color: Appcolor.primarrylight,
                        size: h * 0.02,
                      ),
                      Spacewidgetwidth(space: 5),

                      Text('Lekki Phase 1'),
                    ],
                  ),
                  Spacewidgetheight(space: h * 0.02),
                  Row(
                    children: [
                      Text('Started:  '),
                      Spacewidgetwidth(space: 5),

                      Text('7:00AM – May 2, 2025'),
                    ],
                  ),
                  Spacewidgetheight(space: h * 0.02),
                  Divider(color: Appcolor.grytextfield),

                  // Text(
                  //   '---------------------------------------------------------------------------------------------------------- ',
                  //   style: TextStyle(color: Appcolor.grytextfield),
                  // ),
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
                      Text('Aisha B.', style: TextStyle(fontSize: h * 0.022)),
                      Spacewidgetwidth(space: 10),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.deepOrange,
                            size: h * 0.02,
                          ),
                          Text(
                            '4.2',
                            style: TextStyle(color: Colors.deepOrange),
                          ),
                          Spacewidgetwidth(space: 5),
                          Text('85 trips'),
                        ],
                      ),
                    ],
                  ),
                  Spacewidgetheight(space: h * 0.02),
                  Row(
                    children: [
                      Image(image: AssetImage(Appimage.claritycarline)),
                      Spacewidgetwidth(space: 5),

                      Text('Vehicle:'),
                      Spacewidgetwidth(space: w * 0.05),
                      Text('Toyota Corolla 2018'),
                    ],
                  ),
                  Spacewidgetheight(space: h * 0.01),
                  Row(
                    children: [
                      Image(image: AssetImage(Appimage.no)),
                      Spacewidgetwidth(space: 5),

                      Text('Plate:'),
                      Spacewidgetwidth(space: w * 0.05),
                      Text('ABC-234LK'),
                    ],
                  ),
                  Text(
                    '------------------------------------------------------------------------------------------- ',
                    style: TextStyle(color: Appcolor.grytextfield),
                  ),
                  Row(
                    children: [
                      Image(image: AssetImage(Appimage.chair)),
                      Spacewidgetwidth(space: 5),

                      Text('Seats Booked:'),
                      Spacewidgetwidth(space: w * 0.05),
                      Text('2 Seat'),
                    ],
                  ),
                  Text(
                    '------------------------------------------------------------------------------------------- ',
                    style: TextStyle(color: Appcolor.grytextfield),
                  ),
                  Spacewidgetheight(space: h * 0.02),
                  Container(
                    height: h * 0.07,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(245, 255, 247, 1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Image(image: AssetImage(Appimage.money)),
                              Spacewidgetwidth(space: w * 0.02),

                              Text(
                                '₦3000',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              Spacewidgetwidth(space: w * 0.01),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacewidgetheight(space: h * 0.05),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '🚨   Emergency',
                        style: TextStyle(color: Colors.red),
                      ),
                      Spacewidgetwidth(space: 20),
                      Image(
                        fit: BoxFit.cover,
                        height: h * 0.05,
                        image: AssetImage(Appimage.message),
                      ),
                      Spacewidgetwidth(space: 20),

                      Image(
                        fit: BoxFit.cover,
                        height: h * 0.05,
                        image: AssetImage(Appimage.call),
                      ),
                    ],
                  ),
                  Spacewidgetheight(space: h * 0.03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Custombuttom(
                        tittle: 'Mark Trip as Completed',
                        width: w * 0.39,
                      ),
                      Spacewidgetwidth(space: 10),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          'Cancel Trip',
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
