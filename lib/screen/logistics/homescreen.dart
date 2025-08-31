import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/screen/homescreen/tripdetails.dart';
import 'package:rideshareapp/widget/custombuttom.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class Logisticshomescreen extends StatefulWidget {
  const Logisticshomescreen({super.key});

  @override
  State<Logisticshomescreen> createState() => _LogisticshomescreenState();
}

class _LogisticshomescreenState extends State<Logisticshomescreen> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(h * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacewidgetheight(space: h * 0.06),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(image: AssetImage(Appimage.location)),
                  Spacewidgetwidth(space: w * 0.031),
                  Text(
                    'Lagos (Ojota Bus Terminal)',
                    style: TextStyle(fontSize: h * 0.015),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [],
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(3.5),
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
                    "Welcome back,",
                    style: TextStyle(
                      fontSize: h * 0.025,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacewidgetwidth(space: 10),
                  Text('Ahmed'),
                ],
              ),
              Spacewidgetheight(space: h * 0.03),
              Row(
                children: [
                  Image(image: AssetImage(Appimage.wallet)),
                  Spacewidgetwidth(space: 5),
                  Text('N5,740', style: TextStyle(fontSize: h * 0.025)),
                  Spacewidgetwidth(space: 5),
                  Icon(Icons.visibility_outlined),
                ],
              ),
              Spacewidgetheight(space: h * 0.03),

              Container(
                height: h * 0.17,
                width: w.toDouble(),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Appcolor.gradientblue, Appcolor.gradientorang],
                  ),
                  borderRadius: BorderRadius.circular(w * 0.05),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(image: AssetImage(Appimage.van)),
                          Icon(Icons.arrow_forward, color: Colors.white),
                        ],
                      ),
                      Text(
                        'Join a trip',
                        style: TextStyle(
                          fontSize: h * 0.022,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Search for rides or book',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Spacewidgetheight(space: h * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: h * 0.17,
                    width: w * 0.43,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Appcolor.primary,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image(image: AssetImage(Appimage.locationwhite)),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: h * 0.02,
                              ),
                            ],
                          ),
                          Text(
                            'Post a trip',
                            style: TextStyle(
                              fontSize: h * 0.022,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Offer seat as a Driver',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: h * 0.17,
                    width: w * 0.43,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Appcolor.gradientorang,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image(image: AssetImage(Appimage.box)),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: h * 0.02,
                              ),
                            ],
                          ),
                          Text(
                            'Send Package',
                            style: TextStyle(
                              fontSize: h * 0.022,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Create delivery order',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Spacewidgetheight(space: h * 0.05),
              // ListTile(
              //   leading:
              //   contentPadding: EdgeInsets.all(0),
              //   title: const
              //   subtitle: const ,
              // ),

              /// SLANTED CONTAINER WITH GRADIENT
              // ⬇️ Replace your current gradient Container with this:
              Spacewidgetheight(space: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: w * 0.7,

                    child: Stack(
                      children: [
                        Container(
                          child: Container(
                            height: h * 0.05,
                            width: w * 0.1,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(Appimage.womanlookup),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: w * 0.0,
                          right: w * 0.42,
                          child: Container(
                            height: h * 0.05,
                            width: w * 0.1,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(Appimage.manj),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // left: w * 0.35,
                          right: w * 0.42,

                          child: Container(
                            height: h * 0.05,
                            width: w * 0.1,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(Appimage.manjef),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: w * 0.001,
                          bottom: h * 0.016,
                          left: w * 0.32,

                          child: Text(
                            'Top Rated Driver',
                            style: TextStyle(
                              fontSize: h * 0.02,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Spacewidgetheight(space: h * 0.028),

              Spacewidgetheight(space: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(Tripdetails());
                      },
                      child: Card(
                        elevation: 8,
                        shadowColor: const Color.fromARGB(15, 13, 125, 244),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(h * 0.02),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(h * 0.02),
                          ),
                          height: h * 0.37,
                          width: w * 0.8,
                          child: GestureDetector(
                            onTap: () {
                              Get.to(Tripdetails());
                            },
                            child: Padding(
                              padding: EdgeInsets.all(15),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: w * 0.17,

                                        child: Stack(
                                          children: [
                                            Positioned(
                                              top: h * 0.01,
                                              left: w * 0.05,
                                              child: Container(
                                                height: h * 0.041,
                                                width: w * 0.12,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    fit: BoxFit.contain,
                                                    image: AssetImage(
                                                      Appimage.whitecar,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              child: Container(
                                                height: h * 0.05,
                                                width: w * 0.07,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      Appimage.smileman,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Spacewidgetwidth(space: 10),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Aisha B.',
                                            style: TextStyle(
                                              fontSize: h * 0.022,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.deepOrange,
                                                size: h * 0.02,
                                              ),
                                              Text(
                                                '4.2',
                                                style: TextStyle(
                                                  color: Colors.deepOrange,
                                                ),
                                              ),
                                              Spacewidgetwidth(space: 5),
                                              Text('85 trips'),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Text(
                                        '₦3,500',
                                        style: TextStyle(
                                          fontSize: h * 0.02,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Divider(color: Appcolor.grytextfield),
                                  Spacewidgetheight(space: 10),

                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on_outlined,
                                        color: Appcolor.primarrylight,
                                      ),
                                      Spacewidgetwidth(space: 2),
                                      Text('Lagos (Ojota Bus Terminal)'),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Spacewidgetwidth(space: h * 0.012),
                                      Text(
                                        '|',
                                        style: TextStyle(
                                          fontSize: h * 0.026,
                                          color: Appcolor.grytextfield,
                                        ),
                                      ),
                                      // Container(
                                      //   width: w * 0.68,
                                      //   decoration: BoxDecoration(
                                      //     border: Border(
                                      //       bottom: BorderSide(
                                      //         style: BorderStyle.soli,
                                      //         color: Appcolor.grytextfield,
                                      //       ),
                                      //     ),
                                      //   ),
                                      // ),
                                      Text(
                                        '-------------------------------------------------------- ',
                                        style: TextStyle(
                                          color: Appcolor.grytextfield,
                                        ),
                                      ),
                                      Container(
                                        height: h * 0.03,
                                        width: w * 0.2,
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(
                                            231,
                                            255,
                                            237,
                                            1,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Confirmed',
                                            style: TextStyle(
                                              color: Color.fromRGBO(
                                                52,
                                                199,
                                                89,
                                                1,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Spacewidgetheight(space: 10),

                                  Row(
                                    children: [
                                      Image(image: AssetImage(Appimage.s)),
                                      Spacewidgetwidth(space: 2),
                                      Text('Ibadan (Iwo Road Park)'),
                                    ],
                                  ),
                                  Spacewidgetheight(space: 10),
                                  Divider(color: Appcolor.grytextfield),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Image(
                                            image: AssetImage(Appimage.clock),
                                          ),
                                          Text('8:00 AM'),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Image(
                                            image: AssetImage(
                                              Appimage.calendar,
                                            ),
                                          ),
                                          Text('Tuesday, April 30, 2025'),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Image(image: AssetImage(Appimage.sl)),
                                          Text('1 seat'),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Spacewidgetheight(space: h * 0.02),
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Appcolor.primary,
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(15),
                                          child: Text(
                                            'View Trip',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Spacewidgetwidth(space: w * 0.03),
                                      Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Appcolor.primary,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(15),
                                          child: Text('Chat'),
                                        ),
                                      ),
                                      Spacewidgetwidth(space: w * 0.03),
                                      Text(
                                        'Cancel',
                                        style: TextStyle(color: Colors.red),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Spacewidgetwidth(space: w * 0.015),
                    Card(
                      elevation: 8,
                      shadowColor: const Color.fromARGB(15, 13, 125, 244),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(h * 0.02),
                      ),
                      child: Container(
                        height: h * 0.37,

                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(h * 0.02),
                        ),
                        width: w * 0.8,
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: w * 0.17,

                                    child: Stack(
                                      children: [
                                        Positioned(
                                          top: h * 0.01,
                                          left: w * 0.05,
                                          child: Container(
                                            height: h * 0.041,
                                            width: w * 0.12,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                fit: BoxFit.contain,
                                                image: AssetImage(
                                                  Appimage.whitecar,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Container(
                                            height: h * 0.05,
                                            width: w * 0.07,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  Appimage.smileman,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Spacewidgetwidth(space: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Aisha B.',
                                        style: TextStyle(fontSize: h * 0.022),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.deepOrange,
                                            size: h * 0.02,
                                          ),
                                          Text(
                                            '4.2',
                                            style: TextStyle(
                                              color: Colors.deepOrange,
                                            ),
                                          ),
                                          Spacewidgetwidth(space: 5),
                                          Text('85 trips'),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Text(
                                    '₦3,500',
                                    style: TextStyle(
                                      fontSize: h * 0.02,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              Divider(color: Appcolor.grytextfield),
                              Spacewidgetheight(space: 10),

                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    color: Appcolor.primarrylight,
                                  ),
                                  Spacewidgetwidth(space: 2),
                                  Text('Lagos (Ojota Bus Terminal)'),
                                ],
                              ),
                              Row(
                                children: [
                                  Spacewidgetwidth(space: h * 0.012),
                                  Text(
                                    '|',
                                    style: TextStyle(
                                      fontSize: h * 0.026,
                                      color: Appcolor.grytextfield,
                                    ),
                                  ),
                                  // Container(
                                  //   width: w * 0.68,
                                  //   decoration: BoxDecoration(
                                  //     border: Border(
                                  //       bottom: BorderSide(
                                  //         style: BorderStyle.soli,
                                  //         color: Appcolor.grytextfield,
                                  //       ),
                                  //     ),
                                  //   ),
                                  // ),
                                  Text(
                                    '-------------------------------------------------------- ',
                                    style: TextStyle(
                                      color: Appcolor.grytextfield,
                                    ),
                                  ),
                                  Container(
                                    height: h * 0.03,
                                    width: w * 0.2,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(231, 255, 237, 1),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Confirmed',
                                        style: TextStyle(
                                          color: Color.fromRGBO(52, 199, 89, 1),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Spacewidgetheight(space: 10),

                              Row(
                                children: [
                                  Image(image: AssetImage(Appimage.s)),
                                  Spacewidgetwidth(space: 2),
                                  Text('Ibadan (Iwo Road Park)'),
                                ],
                              ),
                              Spacewidgetheight(space: 10),
                              Divider(color: Appcolor.grytextfield),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Image(image: AssetImage(Appimage.clock)),
                                      Text('8:00 AM'),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Image(
                                        image: AssetImage(Appimage.calendar),
                                      ),
                                      Text('Tuesday, April 30, 2025'),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Image(image: AssetImage(Appimage.sl)),
                                      Text('1 seat'),
                                    ],
                                  ),
                                ],
                              ),
                              Spacewidgetheight(space: h * 0.02),
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Appcolor.primary,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(15),
                                      child: Text(
                                        'View Trip',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  Spacewidgetwidth(space: w * 0.03),
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Appcolor.primary,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(15),
                                      child: Text('Chat'),
                                    ),
                                  ),
                                  Spacewidgetwidth(space: w * 0.03),
                                  Text(
                                    'Cancel',
                                    style: TextStyle(color: Colors.red),
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
              Spacewidgetheight(space: h * 0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Booking & Request',
                    style: TextStyle(
                      fontSize: h * 0.026,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text('View all', style: TextStyle(color: Appcolor.primary)),
                ],
              ),
              Spacewidgetheight(space: h * 0.05),
              Spacewidgetwidth(space: w * 0.015),
              Card(
                elevation: 8,
                shadowColor: const Color.fromARGB(12, 13, 125, 244),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(h * 0.02),
                ),
                child: Container(
                  height: h * 0.25,

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(h * 0.02),
                  ),
                  width: w * 0.8,
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(Appimage.lady),
                            ),
                            Spacewidgetwidth(space: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Aisha B.',
                                  style: TextStyle(fontSize: h * 0.022),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.deepOrange,
                                      size: h * 0.02,
                                    ),
                                    Text(
                                      '4.2',
                                      style: TextStyle(
                                        color: Colors.deepOrange,
                                      ),
                                    ),
                                    Spacewidgetwidth(space: 5),
                                    Text('85 trips'),
                                  ],
                                ),
                              ],
                            ),
                            Spacer(),
                            Container(
                              height: h * 0.03,
                              width: w * 0.2,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(255, 240, 218, 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  'Pending',
                                  style: TextStyle(
                                    color: Color.fromRGBO(255, 149, 0, 1),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Divider(color: Appcolor.grytextfield),
                        Spacewidgetheight(space: 10),
                        Row(
                          children: [
                            Image(image: AssetImage(Appimage.s)),
                            Text('Ikeja'),
                            SizedBox(width: w * 0.1, child: Divider()),
                            Icon(
                              Icons.location_on_outlined,
                              color: Appcolor.primarrylight,
                            ),
                            Text('Lekki'),
                          ],
                        ),
                        Spacewidgetheight(space: h * 0.025),
                        Row(
                          children: [
                            Custombuttom(tittle: 'Accept', width: w * 0.2),
                            Spacewidgetwidth(space: 20),
                            Text('Reject', style: TextStyle(color: Colors.red)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Spacewidgetheight(space: h * 0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recent Past Trips',
                    style: TextStyle(
                      fontSize: h * 0.026,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text('View all', style: TextStyle(color: Appcolor.primary)),
                ],
              ),
              Spacewidgetheight(space: h * 0.05),
              Spacewidgetwidth(space: w * 0.015),
              Card(
                elevation: 8,
                shadowColor: const Color.fromARGB(12, 13, 125, 244),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(h * 0.02),
                ),
                child: Container(
                  height: h * 0.25,

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(h * 0.02),
                  ),
                  width: w * 0.8,
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Passenger',
                          style: TextStyle(
                            fontSize: h * 0.027,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Spacewidgetheight(space: h * 0.02),
                        Row(
                          children: [
                            Icon(Icons.location_on),
                            Text('Enugu (Holy Ghost Park)'),
                            Spacer(),
                            Container(
                              height: h * 0.03,
                              width: w * 0.2,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(231, 255, 237, 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  '✅ Completed',
                                  style: TextStyle(
                                    color: Color.fromRGBO(52, 199, 89, 1),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Spacewidgetheight(space: h * 0.02),
                        Row(
                          children: [
                            Image(image: AssetImage(Appimage.s)),
                            Text('Ibadan (Iwo Road Park)'),
                          ],
                        ),
                        Spacewidgetheight(space: h * 0.02),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Appcolor.primary,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Text(
                                  'View Details',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            Spacewidgetwidth(space: w * 0.03),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Appcolor.primary),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Text('Book Again'),
                              ),
                            ),
                            Spacewidgetwidth(space: w * 0.03),
                            Text(
                              'Cancel',
                              style: TextStyle(color: Appcolor.primary),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Spacewidgetheight(space: h * 0.05),
              Container(
                height: h * 0.15,
                width: w.toDouble(),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      const Color.fromARGB(78, 255, 111, 67),
                      const Color.fromARGB(123, 0, 123, 255),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      ' Invite friends and get ₦500 off your next trip!',
                      style: TextStyle(color: Appcolor.primary),
                    ),
                    Custombuttom(tittle: 'Refer & Earn', width: w * 0.29),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void initailmapdialogue(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Container(
            height: h * 0.7,
            width: w * 0.8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: h * 0.25,
                    width: w.toDouble(),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(Appimage.maps),
                      ),
                    ),
                  ),
                  Spacewidgetheight(space: h * 0.05),
                  Text(
                    'Allow “Swiftrides” to use your ',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: h * 0.0256,
                    ),
                  ),
                  Text(
                    'location',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: h * 0.0256,
                    ),
                  ),
                  Spacewidgetheight(space: h * 0.02),

                  Text(
                    'For a reliable ride, Swiftrides collects location data',
                  ),
                  Text('from the time you open the app until a trip ends'),
                  Text('This improves  pickup, support, and more.'),
                  Spacewidgetheight(space: h * 0.038),
                  Text(
                    'Allow Once',
                    style: TextStyle(
                      fontSize: h * 0.0256,
                      color: Appcolor.primarrylight,
                    ),
                  ),
                  Spacewidgetheight(space: h * 0.038),
                  Text(
                    'Allow While Using App',
                    style: TextStyle(
                      fontSize: h * 0.0256,
                      color: Appcolor.primarrylight,
                    ),
                  ),
                  Spacewidgetheight(space: h * 0.038),
                  Text(
                    'Don’t Allow',
                    style: TextStyle(
                      fontSize: h * 0.0256,
                      color: Appcolor.primarrylight,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  //this is for the kyc dialogue
  void kycdialogue(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Container(
            height: h * 0.7,
            width: w * 0.8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  Spacewidgetheight(space: h * 0.05),
                  Row(
                    children: [
                      Text(
                        'Driver Verification Required ',
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
                      Text('Before you can start posting trips, please '),
                    ],
                  ),
                  Row(
                    children: [
                      Text('complete the quick verification steps below'),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: h * 0.2,
                        width: w * 0.5,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(Appimage.verification),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(value: false, onChanged: (value) {}),
                      Text('NIN Verification'),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(value: false, onChanged: (value) {}),
                      Text('Vehicle Information'),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(value: false, onChanged: (value) {}),
                      Text('Driver’s License Upload'),
                    ],
                  ),
                  Spacewidgetheight(space: h * 0.02),
                  Center(
                    child: Custombuttom(
                      tittle: 'ok, Continue',
                      width: w * 0.35,
                    ),
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

class SlantedTopRoundedClipper extends CustomClipper<Path> {
  final double radius;
  final double leftTop; // y-offset of top-left edge (px)
  final double rightTop; // y-offset of top-right edge (px)

  SlantedTopRoundedClipper({
    this.radius = 20,
    this.leftTop = 16,
    this.rightTop = 0,
  });

  @override
  Path getClip(Size size) {
    final r = radius.clamp(0.0, size.shortestSide / 2);

    // Clamp offsets so they stay within the card height
    final lt = leftTop.clamp(0.0, size.height - r);
    final rt = rightTop.clamp(0.0, size.height - r);

    final path = Path();

    // Start on left edge, just below the top-left rounded corner
    path.moveTo(0, lt + r);

    // Top-left rounded corner (vertical edge -> top edge)
    path.quadraticBezierTo(0, lt, r, lt);

    // Slanted STRAIGHT top edge to the start of top-right corner
    path.lineTo(size.width - r, rt);

    // Top-right rounded corner (top edge -> vertical edge)
    path.quadraticBezierTo(size.width, rt, size.width, rt + r);

    // Right vertical edge down to bottom-right corner start
    path.lineTo(size.width, size.height - r);

    // Bottom-right rounded corner
    path.quadraticBezierTo(
      size.width,
      size.height,
      size.width - r,
      size.height,
    );

    // Bottom straight edge
    path.lineTo(r, size.height);

    // Bottom-left rounded corner
    path.quadraticBezierTo(0, size.height, 0, size.height - r);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;

  //dialogue box for map
}
