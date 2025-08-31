import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/bottom_nav_controller.dart';
import '../constant/appcolor.dart';
import '../theme/app_theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavWidget extends StatelessWidget {
  const CustomBottomNavWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<BottomNavController>();
    var w = MediaQuery.of(context).size.width;

    return Obx(
      () => Container(
        margin: EdgeInsets.all(12),
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
        decoration: BoxDecoration(
          color:
              Get.find<AppThemes>().themeMode.value == ThemeMode.light
                  ? AppColors.cardLight
                  : AppColors.darkCard,

          borderRadius: BorderRadius.circular(40), // capsule shape
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 15,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(
              index: 0,
              icon: "asset/svg/home_ic_outlined.svg",
              activeIcon: "asset/svg/home_ic_filled.svg",
              label: "Home",
              controller: controller,
            ),
            _buildNavItem(
              index: 1,
              icon: "asset/svg/trips_ic_ouitline.svg",
              activeIcon: "asset/svg/trips_ic_filled.svg",
              label: "My Trips",
              controller: controller,
            ),
            _buildNavItem(
              index: 2,
              icon: "asset/svg/bookings_ic_outlined.svg",
              activeIcon: "asset/svg/booking_ic_filled.svg",
              label: "Bookings",
              controller: controller,
            ),
            _buildNavItem(
              index: 3,
              icon: "asset/svg/profile_ic_outlined.svg",
              activeIcon: "asset/svg/profile_ic_filled.svg",
              label: "Account",
              controller: controller,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem({
  required int index,
  required String icon,
  required String activeIcon,
  required String label,
  required BottomNavController controller,
}) {
  final isSelected = controller.selectedIndex.value == index;

  return GestureDetector(
    onTap: () => controller.changeIndex(index),
    child: Transform.translate(
      offset: isSelected ? Offset(0, -25) : Offset.zero,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 250),
        curve: Curves.easeInOut,
        width: 70,
        height: 65,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: isSelected
            ? BoxDecoration(
                color: Get.find<AppThemes>().themeMode.value == ThemeMode.light
                    ? AppColors.cardLight
                    : AppColors.darkCard,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Appcolor.topbackground.withOpacity(0.25),
                    blurRadius: 12,
                    offset: const Offset(6, 0),
                  ),
                ],
              )
            : null,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              isSelected ? activeIcon : icon,
              width: 26,
              height: 26,
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                fontSize: 8,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
                color: isSelected ? Colors.orange : Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

}
