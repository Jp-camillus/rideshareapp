import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/screen/auth/signin/fingerprint.dart';
import 'package:rideshareapp/screen/auth/signin/loginscreenpin.dart';
import 'package:rideshareapp/screen/auth/signup/welcomescreen-signup.dart';
import 'package:rideshareapp/widget/custombuttom.dart';
import 'package:rideshareapp/widget/customtextfield.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacewidgetheight(space: h * 0.1),
            Row(
              children: [
                Image(
                  fit: BoxFit.cover,
                  width: w * 0.49,
                  image: AssetImage(Appimage.s7),
                ),
                Image(
                  fit: BoxFit.cover,
                  width: w * 0.49,
                  image: AssetImage(Appimage.s8),
                ),
              ],
            ),
            Row(
              children: [
                Stack(
                  children: [
                    Container(
                      width: w * 0.49,
                      height: h * 0.2,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(Appimage.s9)),
                      ),
                    ),
                    Positioned(
                      top: h * 0.05,
                      child: Container(
                        width: w * 0.49,
                        height: h * 0.15,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              const Color.fromARGB(10, 255, 255, 255),
                              const Color.fromARGB(143, 255, 255, 255),
                              Colors.white,
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      width: w * 0.49,
                      height: h * 0.2,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(Appimage.s10)),
                      ),
                    ),
                    Positioned(
                      top: h * 0.05,
                      child: Container(
                        width: w * 0.49,
                        height: h * 0.15,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              const Color.fromARGB(10, 255, 255, 255),
                              const Color.fromARGB(143, 255, 255, 255),
                              Colors.white,
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                // Image(
                //   fit: BoxFit.cover,
                //   width: w * 0.49,
                //   image:
                // ),c
              ],
            ),
            Padding(
              padding: EdgeInsets.all(h * 0.025),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Welcome',
                        style: TextStyle(
                          color: Appcolor.primarrylight,
                          fontSize: h * 0.039,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Spacewidgetwidth(space: w * 0.02),
                      Text(
                        'back!',
                        style: TextStyle(
                          fontSize: h * 0.039,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Image(image: AssetImage(Appimage.arrow)),
                  Text(
                    'Log in to access your rides, bookings, and',
                    // style: TextStyle(
                    //   fontSize: h * 0.039,
                    //   fontWeight: FontWeight.w500,
                    // ),
                  ),
                  Text(
                    'messages',
                    // style: TextStyle(
                    //   fontSize: h * 0.039,
                    //   fontWeight: FontWeight.w500,
                    // ),
                  ),
                  Spacewidgetheight(space: h * 0.02),
                  Row(children: [Text('Email')]),
                  Spacewidgetheight(space: 8),
                  Customtextfield(
                    iwantfronticon: true,
                    iwantbothicon: false,
                    tittle: 'Enter your full name',
                    prefixicon: Image(image: AssetImage(Appimage.email)),
                    suffixicon: Image(image: AssetImage(Appimage.email)),
                    obscure: false,
                  ),
                  Spacewidgetheight(space: 25),
                  Row(children: [Text('Password')]),
                  Spacewidgetheight(space: 8),
                  Customtextfield(
                    iwantfronticon: true,
                    iwantbothicon: true,
                    tittle: 'Enter your password',
                    prefixicon: Icon(Icons.lock_outline),
                    suffixicon: Icon(Icons.visibility),
                    obscure: false,
                  ),
                  Spacewidgetheight(space: 30),
                  Custombuttom(
                    tap: () {
                      Get.to(Fingerprint());
                    },
                    tittle: 'Login your Account',
                    width: w.toDouble(),
                  ),

                  Spacewidgetheight(space: h * 0.05),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('I want to create an account ?'),
                      Spacewidgetwidth(space: 5),
                      GestureDetector(
                        onTap: () {
                          Get.to(Welcomescreensignup());
                        },
                        child: Text(
                          'Sign Up',
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
      ),
    );
  }
}
