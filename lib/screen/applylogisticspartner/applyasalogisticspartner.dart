import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/screen/nav/bottom_nav.dart';
import 'package:rideshareapp/theme/app_theme.dart';
import 'package:rideshareapp/widget/bottomnav.dart';
import 'package:rideshareapp/widget/custombuttom.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class Applyasalogisticspartner extends StatefulWidget {
  const Applyasalogisticspartner({Key? key}) : super(key: key);

  @override
  State<Applyasalogisticspartner> createState() =>
      _ApplyasalogisticspartnerState();
}

class _ApplyasalogisticspartnerState extends State<Applyasalogisticspartner> {
  // controllers
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final TextEditingController deliveryAreaController = TextEditingController();
  final TextEditingController bankDetailsController = TextEditingController();

  String? vehicleOwnership = 'Yes';
  String? selectedAvailability;
  bool agreeToTerms = false;

  final List<String> availabilityOptions = [
    "Full Time",
    "Part Time",
    "Weekends Only",
  ];

  @override
  Widget build(BuildContext context) {
    // subtle background gradient to match the screenshot
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFF7F9FC), Color(0xFFFFFFFF)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // top bar (simple)
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
                const SizedBox(height: 20),

                // Banner (simple white card)
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        // placeholder icon; replace with your asset if you want
                        Appimage.delivery,

                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Become a Logistics Partner",
                            style: AppThemes.bodySmall.copyWith(
                              fontWeight: FontWeight.w800,
                              color: AppColors.textPrimary,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Earn more by delivering packages on SwiftRides",
                            style: AppThemes.bodySmall.copyWith(
                              fontWeight: FontWeight.w200,
                              color: AppColors.textSecondary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 18),
                Divider(color: AppColors.primaryBlue, thickness: 2),
                const SizedBox(height: 18),

                // Personal Info header (kept for context)
                Text(
                  "Personal Information",
                  style: AppThemes.bodySmall.copyWith(
                    fontWeight: FontWeight.w700,
                    color: AppColors.textPrimary,
                  ),
                ),
                const SizedBox(height: 12),

                _buildInputField(
                  "Full Name",
                  "Enter your full name",
                  fullNameController,
                ),
                const SizedBox(height: 12),
                _buildInputField(
                  "Phone Number",
                  "+234 xxx xxxx",
                  phoneController,
                  keyboardType: TextInputType.phone,
                ),
                const SizedBox(height: 12),
                _buildInputField(
                  "Email Address",
                  "your@email.com",
                  emailController,
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 12),
                _buildInputField(
                  "Location",
                  "Lagos, Nigeria",
                  locationController,
                ),
                const SizedBox(height: 22),

                // Vehicle Information header
                Text(
                  "Vehicle Information",
                  style: AppThemes.bodySmall.copyWith(
                    fontWeight: FontWeight.w800,
                    fontSize: 18,
                    color: AppColors.textPrimary,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  "Do you own a vehicle? *",
                  style: AppThemes.bodySmall.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: AppColors.textPrimary,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    _buildRadioOption("Yes"),
                    const SizedBox(width: 20),
                    _buildRadioOption("No"),
                  ],
                ),
                const SizedBox(height: 18),

                // Documents label
                Text(
                  "Documents",
                  style: AppThemes.bodySmall.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: AppColors.textPrimary,
                  ),
                ),
                const SizedBox(height: 10),

