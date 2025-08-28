import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rideshareapp/constant/appcolor.dart'
    show Appcolor, primarrylight;
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/widget/custombuttom.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class Tripbookingsummary extends StatelessWidget {
  const Tripbookingsummary({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacewidgetheight(space: h * 0.05),
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.arrow_back, color: Appcolor.primarrylight),
                ),
              ),
              Spacewidgetheight(space: h * 0.02),
              Text(
                'Trip Booking Summary',
                style: TextStyle(
                  fontSize: h * 0.025,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Spacewidgetheight(space: h * 0.01),
              Container(
                height: h * 0.5,
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: w * 0.26,
                            height: h * 0.12,
                            child: Stack(
                              children: [
                                Positioned(
                                  top: h * 0.01,
                                  left: w * 0.11,
                                  child: Container(
                                    height: h * 0.05,
                                    width: w * 0.17,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.contain,
                                        image: AssetImage(Appimage.whitecar),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Container(
                                    height: h * 0.05,
                                    width: w * 0.17,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(Appimage.smileman),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacewidgetwidth(space: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Chinedu O.',
                                style: TextStyle(
                                  fontSize: h * 0.025,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.deepOrange,
                                    size: h * 0.02,
                                  ),
                                  Text(
                                    '4.2',
                                    style: TextStyle(color: Colors.deepOrange),
                                  ),
                                  Spacewidgetwidth(space: 5),
                                  Text('(250)'),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    size: 15,
                                    Icons.location_on_outlined,
                                    color: Appcolor.primarrylight,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'Building 8, 77 N WASHINGTON ST, ',
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Spacewidgetwidth(space: 10),
                        ],
                      ),
                      Divider(),
                      Spacewidgetheight(space: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Date',
                            style: TextStyle(
                              color: Color.fromRGBO(75, 79, 99, 1),
                            ),
                          ),
                          Text('May 2 @ 7:00 AM'),
                        ],
                      ),
                      Spacewidgetheight(space: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Seat',
                            style: TextStyle(
                              color: Color.fromRGBO(75, 79, 99, 1),
                            ),
                          ),
                          Text('1seat'),
                        ],
                      ),
                      Spacewidgetheight(space: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Price',
                            style: TextStyle(
                              color: Color.fromRGBO(75, 79, 99, 1),
                            ),
                          ),
                          Text('₦2,500'),
                        ],
                      ),
                      Spacewidgetheight(space: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Charges',
                            style: TextStyle(
                              color: Color.fromRGBO(75, 79, 99, 1),
                            ),
                          ),
                          Text('#300'),
                        ],
                      ),
                      Spacewidgetheight(space: 10),
                      Divider(),
                      Row(
                        children: [
                          Image(image: AssetImage(Appimage.clock)),
                          Spacewidgetwidth(space: 10),
                          Text('Free cancellation before January 15'),
                        ],
                      ),
                      Spacewidgetheight(space: h * 0.051),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Appcolor.bottombackground,
                              const Color.fromARGB(87, 255, 245, 237),
                              const Color.fromARGB(17, 180, 197, 253),
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
                                '₦1,200',
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
              Spacewidgetheight(space: h * 0.02),
              Text(
                'Select Payment Method:',
                style: TextStyle(
                  fontSize: h * 0.022,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Row(
                children: [
                  Radio(value: false, groupValue: true, onChanged: (value) {}),
                  Text('Wallet'),
                ],
              ),
              Row(
                children: [
                  Radio(value: false, groupValue: true, onChanged: (value) {}),
                  Text('Bank Transfer'),
                ],
              ),
              Row(
                children: [
                  Radio(value: false, groupValue: true, onChanged: (value) {}),
                  Text('Debit/Credit Card'),
                ],
              ),
              Spacewidgetheight(space: h * 0.02),
              Row(
                children: [
                  Spacewidgetwidth(space: w * 0.12),
                  Text(
                    'Other Options',
                    style: TextStyle(color: Appcolor.primarrylight),
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Custombuttom(
                    tittle: 'Confirm Booking & Pay',
                    width: w * 0.388,
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
