import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/widget/custombuttom.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class BookingConfirmation extends StatelessWidget {
  const BookingConfirmation({super.key});

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
            Spacewidgetheight(space: h * 0.1),
            Center(
              child: Container(
                height: h * 0.3,
                width: w * 0.47,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(Appimage.tickbac),
                  ),
                ),
                alignment: Alignment.center,
                child: Center(
                  child: Image(
                    height: h * 0.09,
                    fit: BoxFit.contain,
                    image: AssetImage(Appimage.doublecheck),
                  ),
                ),
              ),
            ),
            Text(
              'You’ve Booked!',
              style: TextStyle(
                fontSize: h * 0.025,
                fontWeight: FontWeight.w700,
                color: Colors.green,
              ),
            ),
            Spacewidgetheight(space: h * 0.02),
            Text('Your ride with Chinedu on May 2 is confirmed.'),
            Spacewidgetheight(space: h * 0.02),

            Container(
              height: h * 0.08,
              width: w.toDouble(),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Appcolor.bottombackground,
                    const Color.fromARGB(87, 255, 245, 237),
                    const Color.fromARGB(17, 180, 197, 253),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Your trip token code as a passenger: '),
                        Text(
                          ' PS-2120',
                          style: TextStyle(
                            fontSize: h * 0.02,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Share this code with your driver to confirm identity.',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Spacewidgetheight(space: h * 0.06),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Custombuttom(tittle: 'View My Trips', width: w * 0.29),
                Spacewidgetwidth(space: 20),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'View Ticket',
                    style: TextStyle(color: Appcolor.primarrylight),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
