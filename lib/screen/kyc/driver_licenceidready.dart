import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/screen/homescreen/homescreen.dart';
import 'package:rideshareapp/screen/kyc/license_scan.dart';
import 'package:rideshareapp/widget/custombuttom.dart';
import 'package:rideshareapp/widget/customtextfield.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class DriverLicenceidready extends StatelessWidget {
  final String imagePath;

  const DriverLicenceidready({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacewidgetheight(space: h * 0.1),
            Center(
              child: Container(
                height: h * 1,
                width: w * 0.9,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(h * 0.05),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.all(0),
                        title: Text('Driver’s License Verification'),
                        subtitle: Text('Step 3 of 3'),
                        trailing: CircleAvatar(
                          backgroundColor: const Color.fromRGBO(
                            18,
                            18,
                            29,
                            0.05,
                          ),
                          child: Image(image: AssetImage(Appimage.close)),
                        ),
                      ),
                      Spacewidgetheight(space: h * 0.029),
                      Row(
                        children: [
                          Text(
                            'Upload Your Driver’s License',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: h * 0.0256,
                            ),
                          ),
                        ],
                      ),
                      Spacewidgetheight(space: h * 0.02),

                      Row(
                        children: [
                          Text(
                            'Final step! Upload your valid driver’s license to complete ',
                          ),
                        ],
                      ),
                      Row(children: [Text('verification')]),
                      Spacewidgetheight(space: h * 0.05),
                      Row(children: [Text('License Number')]),
                      Spacewidgetheight(space: 5),
                      Customtextfield(
                        iwantfronticon: false,
                        iwantbothicon: false,
                        tittle: 'Toyota',
                        prefixicon: Icon(Icons.abc),
                        suffixicon: Icon(Icons.abc),
                        obscure: false,
                      ),

                      Spacewidgetheight(space: h * 0.038),
                      Row(
                        children: [
                          Text('Upload a clear image of your license '),
                        ],
                      ),
                      Spacewidgetheight(space: h * 0.038),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: h * 0.25,
                          width: w * 0.75,
                          decoration: BoxDecoration(
                            // boxShadow: [
                            // /
                            // ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Appcolor.grytextfield),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: h * 0.05,
                                width: w * 0.12,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(22, 33, 149, 243),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(2),
                                  child: Image(
                                    fit: BoxFit.contain,
                                    image: FileImage(File(imagePath)),
                                  ),
                                ),
                              ),
                              Spacewidgetheight(space: h * 0.028),
                              Text('Take a License or ID to check you'),
                              Text('information'),
                              ListTile(
                                leading: CircleAvatar(
                                  backgroundColor: const Color.fromARGB(
                                    22,
                                    33,
                                    149,
                                    243,
                                  ),
                                  child: Image(
                                    image: AssetImage(Appimage.attach),
                                  ),
                                ),
                                title: Text('License Scan'),
                                subtitle: Text('Upload'),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Spacewidgetheight(space: h * 0.025),
                      ListTile(
                        contentPadding: EdgeInsets.all(0),
                        leading: Checkbox(value: false, onChanged: (value) {}),
                        title: Text(
                          "I authorize the platform to verify my driver's license with FRSC or authorized databases.I authorize the platform to verify my driver's license with FRSC or authorized databases.",
                          style: TextStyle(fontSize: h * 0.015),
                        ),
                      ),
                      Spacewidgetheight(space: h * 0.029),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Go Back',
                            style: TextStyle(color: Appcolor.primarrylight),
                          ),
                          Spacewidgetwidth(space: 10),
                          Custombuttom(
                            tap: () {
                              _verificationsubmitteddialogue(context);
                            },
                            tittle: 'Submit for Review',
                            width: w * 0.33,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _verificationsubmitteddialogue(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();
    return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Container(
            height: h * 0.5,
            width: w * 0.85,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        backgroundColor: const Color.fromRGBO(18, 18, 29, 0.05),
                        child: Image(image: AssetImage(Appimage.close)),
                      ),
                    ],
                  ),
                  Spacewidgetheight(space: h * 0.15),
                  Text(
                    'Your details have been submitted ',
                    style: TextStyle(
                      fontSize: h * 0.022,
                      color: Color.fromRGBO(52, 199, 89, 1),
                    ),
                  ),
                  Text(
                    'and are under review.',
                    style: TextStyle(
                      fontSize: h * 0.022,
                      color: Color.fromRGBO(52, 199, 89, 1),
                    ),
                  ),
                  Spacewidgetheight(space: h * 0.05),
                  Text(
                    'You can now start posting trips while we ',
                    style: TextStyle(fontSize: h * 0.015),
                  ),
                  Text(
                    'verify your information.',
                    style: TextStyle(fontSize: h * 0.015),
                  ),
                  Spacewidgetheight(space: 20),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(225, 239, 255, 1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Your secret token will be generated per trip for secure meetup.',
                        style: TextStyle(
                          fontSize: h * 0.012,
                          color: Color.fromRGBO(0, 86, 179, 1),
                        ),
                      ),
                    ),
                  ),
                  Spacewidgetheight(space: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Custombuttom(tittle: 'Post a Trip', width: w * 0.25),
                      Spacewidgetwidth(space: 10),
                      GestureDetector(
                        onTap: () {
                          // Get.to(Homescreen());
                          _viekycstatus(context);
                        },
                        child: Text(
                          'View KYC Status',
                          style: TextStyle(color: Appcolor.primarrylight),
                        ),
                      ),
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

  _viekycstatus(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();
    return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Container(
            height: h * 0.45,
            width: w * 0.85,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        backgroundColor: const Color.fromRGBO(18, 18, 29, 0.05),
                        child: Image(image: AssetImage(Appimage.close)),
                      ),
                    ],
                  ),
                  Image(image: AssetImage(Appimage.approved)),
                  Text(
                    'Your Profile is Verified!',
                    style: TextStyle(
                      fontSize: h * 0.022,
                      color: Color.fromRGBO(52, 199, 89, 1),
                    ),
                  ),
                  Spacewidgetheight(space: h * 0.05),
                  Text(
                    'You can now post rides (as a driver) or book',
                    style: TextStyle(fontSize: h * 0.015),
                  ),
                  Text(
                    'trips (as a passenger).',
                    style: TextStyle(fontSize: h * 0.015),
                  ),
                  Spacewidgetheight(space: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Custombuttom(tittle: 'Post a Trip', width: w * 0.25),
                      Spacewidgetwidth(space: 10),
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
