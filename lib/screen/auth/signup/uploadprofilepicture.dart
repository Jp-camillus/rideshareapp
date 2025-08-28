import 'package:flutter/material.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/screen/auth/signup/camerascreen.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class Uploadprofilepicture extends StatefulWidget {
  const Uploadprofilepicture({super.key});

  @override
  State<Uploadprofilepicture> createState() => _UploadprofilepictureState();
}

class _UploadprofilepictureState extends State<Uploadprofilepicture> {
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
                    'Add Your Profile Photo',
                    style: TextStyle(
                      fontSize: h * 0.035,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacewidgetheight(space: 10),
                  const Text('Your photo will help others recognize you. '),
                  Spacewidgetheight(space: h * 0.15),

                  // Make image clickable
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const CameraScreen(),
                          ),
                        );
                      },
                      child: Image(image: AssetImage(Appimage.c)),
                    ),
                  ),
                ],
              ),
            ),

            Spacewidgetheight(space: h * 0.05),

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
                      Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
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
                                'Continue',
                                style: TextStyle(color: Colors.white),
                              ),
                              Spacewidgetwidth(space: 5),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.white,
                                size: h * 0.015,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Spacewidgetwidth(space: 10),
                      Text(
                        'Skip for now',
                        style: TextStyle(color: Appcolor.primarrylight),
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
