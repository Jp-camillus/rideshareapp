import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/screen/auth/signup/all_set.dart';
import 'package:rideshareapp/screen/auth/signup/phone_number_verification.dart';
import 'package:rideshareapp/widget/custombuttom.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class Signupsuccessfull extends StatelessWidget {
  const Signupsuccessfull({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacewidgetheight(space: h * 0.39),
            Center(
              child: Text(
                'Account Created!',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: h * 0.035,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Spacewidgetheight(space: 10),
            Center(
              child: Text(
                'Welcome aboard, Aisha!',
                style: TextStyle(
                  fontSize: h * 0.032,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Center(
              child: Text(
                'Your account has been created successfully. Let’s finish ',
                style: TextStyle(),
              ),
            ),
            Center(
              child: Text(
                'setting things up so you can start booking or posting ',
                style: TextStyle(),
              ),
            ),
            Center(child: Text('trips.', style: TextStyle())),
            Spacewidgetheight(space: 30),
            Container(
              height: h * 0.45,
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
                  GestureDetector(
                    onTap: () {
                      Get.to(PhoneNumberVerification());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
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
                                  'Set your profile',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Colors.white,
                                  size: h * 0.022,
                                ),
                              ],
                            ),
                          ),
                        ),
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
