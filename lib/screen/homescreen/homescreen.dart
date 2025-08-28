import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/screen/homescreen/tripdetails.dart';
import 'package:rideshareapp/widget/custombuttom.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
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
              Spacewidgetheight(space: h * 0.1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [Image(image: AssetImage(Appimage.wallet))],
                      ),
                      Spacewidgetwidth(space: w * 0.031),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Total balance',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Row(
                            children: [
                              Text(
                                'N800,000',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: h * 0.025,
                                ),
                              ),
                              Spacewidgetwidth(space: 10),
                              Icon(
                                Icons.visibility_outlined,
                                color: Colors.grey,
                                size: h * 0.02,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
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
              Spacewidgetheight(space: h * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: h * 0.05,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(Icons.location_on_outlined, size: h * 0.016),
                          ],
                        ),
                      ),
                      Spacewidgetwidth(space: w * 0.031),
                      Container(
                        height: h * 0.05,

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'current location',
                              style: TextStyle(fontSize: h * 0.015),
                            ),
                            Text(
                              'Lagos (Ojota Bus Terminal)',
                              style: TextStyle(fontSize: h * 0.015),
                            ),
                            Spacewidgetwidth(space: 10),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              // ListTile(
              //   leading:
              //   contentPadding: EdgeInsets.all(0),
              //   title: const
              //   subtitle: const ,
              // ),

              /// SLANTED CONTAINER WITH GRADIENT
              // ⬇️ Replace your current gradient Container with this:
              Container(
                height: h * 0.22,
                width: w.toDouble(),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(h * 0.08),
                  border: Border(
                    bottom: BorderSide(color: Appcolor.gradientblue),
                  ),
                ),

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipPath(
                    clipper: SlantedTopRoundedClipper(
                      radius: 50, // corner radius
                      leftTop: 16, // how far DOWN the top-left is
                      rightTop:
                          2, // how far DOWN the top-right is (smaller = higher)
                    ),
                    child: Container(
                      height: h * 0.20,
                      width: w.toDouble(),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromRGBO(0, 86, 179, 1),
                            Color.fromRGBO(0, 87, 179, 0.623),
                          ],
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: h * 0.02),
                        child: Stack(
                          children: [
                            Positioned(
                              top: h * 0.03,
                              right: w * 0.0038,
                              child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage(Appimage.maskgroup),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Spacewidgetheight(space: h * 0.06),
                                Text(
                                  'Need a ride?',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Spacewidgetheight(space: h * 0.01),

                                Text(
                                  'Find and share rides across \n Nigeria with ease.',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: h * 0.025,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ), // ...your banner content here (texts, car image, etc.)
                    ),
                  ),
                ),
              ),
              Spacewidgetheight(space: h * 0.028),
              Row(
                children: [
                  Custombuttomwithicon(
                    tittle: 'Search a trip',
                    width: w * 0.35,
                    icon: Image(image: AssetImage(Appimage.searchnormal)),
                  ),
                ],
              ),
              Spacewidgetheight(space: 10),
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
              Row(
                children: [
                  Text(
                    'Your Upcoming Trips',
                    style: TextStyle(
                      fontSize: h * 0.026,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Spacewidgetheight(space: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(Tripdetails());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurStyle: BlurStyle.outer,
                              blurRadius: 5,
                              color: const Color.fromARGB(34, 0, 0, 0),
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(h * 0.02),
                        ),
                        height: h * 0.3,
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
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Spacewidgetwidth(space: w * 0.015),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurStyle: BlurStyle.outer,
                            blurRadius: 5,
                            color: const Color.fromARGB(34, 0, 0, 0),
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(h * 0.02),
                      ),
                      height: h * 0.3,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Image(image: AssetImage(Appimage.clock)),
                                    Text('8:00 AM'),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Image(image: AssetImage(Appimage.calendar)),
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
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          kycdialogue(context);
        },
        child: Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(h * 0.028),
          ),
          child: Container(
            width: w * 0.3,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(h * 0.028),
              border: Border.all(color: Appcolor.primarrylight),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.add_circle_outline_outlined,
                    color: Appcolor.primarrylight,
                  ),
                  Spacewidgetwidth(space: 5),
                  Text(
                    'Post a trip',
                    style: TextStyle(color: Appcolor.primarrylight),
                  ),
                ],
              ),
            ),
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
