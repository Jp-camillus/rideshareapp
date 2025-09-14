import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/screen/applylogisticspartner/applyasalogisticspartner.dart';
import 'package:rideshareapp/theme/app_theme.dart';
import 'package:rideshareapp/widget/custombuttom.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class AccountSettingsScreen extends StatelessWidget {
  const AccountSettingsScreen({super.key});

  static const _cardRadius = 14.0;
  static const _shadow = BoxShadow(
    color: Color(0x20000000),
    blurRadius: 8,
    offset: Offset(0, 4),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final width = constraints.maxWidth;
            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // top row: back + notification
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

                  Spacewidgetheight(space: 30),

                  // Title (left aligned)
                  Padding(
                    padding: EdgeInsets.only(left: 4),
                    child: Text(
                      'Account Settings',
                      style: AppThemes.bodySmall.copyWith(
                        fontWeight: FontWeight.w800,
                        color: AppColors.textPrimary,
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // PROFILE CARD
                  Row(
                    children: [
                      // Avatar with gradient ring
                      Container(
                        width: 70,
                        height: 74,
                        padding: const EdgeInsets.all(3.5),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: AppColors.buttongradient,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(36),
                            border: Border.all(color: const Color(0xFFF4F6F8)),
                          ),
                          padding: const EdgeInsets.all(1),
                          child: Container(
                            width: 70,
                            height: 74,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,

                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(Appimage.profile),
                              ),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(width: 12),

                      // Info
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'James Okafor',
                              style: AppThemes.bodySmall.copyWith(
                                fontWeight: FontWeight.w800,
                                color: AppColors.textPrimary,
                                fontSize: 15,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'james.okafor@gmail.com',
                              style: AppThemes.bodySmall.copyWith(
                                fontWeight: FontWeight.w100,
                                color: AppColors.textSecondary,
                                fontSize: 12,
                              ),
                            ),
                            Row(
                              children: [
                                // small role chip
                                Text(
                                  'Driver',
                                  style: AppThemes.bodySmall.copyWith(
                                    fontWeight: FontWeight.w800,
                                    color: AppColors.textSecondary,
                                    fontSize: 10,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      size: 12,
                                      color: AppColors.warning,
                                    ),
                                    SizedBox(width: 6),
                                    Text(
                                      '4.8',
                                      style: AppThemes.bodySmall.copyWith(
                                        fontWeight: FontWeight.w800,
                                        color: AppColors.warning,
                                        fontSize: 10,
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      'Based On 42 Reviews',
                                      style: AppThemes.bodySmall.copyWith(
                                        fontWeight: FontWeight.w800,
                                        color: AppColors.textSecondary,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            GestureDetector(
                              onTap: () {},
                              child: Text(
                                'View Profile',
                                style: AppThemes.bodyMedium.copyWith(
                                  fontWeight: FontWeight.w100,
                                  color: AppColors.primaryBlue,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 18),

                  // STAT PILL (white rounded pill with 3 sections)
                  Center(
                    child: Container(
                      width: 300,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 1,
                        vertical: 12,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.borderLight),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(39),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _statItem(
                            label: 'Chats',
                            icon: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: AppColors.fadeblue,
                                  ),
                                  child: const Image(
                                    image: AssetImage(Appimage.messageoutline),
                                  ),
                                ),
                                Positioned(
                                  right: -2,
                                  top: -2,
                                  child: CircleAvatar(
                                    child: Center(
                                      child: Text(
                                        '2',
                                        style: AppThemes.titleSmall.copyWith(
                                          fontSize: 8,
                                        ),
                                      ),
                                    ),
                                    radius: 6,
                                    backgroundColor: AppColors.error,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          _statItem(
                            label: 'My Wallet',
                            icon: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: AppColors.fadegreen,
                              ),
                              child: const Image(
                                image: AssetImage(Appimage.greenwallet),
                              ),
                            ),
                          ),
                          _statItem(
                            label: 'History',
                            icon: Text(
                              '5',
                              style: AppThemes.bodySmall.copyWith(
                                fontWeight: FontWeight.w200,
                                color: AppColors.colorBlue,
                                fontSize: 27,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 18),

                  // PROMO CARD - Ready to Drive & Earn
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.fadecardgreen,
                      borderRadius: BorderRadius.circular(_cardRadius),
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: [
                        // promo image
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Container(
                            color: Colors.white,
                            width: 78,
                            height: 78,
                            child: Image.asset(
                              Appimage.mrktar,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),

                        const SizedBox(width: 12),

                        // text + button
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ready to Drive & Earn?',
                                style: AppThemes.bodySmall.copyWith(
                                  fontWeight: FontWeight.w800,
                                  color: AppColors.colorBlue,
                                ),
                              ),
                              const SizedBox(height: 6),
                              const Text(
                                'To start receiving passenger bookings freely with no charges, select a monthly driver plan.',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                              const SizedBox(height: 10),
                              // gradient pill button
                              Container(
                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color(0xFF6B5BFF),
                                      Color(0xFFB86DFF),
                                    ],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                  ),
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(
                                        0xFF6B5BFF,
                                      ).withOpacity(0.18),
                                      blurRadius: 12,
                                      offset: const Offset(0, 6),
                                    ),
                                  ],
                                ),
                                child: Custombuttom(
                                  tap: () {
                                    Get.to(Applyasalogisticspartner());
                                  },
                                  tittle: 'Start now',
                                  width: 120,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 18),

                  // SETTINGS LIST
                  _settingsTile(icon: Appimage.person, title: 'Personal Info'),
                  _settingsTile(icon: Appimage.car, title: 'Vehicle Info'),
                  _settingsTile(
                    icon: Appimage.setting,
                    title: 'Subscription Plan',
                  ),
                  _settingsTile(
                    icon: Appimage.van,
                    title: 'Become a Logistics Partner',
                    subtitle: 'Earn more by delivering packages on SwiftRides',
                    isLinkTitle: true,
                  ),
                  _settingsTile(
                    icon: Appimage.wallet,
                    title: 'Payment Methods',
                  ),
                  _settingsTile(
                    icon: Appimage.lock,
                    title: 'Account & Security',
                  ),
                  _settingsTile(
                    icon: Appimage.money,
                    title: 'Account & Security',
                    subtitle: 'Earn #500 for each friend you refer',
                  ),
                  _settingsTile(icon: Appimage.notiff, title: 'Notifications'),
                  _settingsTile(icon: Appimage.clock, title: 'Payment History'),
                  _settingsTile(
                    icon: Appimage.verify,
                    title: 'KYC Verification',
                  ),
                  _settingsTile(icon: Appimage.globe, title: 'Globe'),
                  _settingsTile(icon: Appimage.like, title: 'Help & Support'),
                  Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x0A000000),
                          blurRadius: 6,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      leading: Image(image: AssetImage(Appimage.logout)),
                      title: Text(
                        'Logout',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: AppColors.error,
                        ),
                      ),

                      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                      onTap: () {},
                    ),
                  ),

                  const SizedBox(height: 28),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  // small rounded white icon button (back)
  Widget _roundedIconButton({
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Color(0x0A000000),
              blurRadius: 6,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Icon(icon, size: 18, color: Colors.black87),
      ),
    );
  }

  // notification button with small orange dot
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

  // vertical divider inside pill
  Widget _verticalDivider() {
    return Container(
      width: 1,
      height: 60,
      color: const Color(0xFFF0F0F0),
      margin: const EdgeInsets.symmetric(horizontal: 6),
    );
  }

  // stat item (in pill)
  Widget _statItem({required String label, required Widget icon}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          label,
          style: AppThemes.bodySmall.copyWith(
            fontWeight: FontWeight.w200,
            color: AppColors.textPrimary,
          ),
        ),
        const SizedBox(height: 6),
        icon,
      ],
    );
  }

  // tiny badge number used for Chats (mirrors screenshot where Chats has a small bubble)
  static Widget _badgeNumber(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 6),
      decoration: BoxDecoration(
        color: const Color(0xFFF6F6FB),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
      ),
    );
  }

  // settings tile builder
  Widget _settingsTile({
    required String icon,
    required String title,
    String? subtitle,
    bool isLinkTitle = false,
    bool logouttil = false,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0A000000),
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        leading: Image(image: AssetImage(icon)),
        title: Text(
          title,
          style: TextStyle(
            fontWeight: isLinkTitle ? FontWeight.w700 : FontWeight.w600,
            fontSize: 14,
            color: isLinkTitle ? const Color(0xFF2B68FF) : Colors.black87,
          ),
        ),
        subtitle:
            subtitle != null
                ? Text(
                  subtitle,
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                )
                : null,
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {},
      ),
    );
  }
}
