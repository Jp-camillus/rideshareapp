import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/widget/custombuttom.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class Farestimateandconfirmation extends StatefulWidget {
  const Farestimateandconfirmation({super.key});

  @override
  State<Farestimateandconfirmation> createState() =>
      _FarestimateandconfirmationState();
}

class _FarestimateandconfirmationState
    extends State<Farestimateandconfirmation> {
  bool card1 = false;
  bool card2 = false;
  bool card3 = false;
  bool card4 = false;

  @override
  void initState() {
    super.initState();
  }

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
                    children: [
                      Text('Step 5 of 5'),
                      Text(
                        '100% Complete',
                        style: TextStyle(color: Colors.green),
                      ),
                    ],
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
                          width: w * 0.939,
                          height: h * 0.0152,
                          decoration: BoxDecoration(
                            color: Appcolor.primary,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        Container(
                          width: w * 0.0,
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
                    height: h * 0.873,
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
                        height: h * 0.8708,
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
                              Spacewidgetheight(space: h * 0.02),

                              Text(
                                'Fare Estimate & Confirmation',
                                style: TextStyle(
                                  fontSize: h * 0.025,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Spacewidgetheight(space: h * 0.01),
                              Container(
                                height: h * 0.39,
                                width: w.toDouble(),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Column(
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [Spacewidgetwidth(space: 10)],
                                      ),
                                      Divider(),
                                      Spacewidgetheight(space: 10),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Vehicle Type',
                                            style: TextStyle(
                                              color: Color.fromRGBO(
                                                75,
                                                79,
                                                99,
                                                1,
                                              ),
                                            ),
                                          ),
                                          Text('Motorbike'),
                                        ],
                                      ),
                                      Spacewidgetheight(space: 20),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'ETA',
                                            style: TextStyle(
                                              color: Color.fromRGBO(
                                                75,
                                                79,
                                                99,
                                                1,
                                              ),
                                            ),
                                          ),
                                          Text('15-30 min'),
                                        ],
                                      ),
                                      Spacewidgetheight(space: 20),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Delivery Type',
                                            style: TextStyle(
                                              color: Color.fromRGBO(
                                                75,
                                                79,
                                                99,
                                                1,
                                              ),
                                            ),
                                          ),
                                          Text('instant'),
                                        ],
                                      ),
                                      Spacewidgetheight(space: 20),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Estimated Price',
                                            style: TextStyle(
                                              color: Color.fromRGBO(
                                                75,
                                                79,
                                                99,
                                                1,
                                              ),
                                            ),
                                          ),
                                          Text('₦1,500'),
                                        ],
                                      ),
                                      Spacewidgetheight(space: 10),
                                      Divider(),
                                      Row(
                                        children: [
                                          Image(
                                            image: AssetImage(Appimage.clock),
                                          ),
                                          Spacewidgetwidth(space: 10),
                                          Text(
                                            'Free cancellation before January 15',
                                          ),
                                        ],
                                      ),
                                      Spacewidgetheight(space: h * 0.051),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            50,
                                          ),
                                          gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: [
                                              Appcolor.bottombackground,
                                              const Color.fromARGB(
                                                87,
                                                255,
                                                245,
                                                237,
                                              ),
                                              const Color.fromARGB(
                                                17,
                                                180,
                                                197,
                                                253,
                                              ),
                                            ],
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(15),
                                          child: Row(
                                            children: [
                                              Text(
                                                'Total',
                                                style: TextStyle(
                                                  fontSize: h * 0.025,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Text(' (NGN)'),
                                              Spacer(),
                                              Text(
                                                '₦1,600',
                                                style: TextStyle(
                                                  fontSize: h * 0.025,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Text(
                                'Select Payment Method:',
                                style: TextStyle(
                                  fontSize: h * 0.022,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Row(
                                children: [
                                  Radio(
                                    value: false,
                                    groupValue: true,
                                    onChanged: (value) {},
                                  ),
                                  Text('Wallet'),
                                ],
                              ),
                              Row(
                                children: [
                                  Radio(
                                    value: false,
                                    groupValue: true,
                                    onChanged: (value) {},
                                  ),
                                  Text('Bank Transfer'),
                                ],
                              ),
                              Row(
                                children: [
                                  Radio(
                                    value: false,
                                    groupValue: true,
                                    onChanged: (value) {},
                                  ),
                                  Text('Debit/Credit Card'),
                                ],
                              ),
                              Spacewidgetheight(space: h * 0.02),
                              Row(
                                children: [
                                  Spacewidgetwidth(space: w * 0.12),
                                  Text(
                                    'Other Options',
                                    style: TextStyle(
                                      color: Appcolor.primarrylight,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    size: h * 0.016,
                                    color: Appcolor.primarrylight,
                                  ),
                                ],
                              ),
                              Spacewidgetheight(space: h * 0.05),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Custombuttom(
                                    tap: () {
                                      _showpackagedelivereddialogu();
                                    },
                                    tittle: 'Confirm Booking & Pay',
                                    width: w * 0.388,
                                  ),
                                ],
                              ),
                              Spacewidgetheight(space: h * 0.02),
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

  _trackingmapdialogue(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();
    showDialog(
      useSafeArea: true,
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          backgroundColor: Colors.white,
          insetPadding: EdgeInsets.only(top: h * 0.1),
          child: Container(
            height: h * 1.2,
            width: w.toDouble(),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CircleAvatar(
                          backgroundColor: Color.fromRGBO(18, 18, 29, 0.05),
                          child: Image(image: AssetImage(Appimage.close)),
                        ),
                      ],
                    ),
                    Image(image: AssetImage(Appimage.loading)),
                    Text(
                      'Finding Driver...',
                      style: TextStyle(color: Colors.red, fontSize: h * 0.025),
                    ),
                    Container(
                      height: h * 0.22,
                      width: w * 0.78,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromRGBO(0, 86, 179, 0.15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(13),
                        child: Container(
                          height: h * 0.17,
                          width: w * 0.68,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Appcolor.gry),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image(image: AssetImage(Appimage.truck)),
                              Text(
                                'Live Tracking Map',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: h * 0.02,
                                ),
                              ),
                              Text('Driver Location: 40.7107, -74.0116'),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Spacewidgetheight(space: h * 0.02),
                    Container(
                      height: h * 0.2,
                      width: w.toDouble(),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Color.fromRGBO(229, 231, 235, 1),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Package Details',
                              style: TextStyle(
                                fontSize: h * 0.028,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Spacewidgetheight(space: h * 0.02),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Type'),
                                Text(
                                  'small parcel',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            Spacewidgetheight(space: h * 0.02),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Weight'),
                                Text(
                                  '0-5kg',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            Spacewidgetheight(space: h * 0.02),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Vehicle'),
                                Text(
                                  'car',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Spacewidgetheight(space: h * 0.03),
                    Row(
                      children: [
                        Text(
                          'Delivery Progress',
                          style: TextStyle(
                            fontSize: h * 0.026,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Spacewidgetheight(space: h * 0.03),

                    ListTile(
                      leading: Image(
                        image: AssetImage(Appimage.letsiconsdoneringround),
                      ),
                      title: Text('Driver Assigned'),
                      subtitle: Text('2:30 PM'),
                    ),

                    ListTile(
                      leading: CircleAvatar(
                        radius: w * 0.039,
                        backgroundColor: Color.fromRGBO(0, 86, 179, 0.15),
                        child: Text('2', style: TextStyle(fontSize: h * 0.013)),
                      ),
                      title: Text('Package Picked Up'),
                      subtitle: Text('2:45 PM'),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: w * 0.039,
                        backgroundColor: Color.fromRGBO(0, 86, 179, 0.15),
                        child: Text('3', style: TextStyle(fontSize: h * 0.013)),
                      ),
                      title: Text('In Transit'),
                      subtitle: Text('3:00 PM'),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: w * 0.039,
                        backgroundColor: Color.fromRGBO(0, 86, 179, 0.15),
                        child: Text('4', style: TextStyle(fontSize: h * 0.013)),
                      ),
                      title: Text('Delivered'),
                      subtitle: Text('Pending'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  _showpackagedelivereddialogu() {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          backgroundColor: Colors.white,
          child: Container(
            height: h * 0.65,
            width: w.toDouble(),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        backgroundColor: Color.fromRGBO(18, 18, 29, 0.05),
                        child: Image(image: AssetImage(Appimage.close)),
                      ),
                    ],
                  ),
                  Image(image: AssetImage(Appimage.good)),
                  Text(
                    'Package Delivered!',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w700,
                      fontSize: h * 0.025,
                    ),
                  ),
                  Spacewidgetheight(space: 20),
                  Text('Your package has been successfully'),
                  Text(' delivered.'),
                  Spacewidgetheight(space: 20),

                  Custombuttom(tittle: 'Rate Driver', width: w * 0.3),
                  Spacewidgetheight(space: h * 0.02),
                  Container(
                    height: h * 0.2,
                    width: w * 0.7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Color.fromRGBO(229, 231, 235, 1),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Package Details',
                            style: TextStyle(
                              fontSize: h * 0.028,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Spacewidgetheight(space: h * 0.02),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Type'),
                              Text(
                                'small parcel',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          Spacewidgetheight(space: h * 0.02),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Weight'),
                              Text(
                                '0-5kg',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          Spacewidgetheight(space: h * 0.02),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Vehicle'),
                              Text(
                                'car',
                                style: TextStyle(fontWeight: FontWeight.w600),
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
          ),
        );
      },
    );
  }
}