                // Upload buttons (dashed)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: DashedRoundedBox(
                        radius: 12,
                        child: SizedBox(
                          height: 29,
                          width: 250,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage(Appimage.solarcameralinear),
                              ),
                              const SizedBox(width: 5),
                              Text(
                                "Upload Vehicle Documents",
                                style: AppThemes.bodySmall.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: AppColors.textPrimary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Center(
                      child: DashedRoundedBox(
                        radius: 12,
                        child: SizedBox(
                          height: 29,
                          width: 250,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage(Appimage.solarcameralinear),
                              ),
                              const SizedBox(width: 10),
                              Text(
                                "Upload Government ID",
                                style: AppThemes.bodySmall.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: AppColors.textPrimary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 28),

                // Work Preferences header
                Text(
                  "Work Preferences",
                  style: AppThemes.bodySmall.copyWith(
                    fontWeight: FontWeight.w800,
                    fontSize: 18,
                    color: AppColors.textPrimary,
                  ),
                ),
                const SizedBox(height: 16),

                // Availability label + dropdown (pill)
                const Text(
                  "Availability",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.borderLight),
                    color: const Color(0xFFF6F8FB),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.03),
                        blurRadius: 6,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: DropdownButtonFormField<String>(
                    hint: Text(
                      "Select Availability",
                      style: AppThemes.bodySmall.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    value: selectedAvailability,
                    onChanged: (v) => setState(() => selectedAvailability = v),
                    decoration: const InputDecoration(border: InputBorder.none),
                    items:
                        availabilityOptions
                            .map(
                              (e) => DropdownMenuItem(
                                value: e,
                                child: Text(
                                  e,
                                  style: AppThemes.bodySmall.copyWith(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: AppColors.textPrimary,
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                  ),
                ),
                const SizedBox(height: 16),

                // Preferred Delivery Areas (large multi-line)
                const Text(
                  "Preferred Delivery Areas",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 8),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFF6F8FB),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.03),
                        blurRadius: 6,
                        offset: const Offset(0, 6),
                      ),
                    ],
                  ),
                  child: TextField(
                    controller: deliveryAreaController,
                    maxLines: 4,
                    decoration: InputDecoration(
                      hintText: "e.g., Victoria Island, Ikoyi",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.borderLight),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hintStyle: AppThemes.bodySmall.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: AppColors.textSecondary,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 14,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // Bank Account Details (small pill)
                _buildInputField(
                  "Bank Account Details ",
                  "Account number - Bank name",
                  locationController,
                ),
                const SizedBox(height: 16),

                // Terms checkbox
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 22,
                      width: 22,
                      child: Checkbox(
                        value: agreeToTerms,
                        activeColor: const Color(0xFF0057FF),
                        onChanged:
                            (v) => setState(() => agreeToTerms = v ?? false),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        "I agree to the Terms & Conditions and Privacy Policy for Logistics Partners",
                        style: const TextStyle(
                          fontSize: 13,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 22),

                // Submit button
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        _showpackagedelivereddialogu();
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Appcolor.gradientblue,
                              Appcolor.gradientorang,
                            ],
                          ),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        height: 50,
                        alignment: Alignment.center,
                        width: 200,
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            children: [
                              Text(
                                'Submit Application',
                                style: TextStyle(color: Colors.white),
                              ),

                              Spacewidgetwidth(space: 10),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: AppColors.textWhite,
                                size: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavWidget(),
    );
  }

