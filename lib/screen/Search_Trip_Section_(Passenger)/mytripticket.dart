import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/theme/app_theme.dart';
import 'package:rideshareapp/widget/custombuttom.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class MyTripTicketScreen extends StatelessWidget {
  const MyTripTicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 14),
          child: Column(
            children: [
              // ---------- HEADER ----------
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
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
                      ],
                    ),
                    Spacewidgetheight(space: 20),
                    Row(
                      children: [
                        Text(
                          "My Trip Ticket",
                          style: AppThemes.titleSmall.copyWith(
                            color: AppColors.textPrimary,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 6),

              // ---------- PASSENGER INFO ----------
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    // avatar with subtle border
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: AppColors.primaryBlue,
                          width: 3,
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 3),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.06),
                              blurRadius: 6,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: const CircleAvatar(
                          radius: 26,
                          backgroundImage: AssetImage(Appimage.hausawoman),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Daniel A.",
                          style: AppThemes.titleSmall.copyWith(
                            color: AppColors.textPrimary,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Passenger",
                          style: TextStyle(color: AppColors.textSecondary),
                        ),
                      ],
                    ),
                    const Spacer(),
                    // share button (square blue)
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: AppColors.colorBlue,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.05),
                            blurRadius: 6,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: const Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 18),

              // ---------- TRIP DETAILS (ticket-shaped) ----------
              Container(
                width: 392,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: PhysicalShape(
                    color: Colors.white,
                    elevation: 6,
                    shadowColor: Colors.black.withOpacity(0.06),
                    clipper: TicketClipper(notchRadius: 14, borderRadius: 16),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 18,
                        vertical: 16,
                      ),
                      child: Column(
                        children: [
                          // top cities row
                          const SizedBox(height: 12),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Ikeja, Lagos",
                                style: TextStyle(
                                  fontSize: 13.9,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.textPrimary,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                                width: 50,
                                child: Divider(color: AppColors.textPrimary),
                              ),
                              Text(
                                "Lekki Phase 1",
                                style: TextStyle(
                                  fontSize: 13.9,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.textPrimary,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 35),
                          // times row
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "08:30 AM",
                                style: TextStyle(
                                  fontSize: 13.9,
                                  fontWeight: FontWeight.w300,
                                  color: AppColors.textPrimary,
                                ),
                              ),
                              Text('-------'),
                              Text(
                                "20h 20m",
                                style: TextStyle(
                                  fontSize: 13.9,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.primaryBlue,
                                ),
                              ),
                              Text('-------'),

                              Text(
                                "4:00 PM",
                                style: TextStyle(
                                  fontSize: 13.9,
                                  fontWeight: FontWeight.w300,
                                  color: AppColors.textPrimary,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          const Text(
                            "May 1, 2025 • Monday",
                            style: TextStyle(
                              fontSize: 13.9,
                              fontWeight: FontWeight.w300,
                              color: AppColors.textPrimary,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.fadegreen,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Text(
                              "Confirmed",
                              style: TextStyle(
                                color: AppColors.success,
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 18),

              // ---------- PICKUP & DROPOFF (ticket-shaped) ----------
              Container(
                height: 330,
                width: 392,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: PhysicalShape(
                        color: Colors.white,
                        elevation: 6,
                        shadowColor: Colors.black.withOpacity(0.06),
                        clipper: TicketClipper(
                          notchRadius: 14,
                          borderRadius: 16,
                        ),
                        child: Container(
                          height: 292,
                          width: 392,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 18,
                            vertical: 16,
                          ),
                          child: Column(
                            children: [
                              Spacewidgetheight(space: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // pickup
                                  Column(
                                    children: const [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.my_location,
                                            color: Colors.grey,
                                            size: 18,
                                          ),
                                          SizedBox(width: 8),
                                          Text(
                                            "Pickup Point:",
                                            style: TextStyle(
                                              fontSize: 10,
                                              color: AppColors.textSecondary,
                                            ),
                                          ),
                                        ],
                                      ),

                                      const SizedBox(height: 6),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 26),
                                        child: Text(
                                          "Shoprite Ikeja Mall",
                                          style: TextStyle(
                                            color: AppColors.textPrimary,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),

                                  const SizedBox(width: 12),
                                  // drop-off
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            color: Colors.grey,
                                            size: 15,
                                          ),
                                          SizedBox(width: 8),
                                          Text(
                                            "Drop-Off:",
                                            style: TextStyle(
                                              fontSize: 10,
                                              color: AppColors.textSecondary,
                                            ),
                                          ),
                                        ],
                                      ),

                                      const SizedBox(height: 6),
                                      Text(
                                        "Admiralty Way,",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: AppColors.textPrimary,
                                        ),
                                      ),
                                      Text(
                                        "Lekki Phase 1",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: AppColors.textPrimary,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 14),
                              // token
                              Center(
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: AppColors.fadeblue,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Passenger Token: PS-2120",
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: AppColors.primaryBlue,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 6),
                                    Text(
                                      "Share this code with your driver to confirm identity.",
                                      style: TextStyle(
                                        color: AppColors.textSecondary,
                                        fontSize: 12,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    // ---------- QR CODE ----------
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 10,
                      child: Center(
                        child: Container(
                          height: 132,
                          width: 135,
                          decoration: BoxDecoration(
                            color: AppColors.backgroundLight,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Image.asset(
                            height: 92,
                            width: 92,
                            fit: BoxFit.cover,
                            Appimage.qrcode,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 18),

              const SizedBox(height: 22),

              // ---------- BOTTOM ACTIONS ----------
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Custombuttom(tittle: 'Download Ticket', width: 150),
                    const SizedBox(width: 12),
                    const Text(
                      "Go to dashboard",
                      style: TextStyle(
                        color: AppColors.primaryBlue,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 28),
            ],
          ),
        ),
      ),
    );
  }
}

/// TicketClipper draws a rounded rectangle with inward semicircular notches
/// centered vertically on the left and right edges.
///
/// notchRadius controls the size of the semicircular cutout. borderRadius
/// controls the corner roundness.
class TicketClipper extends CustomClipper<Path> {
  final double notchRadius;
  final double borderRadius;

  TicketClipper({this.notchRadius = 12.0, this.borderRadius = 14.0});

  @override
  Path getClip(Size size) {
    final Path path = Path();

    final double w = size.width;
    final double h = size.height;
    final double r = borderRadius.clamp(0.0, h / 2);
    final double n = notchRadius.clamp(0.0, h / 3);
    final double cy = h / 2;

    // Start at top-left corner (after rounding)
    path.moveTo(r, 0);

    // top edge to top-right corner
    path.lineTo(w - r, 0);
    path.quadraticBezierTo(w, 0, w, r);

    // right edge down to just above notch
    path.lineTo(w, cy - n);

    // arc for inward right notch (concave semicircle)
    // arcToPoint draws an arc between two points; using clockwise: false produces a concave arc here
    path.arcToPoint(
      Offset(w, cy + n),
      radius: Radius.circular(n),
      clockwise: false,
    );

    // continue right edge down to bottom-right corner
    path.lineTo(w, h - r);
    path.quadraticBezierTo(w, h, w - r, h);

    // bottom edge to bottom-left corner
    path.lineTo(r, h);
    path.quadraticBezierTo(0, h, 0, h - r);

    // left edge up to just below notch
    path.lineTo(0, cy + n);

    // arc for inward left notch (concave semicircle)
    path.arcToPoint(
      Offset(0, cy - n),
      radius: Radius.circular(n),
      clockwise: false,
    );

    // continue left edge up to top-left corner
    path.lineTo(0, r);
    path.quadraticBezierTo(0, 0, r, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant TicketClipper oldClipper) =>
      oldClipper.notchRadius != notchRadius ||
      oldClipper.borderRadius != borderRadius;
}
