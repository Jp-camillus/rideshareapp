import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/screen/auth/signup/signupsuccessfull.dart';
import 'package:rideshareapp/theme/app_theme.dart';
import 'package:rideshareapp/widget/custombuttom.dart';
import 'package:rideshareapp/widget/customtextfield.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class Createyouraccount extends StatefulWidget {
  const Createyouraccount({super.key});

  @override
  State<Createyouraccount> createState() => _CreateyouraccountState();
}

class _CreateyouraccountState extends State<Createyouraccount> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(h * 0.025),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(fit: BoxFit.cover, image: AssetImage(Appimage.lin)),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    backgroundColor: Color.fromRGBO(18, 18, 29, 0.05),
                    child: Image(image: AssetImage(Appimage.close)),
                  ),
                ],
              ),
              Text(
                'Create your account',
                style: AppThemes.titleLarge.copyWith(
                  color: AppColors.textPrimary,
                ),
              ),
              Spacewidgetheight(space: 5),

              Text(
                'Join thousands of trusted riders and drivers across',
                style: AppThemes.titleSmall.copyWith(
                  fontSize: 14,
                  color: AppColors.textSecondary,
                ),
              ),
              Text(
                ' Nigeria.',
                style: AppThemes.titleSmall.copyWith(
                  fontSize: 14,
                  color: AppColors.textSecondary,
                ),
              ),
              Spacewidgetheight(space: 25),
              Text(
                'Full Name',
                style: TextStyle(fontSize: 14, color: AppColors.textPrimary),
              ),
              Spacewidgetheight(space: 8),
              Customtextfield(
                iwantfronticon: true,
                iwantbothicon: false,
                tittle: 'Enter your full name',
                prefixicon: Image(image: AssetImage(Appimage.person)),
                suffixicon: Image(image: AssetImage(Appimage.person)),
                obscure: false,
              ),
              Spacewidgetheight(space: 25),
              Text(
                'Email',
                style: TextStyle(fontSize: 14, color: AppColors.textPrimary),
              ),
              Spacewidgetheight(space: 8),
              Customtextfield(
                iwantfronticon: true,
                iwantbothicon: false,
                tittle: 'Enter your full name',
                prefixicon: Image(image: AssetImage(Appimage.email)),
                suffixicon: Image(image: AssetImage(Appimage.email)),
                obscure: false,
              ),
              Spacewidgetheight(space: 25),
              Text(
                'Password',
                style: TextStyle(fontSize: 14, color: AppColors.textPrimary),
              ),
              Spacewidgetheight(space: 8),
              Customtextfield(
                iwantfronticon: true,
                iwantbothicon: true,
                tittle: 'Enter your password',
                prefixicon: Icon(Icons.lock_outline),
                suffixicon: Icon(Icons.visibility),
                obscure: false,
              ),
              Spacewidgetheight(space: 25),
              Text(
                'Confirm Password',
                style: TextStyle(fontSize: 14, color: AppColors.textPrimary),
              ),
              Spacewidgetheight(space: 8),
              Customtextfield(
                iwantfronticon: true,
                iwantbothicon: true,
                tittle: 'Confirm your password',
                prefixicon: Icon(Icons.lock_outline),
                suffixicon: Icon(Icons.visibility),
                obscure: false,
              ),
              Spacewidgetheight(space: 8),

              Text(
                'At least 8 characters, 1 uppercase letter, 1 number, 1 symbol',
                style: TextStyle(fontSize: 10, color: AppColors.textSecondary),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                leading: Checkbox(value: false, onChanged: (value) {}),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'By Signing up, you agree to the',
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.textSecondary,
                      ),
                    ),
                    Text(
                      ' Terms of Service',
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.textPrimary,
                      ),
                    ),
                  ],
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'and',
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.textSecondary,
                      ),
                    ),
                    Text(
                      '  Privacy Policy',
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.textPrimary,
                      ),
                    ),
                  ],
                ),
              ),
              Custombuttom(
                tap: () {
                  Get.to(Signupsuccessfull());
                },
                tittle: 'Sign Up',
                width: w.toDouble(),
              ),
              Spacewidgetheight(space: h * 0.02),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(fontSize: 13.83),
                  ),
                  Spacewidgetwidth(space: 5),

                  Text(
                    'Sign In',
                    style: TextStyle(
                      color: AppColors.primaryBlue,
                      fontSize: 13.83,
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
