import 'package:flutter/material.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/widget/customtextfield.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class Vehicleinformation extends StatelessWidget {
  const Vehicleinformation({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(h * 0.039),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Spacewidgetheight(space: h * 0.08),
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
                  Text(
                    'Tell Us About Your Vehicle',
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
                    'Please enter your vehicle details. This helps passengers ',
                  ),
                ],
              ),
              Row(children: [Text('trust the ride')]),
              Spacewidgetheight(space: h * 0.05),
              Row(children: [Text('Make')]),
              Spacewidgetheight(space: 5),
              Customtextfield(
                iwantfronticon: false,
                iwantbothicon: false,
                tittle: 'Toyota',
                prefixicon: Icon(Icons.abc),
                suffixicon: Icon(Icons.abc),
                obscure: false,
              ),
              Spacewidgetheight(space: h * 0.05),
              Row(children: [Text('Model')]),
              Spacewidgetheight(space: 5),
              Customtextfield(
                iwantfronticon: false,
                iwantbothicon: false,
                tittle: 'Corolla',
                prefixicon: Icon(Icons.abc),
                suffixicon: Icon(Icons.abc),
                obscure: false,
              ),
              Spacewidgetheight(space: h * 0.05),
              Row(children: [Text('Type')]),
              Spacewidgetheight(space: 5),
              Customtextfield(
                iwantfronticon: false,
                iwantbothicon: false,
                tittle: 'Covertible',
                prefixicon: Icon(Icons.abc),
                suffixicon: Icon(Icons.abc),
                obscure: false,
              ),
              Spacewidgetheight(space: h * 0.05),
              Row(children: [Text('Year')]),
              Spacewidgetheight(space: 5),
              Customtextfield(
                iwantfronticon: false,
                iwantbothicon: false,
                tittle: '2018',
                prefixicon: Icon(Icons.abc),
                suffixicon: Icon(Icons.abc),
                obscure: false,
              ),
              Spacewidgetheight(space: h * 0.05),
              Row(children: [Text('Color')]),
              Spacewidgetheight(space: 5),
              Customtextfield(
                iwantfronticon: false,
                iwantbothicon: false,
                tittle: 'Black',
                prefixicon: Icon(Icons.abc),
                suffixicon: Icon(Icons.abc),
                obscure: false,
              ),
              Spacewidgetheight(space: h * 0.05),
              Row(children: [Text('Plate Number')]),
              Spacewidgetheight(space: 5),
              Customtextfield(
                iwantfronticon: false,
                iwantbothicon: false,
                tittle: 'LAG-987XZ',
                prefixicon: Icon(Icons.abc),
                suffixicon: Icon(Icons.abc),
                obscure: false,
              ),
              Spacewidgetheight(space: h * 0.028),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Row(children: [Text('Upload Vehicle Photo')]),
                      Spacewidgetheight(space: h * 0.02),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              height: h * 0.15,
                              width: w * 0.5,
                              child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage(Appimage.greencar),
                              ),
                            ),
                            Container(
                              height: h * 0.15,
                              width: w * 0.5,
                              child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage(Appimage.ww),
                              ),
                            ),
                          ],
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
    );
  }
}
