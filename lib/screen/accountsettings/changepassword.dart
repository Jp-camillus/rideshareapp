import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/theme/app_theme.dart';
import 'package:rideshareapp/widget/custombuttom.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final TextEditingController oldPasswordController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  void handleSave() {
    // TODO: Add logic to update password
    debugPrint('Password changed successfully');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFC),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header row
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

              const SizedBox(height: 10),
              const Text(
                "Change Password",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),

              const SizedBox(height: 30),

              // Old Password
              const Text(
                "Old Password",
                style: TextStyle(fontSize: 14, color: AppColors.textPrimary),
              ),
              const SizedBox(height: 5),
              TextField(
                controller: oldPasswordController,
                obscureText: true,
                decoration: _inputDecoration("Enter old password"),
              ),

              const SizedBox(height: 20),

              // New Password
              const Text(
                "New Password",
                style: TextStyle(fontSize: 14, color: AppColors.textPrimary),
              ),
              const SizedBox(height: 5),
              TextField(
                controller: newPasswordController,
                obscureText: true,
                decoration: _inputDecoration("Enter new password"),
              ),

              const SizedBox(height: 20),

              // Confirm Password
              const Text(
                "Confirm Password",
                style: TextStyle(fontSize: 14, color: AppColors.textPrimary),
              ),
              const SizedBox(height: 5),
              TextField(
                controller: confirmPasswordController,
                obscureText: true,
                decoration: _inputDecoration("Confirm your password"),
              ),
              Spacewidgetheight(space: 20),
              // Save Button
              Custombuttom(tittle: 'Save Changes', width: 138, height: 45),
            ],
          ),
        ),
      ),
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

  InputDecoration _inputDecoration(String hint) {
    return InputDecoration(
      hintText: hint,
      hintStyle: const TextStyle(fontSize: 12, color: AppColors.textSecondary),
      contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 14),
      filled: true,
      fillColor: AppColors.backgroundLight,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xFFE0E0E0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xFF4C8CFF)),
      ),
    );
  }
}
