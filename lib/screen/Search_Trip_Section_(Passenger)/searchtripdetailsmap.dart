import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/widget/custombuttom.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class Searchtripdetailsmap extends StatelessWidget {
  const Searchtripdetailsmap({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(),
              height: h * 1.1,
              width: w.toDouble(),
              child: Stack(
                children: [
                  // Container(

                  // ),
                  Positioned(
                    top: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(Appimage.maps),
                        ),
                      ),
                      height: h * 0.5,
                      width: w.toDouble(),
                    ),
                  ),
                  Positioned(
                    top: h * 0.06,
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
                    bottom: h * 0.15,
                    child: Container(
                      height: h * 0.6,
                      width: w.toDouble(),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Stack(
                          children: [
                            Spacewidgetheight(space: h * 0.1),
                            Positioned(
                              bottom: h * 0.12,
                              right: 1,
                              left: 1,
                              child: Card(
                                elevation: 10,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                shadowColor: const Color.fromARGB(
                                  47,
                                  13,
                                  125,
                                  244,
                                ),
                                child: Container(
                                  height: h * 0.35,
                                  width: w.toDouble(),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12),
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
                                            Text(
                                              'Aisha B.',
                                              style: TextStyle(
                                                fontSize: h * 0.022,
                                              ),
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
                                                  style: TextStyle(
                                                    color: Colors.deepOrange,
                                                  ),
                                                ),
                                                Spacewidgetwidth(space: 5),
                                                Text('85 trips'),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Image(
                                              image: AssetImage(
                                                Appimage.verifyicon,
                                              ),
                                            ),
                                            Spacewidgetwidth(space: 5),

                                            Text(
                                              'Verified',
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                  52,
                                                  199,
                                                  89,
                                                  1,
                                                ),
                                              ),
                                            ),
                                            Spacewidgetwidth(space: w * 0.05),
                                            Image(
                                              image: AssetImage(
                                                Appimage.message,
                                              ),
                                            ),
                                            Image(
                                              image: AssetImage(Appimage.call),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Image(
                                              height: h * 0.02,

                                              image: AssetImage(
                                                Appimage.claritycarline,
                                              ),
                                            ),
                                            Spacewidgetwidth(space: 5),

                                            Text(
                                              'Plate:',
                                              style: TextStyle(
                                                fontSize: h * 0.015,
                                              ),
                                            ),
                                            Spacewidgetwidth(space: w * 0.05),
                                            Text('ABC-234LK'),
                                          ],
                                        ),
                                        Spacewidgetheight(space: 10),
                                        Row(
                                          children: [
                                            Image(
                                              height: h * 0.02,
                                              image: AssetImage(Appimage.chair),
                                            ),
                                            Spacewidgetwidth(space: 5),

                                            Text(
                                              'Available Seats:',
                                              style: TextStyle(
                                                fontSize: h * 0.015,
                                              ),
                                            ),
                                            Spacewidgetwidth(space: w * 0.05),
                                            Text('3 Seats'),
                                          ],
                                        ),
                                        Spacewidgetheight(space: 10),
                                        Row(
                                          children: [
                                            Image(
                                              height: h * 0.02,
                                              image: AssetImage(
                                                Appimage.person,
                                              ),
                                            ),
                                            Spacewidgetwidth(space: 5),

                                            Text(
                                              'Pickup Point:',
                                              style: TextStyle(
                                                fontSize: h * 0.015,
                                              ),
                                            ),
                                            Spacewidgetwidth(space: w * 0.05),
                                            Text('Agric Bus Stop'),
                                          ],
                                        ),
                                        Spacewidgetheight(space: 10),
                                        Row(
                                          children: [
                                            Image(
                                              height: h * 0.02,
                                              image: AssetImage(Appimage.s),
                                            ),
                                            Spacewidgetwidth(space: 5),

                                            Text(
                                              'Drop-off:',
                                              style: TextStyle(
                                                fontSize: h * 0.015,
                                              ),
                                            ),
                                            Spacewidgetwidth(space: w * 0.05),
                                            Text('Admiralty Way'),
                                          ],
                                        ),
                                        Spacewidgetheight(space: 10),
                                        Row(
                                          children: [
                                            Image(
                                              height: h * 0.02,
                                              image: AssetImage(
                                                Appimage.location,
                                              ),
                                            ),
                                            Spacewidgetwidth(space: 5),

                                            Text(
                                              'Lagos (Ojota Bus Terminal)',
                                              style: TextStyle(
                                                fontSize: h * 0.015,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Image(
                                              image: AssetImage(
                                                Appimage.calendar,
                                              ),
                                            ),
                                            Spacewidgetwidth(space: 10),
                                            Text('Friday May 10, 2025'),
                                            Spacewidgetwidth(space: 10),
                                            Text("|"),
                                            Spacewidgetwidth(space: 10),
                                            Image(
                                              image: AssetImage(Appimage.clock),
                                            ),
                                            Text('8:00 AM'),
                                            Spacewidgetwidth(space: 10),
                                            Text("|"),
                                            Spacewidgetwidth(space: 10),
                                            Image(
                                              image: AssetImage(Appimage.chair),
                                            ),

                                            Text(' 3 seat'),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              height: h * 0.03,
                                              width: w * 0.2,
                                              decoration: BoxDecoration(
                                                color: Color.fromRGBO(
                                                  247,
                                                  250,
                                                  255,
                                                  1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'Cheapest',
                                                  style: TextStyle(
                                                    color: Color.fromRGBO(
                                                      50,
                                                      129,
                                                      255,
                                                      1,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Spacewidgetwidth(space: 5),
                                            Text(
                                              '|',
                                              style: TextStyle(
                                                fontSize: h * 0.028,
                                                color: Appcolor.grytextfield,
                                              ),
                                            ),
                                            Container(
                                              height: h * 0.03,
                                              width: w * 0.2,
                                              decoration: BoxDecoration(
                                                color: Color.fromRGBO(
                                                  247,
                                                  255,
                                                  250,
                                                  1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'Fastest',
                                                  style: TextStyle(
                                                    color: Color.fromRGBO(
                                                      46,
                                                      177,
                                                      91,
                                                      1,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Spacewidgetwidth(space: 5),
                                            Text(
                                              '|',
                                              style: TextStyle(
                                                fontSize: h * 0.028,
                                                color: Appcolor.grytextfield,
                                              ),
                                            ),
                                            Container(
                                              height: h * 0.03,
                                              width: w * 0.2,
                                              decoration: BoxDecoration(
                                                color: Color.fromRGBO(
                                                  255,
                                                  247,
                                                  253,
                                                  1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'Recommended',
                                                  style: TextStyle(
                                                    color: Color.fromRGBO(
                                                      243,
                                                      47,
                                                      202,
                                                      0.8,
                                                    ),
                                                  ),
                                                ),
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
                            Positioned(
                              top: 0,
                              child: Container(
                                height: h * 0.1,
                                width: w * 0.3,
                                child: Image(
                                  fit: BoxFit.cover,
                                  image: AssetImage(Appimage.whitecar),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: w * 0.2,
                    bottom: h * 0.15,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Custombuttom(tittle: 'Book Now', width: w * 0.23),
                            Spacewidgetwidth(space: 20),
                            GestureDetector(
                              onTap: () {},
                              child: Text(
                                'Request Seat',
                                style: TextStyle(color: Appcolor.primarrylight),
                              ),
                            ),
                          ],
                        ),
                        Spacewidgetheight(space: 10),
                        Text('Free cancellation up to 1 hour before departure'),
                      ],
                    ),
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
