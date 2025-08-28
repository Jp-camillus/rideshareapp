import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/screen/auth/signup/otp_verification_screen.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class PhoneNumberVerification extends StatefulWidget {
  const PhoneNumberVerification({super.key});

  @override
  State<PhoneNumberVerification> createState() =>
      _PhoneNumberVerificationState();
}

class _PhoneNumberVerificationState extends State<PhoneNumberVerification> {
  final inputfieldcontroller = TextEditingController();
  bool activatebutton = false;

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacewidgetheight(space: h * 0.15),

            /// Title
            Padding(
              padding: EdgeInsets.all(h * 0.025),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Add your Phone Number',
                    style: TextStyle(
                      fontSize: h * 0.035,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacewidgetheight(space: 10),
                  const Text(
                    'Enter your active phone number to verify your identity.  ',
                  ),
                  const Text("We'll send you a 6-digit code via SMS. "),
                ],
              ),
            ),

            Spacewidgetheight(space: h * 0.05),

            /// Phone number input
            Padding(
              padding: EdgeInsets.all(h * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Phone Number'),
                  const Spacewidgetheight(space: 10),
                  IntlPhoneField(
                    controller: inputfieldcontroller,
                    decoration: InputDecoration(
                      hintText: '000 000 000',
                      hintStyle: TextStyle(color: Appcolor.grytextfield),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Appcolor.primary),
                        borderRadius: BorderRadius.circular(w * 0.039),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Appcolor.grytextfield),
                        borderRadius: BorderRadius.circular(w * 0.039),
                      ),
                    ),
                    initialCountryCode: 'NG',
                    onChanged: (phone) {
                      setState(() {
                        // change gradient when length is 10 or 11
                        if (phone.number.length == 10 ||
                            phone.number.length == 11) {
                          activatebutton = true;
                        } else {
                          activatebutton = false;
                        }
                      });
                    },
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Image(image: AssetImage(Appimage.sl)),
                    title: Text(
                      'Your number is safe with us and will only be used for verification and trip communication.',
                      style: TextStyle(fontSize: h * 0.018),
                    ),
                  ),
                ],
              ),
            ),

            Spacewidgetheight(space: h * 0.01),

            /// Bottom container
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          if (activatebutton) {
                            Get.to(
                              OtpVerificationScreen(phoneNumber: '09199898999'),
                            );
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: activatebutton
                                ? LinearGradient(
                                    colors: [
                                      Appcolor.gradientblue,
                                      Appcolor.gradientorang,
                                    ],
                                  )
                                : const LinearGradient(
                                    colors: [Colors.grey, Colors.grey],
                                  ),
                            borderRadius: BorderRadius.circular(w * 0.06),
                          ),
                          height: h * 0.06,
                          alignment: Alignment.center,
                          width: w * 0.38,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Send Verification Code',
                                  style: TextStyle(color: Colors.white),
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
          ],
        ),
      ),
    );
  }
}
