import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/screen/homescreen/homescreen.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class SelectRole extends StatelessWidget {
  const SelectRole({super.key});

  @override
  Widget build(BuildContext context) {
    final Size s = MediaQuery.of(context).size;
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              // slight decorative top arc like your screenshot

              // page content
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title + subtitle (left aligned)
                  Spacewidgetheight(space: h * 0.05),

                  /// Title
                  Padding(
                    padding: EdgeInsets.all(h * 0.025),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'How will you use Swiftrides?',
                          style: TextStyle(
                            fontSize: h * 0.035,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Spacewidgetheight(space: 10),
                        Text(
                          'Let us know how you intend to use Swiftride,this help us  ',
                        ),
                        Text("to send you relevant communication."),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image(
                        width: w * 0.5,
                        height: h * 0.32,
                        fit: BoxFit.cover,
                        image: AssetImage(Appimage.questionman),
                      ),
                    ],
                  ),

                  // centered circular preview
                  // bottom rounded gradient panel with buttons
                  Container(
                    height: h * 0.46,
                    width: w.toDouble(),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(h * 0.037),
                        topRight: Radius.circular(h * 0.037),
                      ),
                      color: Appcolor.bottombackground,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Column(
                        children: [
                          Spacewidgetheight(space: h * 0.05),
                          Row(
                            children: [
                              Container(
                                height: h * 0.08,
                                width: w * 0.5,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Appcolor.grytextfield,
                                  ),
                                  borderRadius: BorderRadius.circular(h * 0.02),
                                  color: Colors.white,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image(
                                      image: AssetImage(
                                        Appimage.claritycarline,
                                      ),
                                    ),
                                    Spacewidgetwidth(space: 5),
                                    Text('Mostly as a Driver'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Spacewidgetheight(space: 5),
                          Row(
                            children: [
                              Container(
                                height: h * 0.08,
                                width: w * 0.5,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Appcolor.grytextfield,
                                  ),
                                  borderRadius: BorderRadius.circular(h * 0.02),
                                  color: Colors.white,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image(
                                      image: AssetImage(Appimage.passengerplus),
                                    ),
                                    Spacewidgetwidth(space: 5),
                                    Text('Mostly as a Passenger'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Spacewidgetheight(space: 50),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.to(Homescreen());
                                },
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
                                          'Go to Dashboard',
                                          style: TextStyle(color: Colors.white),
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
