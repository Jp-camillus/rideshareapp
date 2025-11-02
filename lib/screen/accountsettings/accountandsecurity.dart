import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/theme/app_theme.dart';
import 'package:rideshareapp/widget/custombuttom.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class AccountSecurityScreen extends StatefulWidget {
  const AccountSecurityScreen({Key? key}) : super(key: key);

  @override
  State<AccountSecurityScreen> createState() => _AccountSecurityScreenState();
}

class _AccountSecurityScreenState extends State<AccountSecurityScreen> {
  bool biometricID = false;
  bool fingerprint = false;
  bool pin = false;
  bool enablePassword = false;
  bool faceID = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FB),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: CircleAvatar(
                    backgroundColor: AppColors.cardLight,
                    child: Icon(
                      Icons.arrow_back,
                      color: Appcolor.primarrylight,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                // spacer so title sits left below (we mirror screenshot where title is left aligned)
                const Spacer(),
                _notificationButton(hasDot: true, onTap: () {}),
              ],
            ),
            Spacewidgetheight(space: 20),
            const Text(
              "Account & Security",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
            Spacewidgetheight(space: 10),

            const SizedBox(height: 10),
            _buildSwitchTile("Biometric ID", biometricID, (val) {
              setState(() => biometricID = val);
              if (val == true) {
                return biometriclogin(context);
              }
            }),
            _buildSwitchTile("Fingerprint", fingerprint, (val) {
              setState(() => fingerprint = val);
              if (val == true) {
                return fingerprintlogin(context);
              }
            }),
            _buildSwitchTile("PIN", pin, (val) {
              setState(() => pin = val);
              if (val == true) {
                return pinLogin(context);
              }
            }),
            _buildSwitchTile("Enable Password Before Login", enablePassword, (
              val,
            ) {
              setState(() => enablePassword = val);
            }),
            _buildSwitchTile("Face ID", faceID, (val) {
              setState(() => faceID = val);
            }),
            const SizedBox(height: 15),
            _buildListTile("Change Password", trailing: true),
            const SizedBox(height: 20),
            _buildActionCard(
              title: "Deactivate Account",
              description:
                  "Temporarily deactivate your account. Easily reactivate when you're ready.",
              icon: Icons.lock_outline_rounded,
              borderColor: const Color(0xFFECECEC),
              titleColor: Colors.black87,
              descColor: Colors.black54,
              arrowColor: Colors.black45,
            ),
            const SizedBox(height: 15),
            _buildActionCard(
              title: "Delete Account",
              description:
                  "Permanently remove your account and data from SwiftRide. Proceed with caution.",
              icon: Icons.delete_outline_rounded,
              borderColor: const Color(0xFFECECEC),
              titleColor: Colors.red,
              descColor: Colors.black54,
              arrowColor: Colors.black45,
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildSwitchTile(
    String title,
    bool value,
    ValueChanged<bool> onChanged,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.black87,
              fontWeight: FontWeight.w500,
            ),
          ),
          Transform.scale(
            scale: 0.8,
            child: Switch(
              value: value,
              onChanged: onChanged,
              thumbColor: MaterialStateProperty.resolveWith<Color>((states) {
                if (states.contains(MaterialState.selected)) {
                  return Colors.white; // thumb when ON
                }
                return Colors.white; // thumb when OFF
              }),
              trackColor: MaterialStateProperty.resolveWith<Color>((states) {
                if (states.contains(MaterialState.selected)) {
                  return AppColors.colorBlue; // blue when ON
                }
                return Colors.transparent; // transparent center
              }),
              trackOutlineColor: MaterialStateProperty.resolveWith<Color>((
                states,
              ) {
                if (states.contains(MaterialState.selected)) {
                  return AppColors.colorBlue; // outline when ON
                }
                return const Color(0xFFDEE1E7); // outline when OFF
              }),
              trackOutlineWidth: MaterialStateProperty.all(1.5),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListTile(String title, {bool trailing = false}) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Color(0xFFE5E6EB), width: 1)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.black87,
              fontWeight: FontWeight.w500,
            ),
          ),
          if (trailing)
            const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 16,
              color: Colors.black45,
            ),
        ],
      ),
    );
  }

  Widget _buildActionCard({
    required String title,
    required String description,
    required IconData icon,
    required Color borderColor,
    required Color titleColor,
    required Color descColor,
    required Color arrowColor,
  }) {
    return Container(
      width: 393,
      height: 76,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: borderColor),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.08),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: titleColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    description,
                    style: TextStyle(
                      color: descColor,
                      fontSize: 12,
                      height: 1.3,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            Icon(
              Icons.arrow_forward_ios_rounded,
              size: 16,
              color: arrowColor.withOpacity(0.8),
            ),
          ],
        ),
      ),
    );
  }

  void biometriclogin(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Container(
            height: 529,
            width: 392,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        backgroundColor: Color.fromRGBO(18, 18, 29, 0.05),
                        child: Image(image: AssetImage(Appimage.lok)),
                      ),
                    ],
                  ),
                  Image(image: AssetImage(Appimage.fingerprintwithhand)),
                  Spacewidgetheight(space: h * 0.05),
                  Text(
                    'Enable Biometric Login',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: AppColors.textPrimary,
                    ),
                  ),

                  Spacewidgetheight(space: h * 0.02),

                  Text(
                    'Enable Biometric ID to log in quickly using your fingerprint or face recognition — depending on your device.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.textSecondary,
                    ),
                  ),

                  Spacewidgetheight(space: h * 0.038),
                  Custombuttom(
                    tittle: 'Enable Biometric ID',
                    width: 190,
                    height: 56,
                  ),

                  Spacewidgetheight(space: h * 0.038),
                  Text(
                    'No,Don’t',
                    style: TextStyle(fontSize: 16, color: AppColors.colorBlue),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void pinLogin(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Container(
            height: 591.3125,
            width: 392,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        backgroundColor: Color.fromRGBO(18, 18, 29, 0.05),
                        child: Image(image: AssetImage(Appimage.lok)),
                      ),
                    ],
                  ),
                  Image(image: AssetImage(Appimage.lockandkey)),
                  Spacewidgetheight(space: h * 0.05),
                  Text(
                    'Would you like to log in quickly with a 4-digit PIN?',
                    textAlign: TextAlign.center,

                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: AppColors.textPrimary,
                    ),
                  ),

                  Spacewidgetheight(space: h * 0.02),

                  Text(
                    'PIN login is faster and secure. Make sure not to share it.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.textSecondary,
                    ),
                  ),

                  Spacewidgetheight(space: h * 0.038),
                  Custombuttom(tittle: 'Yes, Set PIN', width: 135, height: 56),

                  Spacewidgetheight(space: h * 0.038),
                  Text(
                    'No,Don’t Set',
                    style: TextStyle(fontSize: 16, color: AppColors.colorBlue),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void fingerprintlogin(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Container(
            height: 633.640625,
            width: 392,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        backgroundColor: Color.fromRGBO(18, 18, 29, 0.05),
                        child: Image(image: AssetImage(Appimage.lok)),
                      ),
                    ],
                  ),
                  Image(image: AssetImage(Appimage.fingerprintt)),
                  Text(
                    'Allow “Swiftrides” to use your device’s fingerprint sensor to log in faster?',
                    textAlign: TextAlign.center,

                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: AppColors.textPrimary,
                    ),
                  ),

                  Spacewidgetheight(space: h * 0.02),

                  Text(
                    "This will use your phone's biometric authentication system.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.textSecondary,
                    ),
                  ),

                  Spacewidgetheight(space: h * 0.038),
                  Text(
                    'Yes, Enable Fingerprint',
                    style: TextStyle(fontSize: 16, color: AppColors.colorBlue),
                  ),
                  Spacewidgetheight(space: h * 0.038),
                  Text(
                    'No,Don’t Set',
                    style: TextStyle(fontSize: 16, color: AppColors.colorBlue),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _notificationButton({
    required bool hasDot,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              border: Border.all(color: AppColors.borderLight),
            ),
            child: const Image(image: AssetImage(Appimage.notiff)),
          ),
          if (hasDot)
            Positioned(
              right: -2,
              top: -2,
              child: CircleAvatar(
                child: Center(
                  child: Text(
                    '2',
                    style: AppThemes.titleSmall.copyWith(fontSize: 8),
                  ),
                ),
                radius: 6,
                backgroundColor: AppColors.error,
              ),
            ),
        ],
      ),
    );
  }
}
