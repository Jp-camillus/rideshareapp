import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class Notificationscreen extends StatefulWidget {
  const Notificationscreen({super.key});

  @override
  State<Notificationscreen> createState() => _NotificationscreenState();
}

class _NotificationscreenState extends State<Notificationscreen> {
  bool upcomingtapped = false;
  bool ongointriptapped = false;
  bool completedtriptapped = false;
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Spacewidgetheight(space: h * 0.1),
            Row(
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
              ],
            ),
            Spacewidgetheight(space: h * 0.03),
            Row(
              children: [
                Text(
                  'Notifications',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: h * 0.022,
                  ),
                ),
                Spacer(),
                SizedBox(
                  width: w * 0.5,
                  height: h * 0.05,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: 'search',
                      hintStyle: TextStyle(color: Appcolor.grytextfield),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Appcolor.primary),
                        borderRadius: BorderRadius.circular(w * 0.05),
                      ),

                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Appcolor.grytextfield),
                        borderRadius: BorderRadius.circular(w * 0.05),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Spacewidgetheight(space: h * 0.029),
            Card(
              elevation: 7,
              shadowColor: const Color.fromARGB(104, 0, 0, 0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                height: h * 0.06,
                width: w.toDouble(),
                child: Padding(
                  padding: const EdgeInsets.all(17),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              upcomingtapped = true;
                              ongointriptapped = false;
                              completedtriptapped = false;
                            });
                          },
                          child: upcomingtapped
                              ? Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'All',
                                      style: TextStyle(
                                        color: Appcolor.primarrylight,
                                      ),
                                    ),
                                    SizedBox(
                                      width: w * 0.2,
                                      child: Divider(
                                        color: Appcolor.primarrylight,
                                      ),
                                    ),
                                  ],
                                )
                              : Text('All'),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              upcomingtapped = false;
                              ongointriptapped = true;
                              completedtriptapped = false;
                            });
                          },
                          child: ongointriptapped
                              ? Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Trips',
                                      style: TextStyle(
                                        color: Appcolor.primarrylight,
                                      ),
                                    ),
                                    SizedBox(
                                      width: w * 0.2,
                                      child: Divider(
                                        color: Appcolor.primarrylight,
                                      ),
                                    ),
                                  ],
                                )
                              : Text('Trips'),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              upcomingtapped = false;
                              ongointriptapped = false;
                              completedtriptapped = true;
                            });
                          },
                          child: completedtriptapped
                              ? Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'System',
                                      style: TextStyle(
                                        color: Appcolor.primarrylight,
                                      ),
                                    ),
                                    SizedBox(
                                      width: w * 0.2,
                                      child: Divider(
                                        color: Appcolor.primarrylight,
                                      ),
                                    ),
                                  ],
                                )
                              : Text('System'),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              upcomingtapped = false;
                              ongointriptapped = false;
                              completedtriptapped = true;
                            });
                          },
                          child: completedtriptapped
                              ? Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Promotion',
                                      style: TextStyle(
                                        color: Appcolor.primarrylight,
                                      ),
                                    ),
                                    SizedBox(
                                      width: w * 0.2,
                                      child: Divider(
                                        color: Appcolor.primarrylight,
                                      ),
                                    ),
                                  ],
                                )
                              : Text('Promotion'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Spacewidgetheight(space: h * 0.02),
            _buildAllbodysection(context),
          ],
        ),
      ),
    );
  }

  _buildAllbodysection(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();
    return Column(
      children: [
        _buildcard(
          h * 0.12,
          Color.fromRGBO(245, 250, 255, 1),
          Column(
            children: [
              Row(children: [Image(image: AssetImage(Appimage.bluenotif))]),
            ],
          ),
        ),
      ],
    );
  }

  _buildcard(double? height, Color color, Widget body) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();
    return Container(
      height: height ?? h * 0.12,
      width: w.toDouble(),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Appcolor.grytextfield),
      ),
      child: Padding(padding: const EdgeInsets.all(20), child: body),
    );
  }
}
