import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/widget/custombuttom.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class DriverSubscriptionScreen extends StatelessWidget {
  const DriverSubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),

      body: SingleChildScrollView(
        child: Column(
          children: [
            // Top blue section
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFFE9F3FF), Color(0xFFF8FAFC)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                      ],
                    ),
                    Spacewidgetheight(space: 10),
                    const Text(
                      "Ready to Drive & Earn?",
                      style: TextStyle(
                        fontSize: 26.67,
                        fontWeight: FontWeight.w700,
                        color: AppColors.colorBlue,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'To start receiving passenger bookings freely with no charges , select a monthly driver plan.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.textSecondary,
                        fontSize: 14,
                        height: 1.4,
                      ),
                    ),
                    const SizedBox(height: 25),
                    Image.asset(
                      Appimage.marketcar,
                      height: 120,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(height: 25),
                    const Text(
                      "Pick the plan that fits your driving frequency and access needs.\n\nOnce activated, you'll receive ride requests directly based on your plan.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.textSecondary,
                        fontSize: 14,
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 30),

            // Driver Subscription Plans header
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Driver Subscription Plans",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: AppColors.colorBlue,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 6),
                  Text(
                    "Subscribe to start receiving passenger bookings and get platform benefits.",
                    textAlign: TextAlign.center,

                    style: TextStyle(
                      color: AppColors.textSecondary,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // Horizontal scroll of plan cards
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 24, right: 16),
              child: Row(
                children: const [
                  _PlanCard(
                    title: "Basic Plan",
                    price: "₦7,000",
                    gradientbody: [
                      Color.fromRGBO(223, 241, 255, 0),
                      Color.fromRGBO(223, 241, 255, 1),
                    ],
                    gradientBorder: [Color(0xFF80D0C7), Color(0xFF0093E9)],
                    buttonGradient: [Color(0xFF0093E9), Color(0xFF80D0C7)],
                    features: [
                      "30 Trips/Month",
                      "Standard Search Listing",
                      "Limited Requests",
                      "Email Support",
                      "Verified Badge",
                    ],
                  ),
                  SizedBox(width: 20),
                  _PlanCard(
                    title: "Pro Plan",
                    price: "₦12,500",
                    gradientbody: [
                      Color.fromRGBO(232, 255, 235, 0),
                      Color.fromRGBO(232, 255, 235, 1),
                    ],
                    gradientBorder: [Color(0xFFA1FFCE), Color(0xFFFAFFD1)],
                    buttonGradient: [Color(0xFF0BA05C), Color(0xFF6EE7B7)],
                    features: [
                      "40 Trips/Month",
                      "Priority Search Boost",
                      "Full Access",
                      "Email + Chat",
                      "Verified Pro",
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

class _PlanCard extends StatelessWidget {
  final String title;
  final String price;
  final List<Color> gradientBorder;
  final List<Color> gradientbody;
  final List<Color> buttonGradient;
  final List<String> features;

  const _PlanCard({
    required this.title,
    required this.price,
    required this.gradientBorder,
    required this.buttonGradient,
    required this.features,
    Key? key,
    required this.gradientbody,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // size chosen to match screenshot scale
    const double cardW = 207;
    const double cardH = 285;
    const double borderWidth = 2.2;
    return SizedBox(
      width: cardW,
      height: cardH,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // CustomPaint paints the rounded squircle gradient border
          CustomPaint(
            size: const Size(cardW, cardH),
            painter: _SquircleBorderPainter(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: gradientBorder,
              ),
              strokeWidth: borderWidth,
              shadowColor: Colors.black.withOpacity(0.06),
            ),
          ),

          // Inner content clipped to the inner squircle path
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.all(borderWidth),
              child: ClipPath(
                clipper: _SquircleClipper(),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      colors: gradientbody,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 18,
                      vertical: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Title
                        Text(
                          title,
                          style: TextStyle(
                            color:
                                title.contains("Pro")
                                    ? const Color(0xFF0BA05C)
                                    : const Color(0xFF0B63CC),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 12),
                        // Features
                        ...features.map((f) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 3),
                            child: Row(
                              children: [
                                Container(
                                  width: 22,
                                  height: 22,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFF1F5F9),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Icon(
                                    Icons.check,
                                    size: 14,
                                    color:
                                        title.contains("Pro")
                                            ? const Color(0xFF0BA05C)
                                            : const Color(0xFF0B63CC),
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    f,
                                    style: const TextStyle(
                                      fontSize: 13,
                                      color: Color(0xFF475569),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                        const Spacer(),
                        // CTA button
                        Custombuttom(
                          tittle: 'Selected ${title.split(' ')[0]} Plan',
                          width: 154,
                          height: 35,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

          // Floating price badge positioned slightly outside top-ri,juught
          Positioned(
            top: -12,
            right: 12,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.08),
                    blurRadius: 6,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Text(
                price,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color:
                      title.contains("Pro")
                          ? const Color(0xFF0BA05C)
                          : const Color(0xFF0B63CC),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Paints the outer gradient border in a smooth squircle path.
class _SquircleBorderPainter extends CustomPainter {
  final Gradient gradient;
  final double strokeWidth;
  final Color shadowColor;

  _SquircleBorderPainter({
    required this.gradient,
    this.strokeWidth = 2.0,
    required this.shadowColor,
  });

  Path _squirclePath(Rect r) {
    // We'll create a smooth path using cubicTo to emulate a squircle.
    // Radii tuned to match your screenshot: topLeft and bottomRight larger.
    final w = r.width;
    final h = r.height;
    final tl = 40.0; // top-left radius
    final tr = 20.0; // top-right
    final br = 40.0; // bottom-right
    final bl = 20.0; // bottom-left

    // Points
    final p0 = Offset(r.left + tl, r.top);
    final p1 = Offset(r.right - tr, r.top);
    final p2 = Offset(r.right, r.top + tr);
    final p3 = Offset(r.right, r.bottom - br);
    final p4 = Offset(r.right - br, r.bottom);
    final p5 = Offset(r.left + bl, r.bottom);
    final p6 = Offset(r.left, r.bottom - bl);
    final p7 = Offset(r.left, r.top + tl);

    final path = Path()..moveTo(p0.dx, p0.dy);

    // top edge
    path.lineTo(p1.dx, p1.dy);
    // top-right corner (smooth)
    path.cubicTo(
      r.right - tr * 0.3,
      r.top, // control 1
      r.right,
      r.top + tr * 0.3, // control 2
      p2.dx,
      p2.dy, // to
    );

    // right edge
    path.lineTo(p3.dx, p3.dy);
    // bottom-right corner
    path.cubicTo(
      r.right,
      r.bottom - br * 0.3,
      r.right - br * 0.3,
      r.bottom,
      p4.dx,
      p4.dy,
    );

    // bottom edge
    path.lineTo(p5.dx, p5.dy);
    // bottom-left corner
    path.cubicTo(
      r.left + bl * 0.3,
      r.bottom,
      r.left,
      r.bottom - bl * 0.3,
      p6.dx,
      p6.dy,
    );

    // left edge
    path.lineTo(p7.dx, p7.dy);
    // top-left corner
    path.cubicTo(
      r.left,
      r.top + tl * 0.3,
      r.left + tl * 0.3,
      r.top,
      p0.dx,
      p0.dy,
    );

    path.close();
    return path;
  }

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;
    final outer = _squirclePath(rect);

    // draw shadow by drawing path with blur using drawShadow
    canvas.drawShadow(outer, shadowColor, 6.0, true);

    // paint gradient stroke by stroking along path: draw a shader-painted stroke
    final paint =
        Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = strokeWidth
          ..shader = gradient.createShader(rect)
          ..isAntiAlias = true;

    canvas.drawPath(outer, paint);

    // Optionally draw faint inner glow (very subtle)
    final innerPaint =
        Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = strokeWidth / 2
          ..shader = gradient.createShader(
            Rect.fromLTWH(
              strokeWidth * 2,
              strokeWidth * 2,
              size.width - strokeWidth * 4,
              size.height - strokeWidth * 4,
            ),
          )
          ..color = Colors.white.withOpacity(0.12)
          ..isAntiAlias = true;

    canvas.drawPath(outer.shift(Offset(0.6, 0.6)), innerPaint);
  }

  @override
  bool shouldRepaint(covariant _SquircleBorderPainter oldDelegate) =>
      oldDelegate.gradient != gradient ||
      oldDelegate.strokeWidth != strokeWidth;
}

/// Clips child to the inner squircle path (almost same shape, inset)
class _SquircleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final rect = Offset.zero & size;
    // Create a path similar to painter but inset to account for border
    final inset = 0.0; // already accounted via Padding in parent
    final r = Rect.fromLTWH(
      rect.left + inset,
      rect.top + inset,
      rect.width - inset * 2,
      rect.height - inset * 2,
    );

    // Use same function as painter but with smaller radii
    final tl = 38.0;
    final tr = 20.0;
    final br = 38.0;
    final bl = 20.0;

    final p0 = Offset(r.left + tl, r.top);
    final p1 = Offset(r.right - tr, r.top);
    final p2 = Offset(r.right, r.top + tr);
    final p3 = Offset(r.right, r.bottom - br);
    final p4 = Offset(r.right - br, r.bottom);
    final p5 = Offset(r.left + bl, r.bottom);
    final p6 = Offset(r.left, r.bottom - bl);
    final p7 = Offset(r.left, r.top + tl);

    final path = Path()..moveTo(p0.dx, p0.dy);

    path.lineTo(p1.dx, p1.dy);
    path.cubicTo(
      r.right - tr * 0.3,
      r.top,
      r.right,
      r.top + tr * 0.3,
      p2.dx,
      p2.dy,
    );

    path.lineTo(p3.dx, p3.dy);
    path.cubicTo(
      r.right,
      r.bottom - br * 0.3,
      r.right - br * 0.3,
      r.bottom,
      p4.dx,
      p4.dy,
    );

    path.lineTo(p5.dx, p5.dy);
    path.cubicTo(
      r.left + bl * 0.3,
      r.bottom,
      r.left,
      r.bottom - bl * 0.3,
      p6.dx,
      p6.dy,
    );

    path.lineTo(p7.dx, p7.dy);
    path.cubicTo(
      r.left,
      r.top + tl * 0.3,
      r.left + tl * 0.3,
      r.top,
      p0.dx,
      p0.dy,
    );

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
