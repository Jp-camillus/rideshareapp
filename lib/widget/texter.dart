import 'package:flutter/material.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/widget/custombuttom.dart';
import 'package:rideshareapp/widget/customtextfield.dart';

class Texter extends StatelessWidget {
  const Texter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 100),
          Custombuttom(tittle: 'Sign-up', width: 100),
          Customtextfield(
            iwantbothicon: true,
            iwantfronticon: false,
            obscure: true,
            prefixicon: Image(image: AssetImage(Appimage.attach)),
            suffixicon: Image(image: AssetImage(Appimage.attach)),
            tittle: 'password',
          ),
        ],
      ),
    );
  }
}
