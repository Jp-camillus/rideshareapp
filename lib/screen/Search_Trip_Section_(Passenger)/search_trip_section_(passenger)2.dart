import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/widget/custombuttom.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class SearchTripSectionpassenger2 extends StatelessWidget {
  const SearchTripSectionpassenger2({super.key});

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
                  height: h * 0.6301,
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
                      height: h * 0.63,
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
                            Spacewidgetheight(space: h * 0.05),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Appcolor.grytextfield,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ListTile(
                                  contentPadding: EdgeInsets.all(0),
                                  title: Text(
                                    'iMMEDIATE PICK-UP',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  subtitle: Text(
                                    'GET A RIDE WITHIN FEW MINUTES',
                                    style: TextStyle(fontSize: h * 0.015),
                                  ),
                                  trailing: Checkbox(
                                    value: false,
                                    onChanged: (value) {},
                                  ),
                                ),
                              ),
                            ),
                            Spacewidgetheight(space: 11),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Appcolor.grytextfield,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ListTile(
                                  contentPadding: EdgeInsets.all(0),
                                  title: Text(
                                    'SCHEDULE RIDE',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  subtitle: Text(
                                    'SCHEDULE YOUR RIDE FROM 60 MINUTES IN ADVANCE',
                                    style: TextStyle(fontSize: h * 0.015),
                                  ),
                                  trailing: Checkbox(
                                    value: false,
                                    onChanged: (value) {},
                                  ),
                                ),
                              ),
                            ),
                            Spacewidgetheight(space: 20),
                            Text(
                              'Select Preference',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            Row(
                              children: [
                                Radio(
                                  value: true,
                                  groupValue: 3,
                                  onChanged: (value) {},
                                ),
                                Text('Male'),
                                Radio(
                                  value: true,
                                  groupValue: 3,
                                  onChanged: (value) {},
                                ),
                                Text('Female'),
                                Radio(
                                  value: false,
                                  groupValue: 3,
                                  onChanged: (value) {},
                                ),
                                Text('Both'),
                              ],
                            ),
                            Row(
                              children: [
                                Image(image: AssetImage(Appimage.person)),
                                Text('Select Passengers'),
                                Spacer(),
                                Row(
                                  children: [
                                    Container(
                                      height: h * 0.025,
                                      width: w * 0.06,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Appcolor.grytextfield,
                                      ),
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Divider(color: Colors.black),
                                      ),
                                    ),
                                    Spacewidgetwidth(space: 5),
                                    Text('1'),
                                    Spacewidgetwidth(space: 5),
                                    Container(
                                      height: h * 0.025,
                                      width: w * 0.06,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Appcolor.primary,
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        '+',
                                        style: TextStyle(
                                          fontSize: h * 0.02,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),

                            Spacewidgetheight(space: h * 0.05),
                            Custombuttomwithicon(
                              tittle: 'Search a Trip',
                              width: w * 0.35,
                              icon: Icon(Icons.search),
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
