import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/widget/custombuttom.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class Tripdetails extends StatelessWidget {
  const Tripdetails({super.key});

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
                    Image(image: AssetImage(Appimage.pointlocation)),
                  ],
                ),
                Spacewidgetheight(space: h * 0.03),

                Container(
                  height: h * 1,
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
                            Image(image: AssetImage(Appimage.s)),
                            Spacewidgetwidth(space: 5),

                            Text('Ikeja, Lagos'),
                            Spacewidgetwidth(space: 5),

                            Container(width: w * 0.07, child: Divider()),
                            Spacewidgetwidth(space: 5),

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
                            Image(image: AssetImage(Appimage.calendar)),
                            Spacewidgetwidth(space: 5),

                            Text('May 10, 2025 – 8:00 AM'),
                            Spacewidgetwidth(space: w * 0.2),
                            Container(
                              height: h * 0.03,
                              width: w * 0.2,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(231, 255, 237, 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  'Confirmed',
                                  style: TextStyle(
                                    color: Color.fromRGBO(52, 199, 89, 1),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Spacewidgetheight(space: h * 0.016),
                        Text(
                          '------------------------------------------------------------------------------------------- ',
                          style: TextStyle(color: Appcolor.grytextfield),
                        ),

                        Row(
                          children: [
                            Image(image: AssetImage(Appimage.person)),
                            Spacewidgetwidth(space: 5),

                            Text('Pickup Point:'),
                            Spacewidgetwidth(space: w * 0.05),
                            Text('Agric Bus Stop'),
                          ],
                        ),
                        Spacewidgetheight(space: h * 0.01),
                        Row(
                          children: [
                            Image(image: AssetImage(Appimage.s)),
                            Spacewidgetwidth(space: 5),

                            Text('Drop-off:'),
                            Spacewidgetwidth(space: w * 0.05),
                            Text('Admiralty Way'),
                          ],
                        ),
                        Spacewidgetheight(space: h * 0.01),
                        Text(
                          '------------------------------------------------------------------------------------------- ',
                          style: TextStyle(color: Appcolor.grytextfield),
                        ),
                        Row(
                          children: [
                            Image(image: AssetImage(Appimage.chair)),
                            Spacewidgetwidth(space: 5),

                            Text('Seat:'),
                            Spacewidgetwidth(space: w * 0.05),
                            Text('1 Seat'),
                          ],
                        ),
                        Spacewidgetheight(space: h * 0.02),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Appcolor.gry,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text('Fare Paid:'),
                                Spacewidgetwidth(space: w * 0.05),
                                Text('₦3,500'),
                              ],
                            ),
                          ),
                        ),
                        Spacewidgetheight(space: h * 0.02),
                        Text(
                          '------------------------------------------------------------------------------------------- ',
                          style: TextStyle(color: Appcolor.grytextfield),
                        ),
                        Spacewidgetheight(space: h * 0.02),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: h * 0.03,
                              width: w * 0.2,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(247, 250, 255, 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  'Cheapest',
                                  style: TextStyle(
                                    color: Color.fromRGBO(50, 129, 255, 1),
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
                                color: Color.fromRGBO(247, 255, 250, 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  'Fastest',
                                  style: TextStyle(
                                    color: Color.fromRGBO(46, 177, 91, 1),
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
                                color: Color.fromRGBO(255, 247, 253, 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  'Recommended',
                                  style: TextStyle(
                                    color: Color.fromRGBO(243, 47, 202, 0.8),
                                  ),
                                ),
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
                        Spacewidgetheight(space: h * 0.01),
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
                            Spacer(),
                            Image(image: AssetImage(Appimage.message)),
                            Image(image: AssetImage(Appimage.call)),
                          ],
                        ),
                        Spacewidgetheight(space: h * 0.02),
                        Row(
                          children: [
                            Container(
                              height: h * 0.16,
                              width: w * 0.7,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(242, 248, 255, 1),
                                border: Border.all(
                                  color: Appcolor.grytextfield,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Column(
                                  children: [
                                    Spacewidgetheight(space: h * 0.029),
                                    Row(
                                      children: [
                                        Image(
                                          image: AssetImage(
                                            Appimage.carbonreview,
                                          ),
                                        ),
                                        Spacewidgetwidth(space: 5),

                                        Text('Sarah'),
                                      ],
                                    ),
                                    Spacewidgetheight(space: h * 0.005),

                                    Row(
                                      children: [
                                        Text('Very punctual and safe driver!'),
                                      ],
                                    ),
                                    Spacewidgetheight(space: h * 0.005),

                                    Row(
                                      children: [
                                        Image(
                                          image: AssetImage(
                                            Appimage.carbonreview,
                                          ),
                                        ),
                                        Spacewidgetwidth(space: 5),

                                        Text('James'),
                                      ],
                                    ),
                                    Spacewidgetheight(space: h * 0.005),

                                    Row(children: [Text('Smooth ride.')]),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Spacewidgetheight(space: h * 0.02),
                        Row(
                          children: [
                            Image(image: AssetImage(Appimage.clock)),
                            Text(
                              'Driver will pick you at ikeja bus stop by 6:30 AM',
                            ),
                          ],
                        ),
                        Spacewidgetheight(space: h * 0.07),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Custombuttom(tittle: 'Chat', width: w * 0.17),
                            Spacewidgetwidth(space: 10),
                            GestureDetector(
                              onTap: () {
                                cancelbuttondialogue(context);
                              },
                              child: Text(
                                'Cancel',
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

  void cancelbuttondialogue(BuildContext context) {
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
                  Image(image: AssetImage(Appimage.bluemessage)),
                  Text('Are you sure to cancel this boking?'),
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