  _showpackagedelivereddialogu() {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          backgroundColor: Colors.white,
          child: Container(
            height: h * 0.58,
            width: w.toDouble(),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        backgroundColor: Color.fromRGBO(18, 18, 29, 0.05),
                        child: Image(image: AssetImage(Appimage.close)),
                      ),
                    ],
                  ),
                  Image(image: AssetImage(Appimage.good)),
                  Text(
                    'Application Submitted!',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w700,
                      fontSize: 23.48,
                    ),
                  ),
                  Spacewidgetheight(space: 20),
                  Text(
                    'Your application to become a Logistics Partner has been received. Our team will review and get back to you within 24–48 hours.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.44,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  Text(
                    "We'll contact you via:",
                    style: TextStyle(
                      fontSize: 12,
                      color: AppColors.textSecondary,
                    ),
                  ),
                  Spacewidgetheight(space: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.email,
                        size: 16,
                        color: AppColors.textSecondary,
                      ),
                      Spacewidgetwidth(space: 3),
                      Text(
                        "Email",
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColors.textSecondary,
                        ),
                      ),
                      Icon(
                        Icons.call,
                        size: 16,
                        color: AppColors.textSecondary,
                      ),
                      Spacewidgetwidth(space: 3),
                      Text(
                        "Call",
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColors.textSecondary,
                        ),
                      ),
                    ],
                  ),
                  Spacewidgetheight(space: 20),

                  Custombuttom(
                    tap: () {
                      Get.offAll(MainDashboard());
                    },
                    tittle: 'Continue to Dashboard',
                    fontsize: 16,
                    width: 214,
                    height: 48,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  // small helper for labeled fields
  Widget _buildInputField(
    String label,
    String hint,
    TextEditingController controller, {
    TextInputType keyboardType = TextInputType.text,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppThemes.bodySmall.copyWith(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: AppColors.textPrimary,
          ),
        ),
        const SizedBox(height: 6),
        Container(
          decoration: BoxDecoration(
            color: const Color(0xFFF6F8FB),
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.02),
                blurRadius: 6,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: TextField(
            keyboardType: keyboardType,
            controller: controller,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.borderLight),
                borderRadius: BorderRadius.circular(20),
              ),
              hintText: hint,
              hintStyle: AppThemes.bodySmall.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 11,
                color: AppColors.textSecondary,
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 12,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }

  // radio option helper
  Widget _buildRadioOption(String value) {
    return Row(
      children: [
        Radio<String>(
          value: value,
          groupValue: vehicleOwnership,
          activeColor: const Color(0xFF0057FF),
          onChanged: (v) => setState(() => vehicleOwnership = v),
        ),
        Text(value, style: const TextStyle(fontSize: 14)),
      ],
    );
  }
}

/// A widget that draws a dashed rounded border around its child.
/// It sizes itself to the child's size. No external package required.
class DashedRoundedBox extends StatelessWidget {
  final Widget child;
  final double strokeWidth;
  final double dashLength;
  final double dashGap;
  final double radius;
  final Color color;
  final EdgeInsets padding;

  const DashedRoundedBox({
    Key? key,
    required this.child,
    this.strokeWidth = 1.3,
    this.dashLength = 6,
    this.dashGap = 6,
    this.radius = 12,
    this.color = Colors.grey,
    this.padding = const EdgeInsets.all(6),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Wrap the child so CustomPaint can take child's size
    return CustomPaint(
      painter: _DashedRRectPainter(
        strokeWidth: strokeWidth,
        dashLength: dashLength,
        dashGap: dashGap,
        radius: radius,
        color: color,
      ),
      child: Padding(padding: padding, child: child),
    );
  }
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

class _DashedRRectPainter extends CustomPainter {
  final double strokeWidth;
  final double dashLength;
  final double dashGap;
  final double radius;
  final Color color;

  _DashedRRectPainter({
    required this.strokeWidth,
    required this.dashLength,
    required this.dashGap,
    required this.radius,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;
    final rrect = RRect.fromRectAndRadius(rect, Radius.circular(radius));
    final path = Path()..addRRect(rrect);

    final paint =
        Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = strokeWidth
          ..color = color.withOpacity(0.6)
          ..strokeCap = StrokeCap.round;

    // draw dashed path
    for (final metric in path.computeMetrics()) {
      double distance = 0.0;
      while (distance < metric.length) {
        final double next = distance + dashLength;
        final Path extracted = metric.extractPath(
          distance,
          next.clamp(0.0, metric.length),
        );
        canvas.drawPath(extracted, paint);
        distance += dashLength + dashGap;
      }
    }
  }

  @override
  bool shouldRepaint(covariant _DashedRRectPainter oldDelegate) =>
      oldDelegate.strokeWidth != strokeWidth ||
      oldDelegate.dashLength != dashLength ||
      oldDelegate.dashGap != dashGap ||
      oldDelegate.radius != radius ||
      oldDelegate.color != color;
}
