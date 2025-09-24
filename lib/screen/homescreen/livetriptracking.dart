import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class Livetriptracking extends StatefulWidget {
  const Livetriptracking({super.key});

  @override
  State<Livetriptracking> createState() => _LivetriptrackingState();
}

class _LivetriptrackingState extends State<Livetriptracking> {
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
                      image:
                          ontap
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
                        child:
                            ontap
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
                  Row(
                    children: [
                      Text(
                        'Passengers',
                        style: TextStyle(
                          fontSize: h * 0.02,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),

                  Container(
                    decoration: BoxDecoration(),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(Appimage.lady),
                          ),
                          Spacewidgetwidth(space: 10),
                          Text(
                            'Sarah O.',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: h * 0.02,
                                color: Colors.deepOrange,
                              ),
                              Spacewidgetwidth(space: 5),
                              Text(
                                '4.2',
                                style: TextStyle(color: Colors.deepOrange),
                              ),
                            ],
                          ),
                          Spacewidgetwidth(space: 5),

                          Container(width: w * 0.03, child: Divider()),
                          Spacewidgetwidth(space: 5),

                          Text('Seat 1'),
                          Spacewidgetwidth(space: 5),

                          Spacer(),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Appcolor.primary,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Text(
                                'Mark Pickup',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(children: [Text('Status: Awaiting')]),
                  Spacewidgetheight(space: h * 0.01),
                  Text(
                    '---------------------------------------------------------------------------------------------------------- ',
                    style: TextStyle(color: Appcolor.grytextfield),
                  ),
                  Container(
                    decoration: BoxDecoration(),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(Appimage.lady),
                          ),
                          Spacewidgetwidth(space: 10),
                          Text(
                            'Sarah O.',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: h * 0.02,
                                color: Colors.deepOrange,
                              ),
                              Spacewidgetwidth(space: 5),
                              Text(
                                '4.2',
                                style: TextStyle(color: Colors.deepOrange),
                              ),
                            ],
                          ),
                          Spacewidgetwidth(space: 5),

                          Container(width: w * 0.03, child: Divider()),
                          Spacewidgetwidth(space: 5),

                          Text('Seat 1'),
                          Spacewidgetwidth(space: 5),

                          Spacer(),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Appcolor.primary,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Text(
                                'Mark Pickup',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(children: [Text('Status: Awaiting')]),
                  Spacewidgetheight(space: h * 0.01),
                  // Text(
                  //   '---------------------------------------------------------------------------------------------------------- ',
                  //   style: TextStyle(color: Appcolor.grytextfield),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
