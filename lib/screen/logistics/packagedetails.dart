import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class Packagedetails extends StatelessWidget {
  const Packagedetails({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Stack(
            children: [
              Image(image: AssetImage(Appimage.backmap)),

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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Step 2 of 5'), Text('40% Complete')],
                  ),
                  Container(
                    height: h * 0.0152,
                    width: w.toDouble(),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(217, 217, 217, 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: w * 0.4,
                          height: h * 0.0152,
                          decoration: BoxDecoration(
                            color: Appcolor.primary,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        Container(
                          width: w * 0.4,
                          height: h * 0.0152,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(217, 217, 217, 1),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacewidgetheight(space: h * 0.03),
                  Container(
                    height: h * 0.881,
                    width: w * 0.902,
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
                        height: h * 0.8808,
                        width: w * 0.9,
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
                                'Packagedetails',
                                style: TextStyle(
                                  fontSize: h * 0.025,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Spacewidgetheight(space: h * 0.02),
                              Text('Package Type'),
                              Spacewidgetheight(space: h * 0.02),

                              Row(
                                children: [
                                  Image(
                                    image: AssetImage(Appimage.smallparcel),
                                  ),
                                  Spacewidgetwidth(space: 10),
                                  Image(image: AssetImage(Appimage.fragile)),
                                ],
                              ),
                              Spacewidgetheight(space: 20),
                              Row(
                                children: [
                                  Image(image: AssetImage(Appimage.mediumbox)),
                                  Spacewidgetwidth(space: 10),
                                  Image(image: AssetImage(Appimage.documents)),
                                  Spacewidgetwidth(space: 10),
                                  Image(image: AssetImage(Appimage.cup)),
                                ],
                              ),
                              Spacewidgetheight(space: h * 0.03),
                              Text('Weight'),
                              Spacewidgetheight(space: 10),

                              Container(
                                height: h * 0.07,
                                width: w.toDouble(),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color.fromRGBO(243, 244, 246, 1),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '0-5kg',
                                        style: TextStyle(
                                          color: Color.fromRGBO(
                                            107,
                                            114,
                                            128,
                                            1,
                                          ),
                                        ),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_down_outlined,
                                        color: Color.fromRGBO(107, 114, 128, 1),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Spacewidgetheight(space: h * 0.039),
                              Text('Description'),
                              Spacewidgetheight(space: 10),
                              TextField(
                                maxLines: 5,
                                decoration: InputDecoration(
                                  fillColor: Color.fromRGBO(243, 244, 246, 1),
                                  filled: true,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color.fromRGBO(209, 213, 219, 1),
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  hintText: 'Write about yourself',
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Appcolor.primary,
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                              Spacewidgetheight(space: h * 0.05),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: h * 0.05,
                                    width: w * 0.6,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color.fromRGBO(209, 213, 219, 1),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image(
                                            image: AssetImage(
                                              Appimage.solarcameralinear,
                                            ),
                                          ),
                                          Spacewidgetwidth(space: 10),
                                          Text('Take Package Picture'),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Spacewidgetheight(space: h * 0.02),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
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
                                      width: w * 0.27,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Next',
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
      ),
    );
  }
}
