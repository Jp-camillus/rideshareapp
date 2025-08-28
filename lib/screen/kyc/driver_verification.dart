import 'package:flutter/material.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/widget/custombuttom.dart';
import 'package:rideshareapp/widget/customtextfield.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class DriverVerification extends StatelessWidget {
  const DriverVerification({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: h * 0.7,
              width: w * 0.8,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(h * 0.05),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    ListTile(
                      title: Text('Driver Verification'),
                      subtitle: Text('Step 1 of 3'),
                      trailing: CircleAvatar(
                        backgroundColor: const Color.fromRGBO(18, 18, 29, 0.05),
                        child: Image(image: AssetImage(Appimage.close)),
                      ),
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
                        Text(
                          'NIN Verification Required ',
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
                        Text('To continue, we need to verify your National '),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Identification Number (NIN) to ensure safety and ',
                        ),
                      ],
                    ),
                    Row(children: [Text('compliance')]),
                    Spacewidgetheight(space: h * 0.05),
                    Row(
                      children: [
                        Text(
                          'Enter your NIN to verify your identity.',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    Spacewidgetheight(space: 5),
                    Customtextfield(
                      iwantfronticon: false,
                      iwantbothicon: false,
                      tittle: 'Enter your 11-digit NIN',
                      prefixicon: Icon(Icons.abc),
                      suffixicon: Icon(Icons.abc),
                      obscure: false,
                    ),
                    Spacewidgetheight(space: 29),
                    Custombuttom(
                      tittle: 'Submit for Verification',
                      width: w * 0.35,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
