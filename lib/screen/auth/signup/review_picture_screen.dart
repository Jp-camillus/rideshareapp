import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/screen/auth/signup/all_set.dart';
import 'package:rideshareapp/screen/auth/signup/signupsuccessfull.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class ReviewPictureScreen extends StatelessWidget {
  final String imagePath;
  const ReviewPictureScreen({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    final Size s = MediaQuery.of(context).size;
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();

    return Scaffold(
      
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
                  Spacewidgetheight(space: h * 0.12),

                  /// Title
                  Padding(
                    padding: EdgeInsets.all(h * 0.025),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Review Picture',
                          style: TextStyle(
                            fontSize: h * 0.035,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Spacewidgetheight(space: 10),
                        const Text(
                          'Please review your picture and make sure that  ',
                        ),
                        const Text("people can clearly see your face "),
                      ],
                    ),
                  ),

                  // centered circular preview
                  Spacewidgetheight(space: h * 0.02),

                  Center(
                    child: Container(
                      height: h * 0.3,
                      width: w * 0.39,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(h * 0.09),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: FileImage(File(imagePath)),
                        ),
                      ),
                    ),
                  ),

                  Spacewidgetheight(space: 30),
                  // bottom rounded gradient panel with buttons
                  Container(
                    height: h * 0.4,
                    width: w.toDouble(),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(h * 0.037),
                        topRight: Radius.circular(h * 0.037),
                      ),
                      color: Appcolor.bottombackground,
                    ),
                    child: Column(
                      children: [
                        Spacewidgetheight(space: h * 0.1),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.to(AllSet());
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Appcolor.gradientblue,
                                      Appcolor.gradientorang,
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(w * 0.06),
                                ),
                                height: h * 0.06,
                                alignment: Alignment.center,
                                width: w * 0.35,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Confirm Picture',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Spacewidgetwidth(space: 10),
                            GestureDetector(
                              onTap: () {},
                              child: Text(
                                'Take New Picture',
                                style: TextStyle(color: Appcolor.primarrylight),
                              ),
                            ),
                          ],
                        ),
                      ],
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
