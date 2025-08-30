import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/widget/custombuttom.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class Ongoingtripoverview extends StatelessWidget {
  const Ongoingtripoverview({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(h * 0.028),
            child: Column(
              children: [
                Spacewidgetheight(space: h * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
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
                  ],
                ),
                Spacewidgetheight(space: h * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Trip Overview',
                      style: TextStyle(
                        fontSize: h * 0.022,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                Container(
                  height: h * 0.9,
                  width: w.toDouble(),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(h * 0.02),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(h * 0.025),
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
                            Text('From: '),

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
                        Spacewidgetheight(space: h * 0.01),
                        Row(
                          children: [
                            Text('Date & Time:'),
                            Spacewidgetwidth(space: w * 0.05),
                            Text('May 5, 2025 – 4:00 PM'),
                          ],
                        ),
                        Spacewidgetheight(space: h * 0.01),
                        Row(
                          children: [
                            Text('Seats Available:'),
                            Spacewidgetwidth(space: w * 0.05),
                            Text('3 Seats'),
                          ],
                        ),
                        Spacewidgetheight(space: h * 0.01),
                        Row(
                          children: [
                            Text('Price per Seat:'),
                            Spacewidgetwidth(space: w * 0.05),
                            Text('₦1500'),
                          ],
                        ),
                        Spacewidgetheight(space: h * 0.01),
                        Row(
                          children: [
                            Text('Trip Type:'),
                            Spacewidgetwidth(space: w * 0.05),
                            Text('One-time'),
                          ],
                        ),

                        Spacewidgetheight(space: h * 0.016),
                        Row(
                          children: [
                            Text(
                              '------------------------------------------------------------------- ',
                              style: TextStyle(color: Appcolor.grytextfield),
                            ),
                            Container(
                              height: h * 0.03,
                              width: w * 0.2,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(247, 255, 250, 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  'Confirmed',
                                  style: TextStyle(
                                    color: Color.fromRGBO(46, 177, 91, 1),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Spacewidgetheight(space: h * 0.03),
                        Row(
                          children: [
                            Text(
                              ' Driver & Vehicle Info',
                              style: TextStyle(
                                fontSize: h * 0.02,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
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
                            Text(
                              'Aisha B.',
                              style: TextStyle(fontSize: h * 0.022),
                            ),
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
                            Spacer(),
                            Image(image: AssetImage(Appimage.message)),
                            Spacewidgetwidth(space: 5),
                            Image(image: AssetImage(Appimage.call)),
                          ],
                        ),
                        Spacewidgetheight(space: h * 0.02),
                        Row(
                          children: [
                            Image(image: AssetImage(Appimage.verifyicon)),
                            Spacewidgetwidth(space: 5),

                            Text(
                              'Verified',
                              style: TextStyle(
                                color: Color.fromRGBO(52, 199, 89, 1),
                              ),
                            ),
                            Spacewidgetwidth(space: w * 0.05),
                            Text('13 Completed Trips'),
                          ],
                        ),
                        Spacewidgetheight(space: h * 0.02),
                        Row(
                          children: [
                            Text('Make & Model:'),
                            Spacewidgetwidth(space: w * 0.05),
                            Text('Toyota Corolla'),
                          ],
                        ),
                        Spacewidgetheight(space: h * 0.02),
                        Row(
                          children: [
                            Text('Year:'),
                            Spacewidgetwidth(space: w * 0.05),
                            Text('2018'),
                          ],
                        ),
                        Spacewidgetheight(space: h * 0.02),
                        Row(
                          children: [
                            Text('Plate Number:'),
                            Spacewidgetwidth(space: w * 0.05),
                            Text('ABC123JK'),
                          ],
                        ),
                        Spacewidgetheight(space: h * 0.01),
                        Spacewidgetheight(space: h * 0.01),
                        Text(
                          '------------------------------------------------------------------------------------------- ',
                          style: TextStyle(color: Appcolor.grytextfield),
                        ),
                        Spacewidgetheight(space: h * 0.03),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Custombuttom(tittle: 'Track Trip', width: w * 0.23),
                            Spacewidgetwidth(space: 20),
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
