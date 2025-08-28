import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class SearchTripSectionpassenger1 extends StatelessWidget {
  const SearchTripSectionpassenger1({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Stack(
          children: [
            Image(image: AssetImage(Appimage.backmap)),

            Positioned(
              top: h * 0.15,
              right: 0,
              child: Image(image: AssetImage(Appimage.fadecar)),
            ),
            Column(
              children: [
                Spacewidgetheight(space: h * 0.1),
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
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              border: Border.all(color: Colors.grey),
                            ),
                            alignment: Alignment.center,
                            child: const Padding(
                              padding: EdgeInsets.all(6.0),
                              child: Icon(Icons.notifications_none_outlined),
                            ),
                          ),
                        ),
                        Positioned(
                          right: w * 0.01,
                          bottom: h * 0.039,
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
                  children: [
                    Text(
                      'Where are you headed?',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: h * 0.02,
                      ),
                    ),
                  ],
                ),
                Spacewidgetheight(space: h * 0.03),
                Container(
                  height: h * 0.5605,
                  width: w * 0.8505,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(255, 112, 67, 1),
                        Color.fromRGBO(0, 86, 179, 1),
                      ],
                    ),
                  ),
                  child: Center(
                    child: Container(
                      height: h * 0.56,
                      width: w * 0.85,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Find a ride and carpool anywhere \nin Nigeria',
                              style: TextStyle(
                                fontSize: h * 0.025,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.all(0),
                              leading: Icon(Icons.location_on_outlined),
                              title: Text('From'),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'where you are',
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Image(image: AssetImage(Appimage.arrow2)),
                              ],
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.all(0),
                              leading: Image(image: AssetImage(Appimage.s)),
                              title: Text('To'),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(0),
                                hintText: 'where you are',
                              ),
                            ),
                            Spacewidgetheight(space: 5),
                            Row(
                              children: [
                                Image(
                                  height: h * 0.025,
                                  fit: BoxFit.cover,
                                  image: AssetImage(Appimage.calendar),
                                ),
                                Spacewidgetwidth(space: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Date',
                                      style: TextStyle(
                                        color: Color.fromRGBO(107, 114, 128, 1),
                                      ),
                                    ),
                                    Text('02-04-2025'),
                                  ],
                                ),
                                Spacewidgetwidth(space: 50),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Time',
                                      style: TextStyle(
                                        color: Color.fromRGBO(107, 114, 128, 1),
                                      ),
                                    ),
                                    Text('07:00AM'),
                                  ],
                                ),
                              ],
                            ),
                            Spacewidgetheight(space: h * 0.05),
                            Row(
                              children: [
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
                                      borderRadius: BorderRadius.circular(
                                        w * 0.06,
                                      ),
                                    ),
                                    height: h * 0.06,
                                    alignment: Alignment.center,
                                    width: w * 0.35,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Continue',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          Spacewidgetwidth(space: 10),
                                          Icon(
                                            Icons.arrow_forward_ios_outlined,
                                            color: Colors.white,
                                            size: h * 0.015,
                                          ),
                                        ],
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
