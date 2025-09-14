import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:local_auth/local_auth.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/screen/auth/signin/loginscreenpin.dart';
import 'package:rideshareapp/screen/homescreen/homescreen.dart';
import 'package:rideshareapp/theme/app_theme.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class Fingerprint extends StatefulWidget {
  const Fingerprint({super.key});

  @override
  State<Fingerprint> createState() => _FingerprintState();
}

class _FingerprintState extends State<Fingerprint> {
  final LocalAuthentication auth = LocalAuthentication();

  Future<void> _authenticate() async {
    try {
      _showFingerprintDialog();
      bool didAuthenticate = await auth.authenticate(
        localizedReason: 'Please verify your fingerprint to continue',
        options: const AuthenticationOptions(
          biometricOnly: true,
          stickyAuth: true,
        ),
      );

      if (didAuthenticate) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Fingerprint Verified ✅")),
          );

          Get.to(Homescreen());
          // Navigate to home or next screen
          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomeScreen()));
        }
      } else {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Authentication failed ❌")),
          );
        }
      }
    } catch (e) {
      debugPrint("Error using biometric auth: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Spacewidgetheight(space: h * 0.1),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleAvatar(
                  backgroundColor: const Color.fromRGBO(18, 18, 29, 0.05),
                  child: Image(image: AssetImage(Appimage.close)),
                ),
              ],
            ),
            CircleAvatar(
              radius: w * 0.08,
              backgroundImage: AssetImage(Appimage.agwas),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome ',
                  style: AppThemes.titleLarge.copyWith(
                    color: AppColors.primaryBlue,
                    fontSize: 32,
                  ),
                ),
                Text(
                  'back!',
                  style: AppThemes.titleLarge.copyWith(
                    fontSize: 32,

                    color: AppColors.textPrimary,
                  ),
                ),
              ],
            ),
            Text(
              'Alayande',
              style: AppThemes.titleSmall.copyWith(
                fontSize: 16,
                color: AppColors.textSecondary,
              ),
            ),
            Spacewidgetheight(space: h * 0.15),

            /// 🔹 Tap fingerprint to authenticate
            GestureDetector(
              onTap: _authenticate,
              child: Image.asset(Appimage.fingerprint, height: h * 0.1),
            ),

            Spacewidgetheight(space: 10),
            Text(
              'Tap to login with your fingerprint',
              style: AppThemes.titleSmall.copyWith(
                fontSize: 15,
                color: AppColors.textSecondary,
              ),
            ),
            Spacewidgetheight(space: h * 0.2),

            GestureDetector(
              onTap: () {
                Get.to(Loginscreenpin(phoneNumber: '99999999999999'));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Log in with your',
                    style: AppThemes.titleSmall.copyWith(
                      fontSize: 13.9,
                      color: AppColors.textSecondary,
                    ),
                  ),
                  Spacewidgetwidth(space: 5),
                  Text(
                    'PIN',
                    style: AppThemes.titleSmall.copyWith(
                      fontSize: 13.9,
                      color: AppColors.primaryBlue,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showFingerprintDialog() {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    showDialog(
      context: context,
      barrierColor: const Color.fromARGB(200, 255, 255, 255),
      barrierDismissible: true,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          insetPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Container(
            height: h * 0.2,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              gradient: LinearGradient(
                colors: [
                  Appcolor.bottombackground,
                  Appcolor.bottombackground,
                  const Color.fromARGB(87, 255, 245, 237),
                  const Color.fromARGB(45, 180, 197, 253),
                  const Color.fromARGB(12, 180, 197, 253),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Spacewidgetheight(space: 10),
                Text(
                  "Kindly verify your",
                  style: AppThemes.titleSmall.copyWith(
                    fontSize: 13.9,
                    color: AppColors.textSecondary,
                  ),
                ),
                Text(
                  "fingerprint",
                  style: AppThemes.titleSmall.copyWith(
                    fontSize: 13.9,
                    color: AppColors.primaryBlue,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
