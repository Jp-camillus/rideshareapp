import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/theme/app_theme.dart';
import 'package:rideshareapp/widget/bottomnav.dart';
import 'package:rideshareapp/widget/custombuttom.dart';

class Rateyourdriver extends StatefulWidget {
  const Rateyourdriver({Key? key}) : super(key: key);

  @override
  State<Rateyourdriver> createState() => _RateyourdriverState();
}

class _RateyourdriverState extends State<Rateyourdriver> {
  int selectedStars = 0;
  bool recommendDriver = false;
  final TextEditingController feedbackController = TextEditingController();

  final List<String> tags = ['Punctual', 'Eco-friendly driver', 'Polite'];
  final Set<String> selectedTags = {};

  Future<void> _showAddTagDialog() async {
    final ctrl = TextEditingController();
    final result = await showDialog<String>(
      context: context,
      builder:
          (ctx) => AlertDialog(
            title: const Text('Add new tag'),
            content: TextField(
              controller: ctrl,
              autofocus: true,
              decoration: const InputDecoration(
                hintText: 'e.g., Clean vehicle',
              ),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(ctx).pop(),
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () {
                  final txt = ctrl.text.trim();
                  if (txt.isNotEmpty) Navigator.of(ctx).pop(txt);
                },
                child: const Text('Add'),
              ),
            ],
          ),
    );

    if (result != null && result.isNotEmpty) {
      setState(() {
        tags.add(result);
        selectedTags.add(result);
      });
    }
  }

  Widget _star(int i) {
    final filled = i < selectedStars;
    return IconButton(
      onPressed: () => setState(() => selectedStars = i + 1),
      icon: Icon(
        filled ? Icons.star : Icons.star_border,
        size: 25,
        color: Colors.orange.shade700,
      ),
      splashRadius: 22,
    );
  }

  Widget _chip(String t) {
    final sel = selectedTags.contains(t);
    return GestureDetector(
      onTap:
          () => setState(
            () => sel ? selectedTags.remove(t) : selectedTags.add(t),
          ),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 160),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        decoration: BoxDecoration(
          border: Border.all(
            color: sel ? AppColors.primaryBlue : AppColors.borderLight,
          ),
        ),
        child: Text(
          t,
          style: TextStyle(
            color: sel ? AppColors.primaryBlue : AppColors.textPrimary,
            fontSize: 10,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    feedbackController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Tunable values for exact placement
    const double headerHeight = 220;
    const double dipHeight = 70; // how deep the center dip is
    const double avatarInnerRadius = 40; // radius of the actual image circle
    const double outerWhitePadding = 3; // white ring thickness
    const double innerBlueBorder = 1; // blue ring thickness

    // compute total avatar visual radius (for spacing)
    final double avatarTotalRadius =
        avatarInnerRadius + outerWhitePadding + innerBlueBorder;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              // page column: header clip + content below
              Column(
                children: [
                  // Curved header (full width)
                  Positioned(
                    child: Center(
                      child: Opacity(
                        opacity: 0.09,
                        child: Image.asset(
                          fit: BoxFit.cover,
                          Appimage.carandmap,
                        ),
                      ),
                    ),
                  ),

                  // spacing to allow avatar overlap and then content

                  // Name + subtitle
                  Container(
                    width: 440.09765625,
                    height: 533.291015625,
                    decoration: BoxDecoration(
                      color: AppColors.textWhite,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(28),
                        topRight: Radius.circular(28),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: avatarTotalRadius + 12),

                        Center(
                          child: Text(
                            'Chinedu O.',
                            style: AppThemes.titleMedium.copyWith(
                              color: AppColors.textPrimary,
                            ),
                          ),
                        ),
                        const SizedBox(height: 6),

                        // prompt
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 28.0),
                          child: Text(
                            'How was your trip with Chinedu?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black87,
                            ),
                          ),
                        ),

                        const SizedBox(height: 12),

                        // stars
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(5, (i) => _star(i)),
                        ),

                        const SizedBox(height: 12),

                        // compact checkbox + label
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Checkbox(
                              value: recommendDriver,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                              activeColor: AppColors.primaryBlue,
                              onChanged:
                                  (v) => setState(
                                    () => recommendDriver = v ?? false,
                                  ),
                            ),
                            const SizedBox(width: 1),
                            Text(
                              'I recommend this driver to my friends',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.textPrimary,
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 16),

                        // tags
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'What stood out most?',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.textPrimary,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: Wrap(
                            spacing: 10,
                            runSpacing: 10,
                            children: [
                              ...tags.map((t) => _chip(t)).toList(),
                              GestureDetector(
                                onTap: _showAddTagDialog,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 14,
                                    vertical: 8,
                                  ),
                                  decoration: BoxDecoration(),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: const [
                                      Text(
                                        'Add New',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: AppColors.colorBlue,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 16),

                        // comment box
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: TextField(
                              controller: feedbackController,
                              maxLines: 3,
                              decoration: const InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: AppColors.primaryBlue,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: AppColors.borderLight,
                                  ),
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 14,
                                  vertical: 12,
                                ),
                                hintText: 'write here..',
                                hintStyle: TextStyle(
                                  fontSize: 11,
                                  color: AppColors.textSecondary,
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 18),

                        // submit gradient
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: SizedBox(
                            width: double.infinity,
                            child: Custombuttom(
                              tittle: 'Submit Feedback',
                              width: 300,
                            ),
                          ),
                        ),

                        const SizedBox(height: 30),
                      ],
                    ),
                  ),
                ],
              ),

              // Top-left back button on header
              Positioned(
                top: 12,
                left: 8,
                child: Row(
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
              ),

              // Avatar positioned to sit in the dip
              SizedBox(
                height: 400,
                width: 500,
                child: Positioned(
                  // slight nudge
                  left: 0,
                  right: 0,
                  bottom: 1,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(outerWhitePadding),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.18),
                            blurRadius: 10,
                            offset: Offset(0, 6),
                          ),
                        ],
                      ),
                      child: Container(
                        padding: EdgeInsets.all(innerBlueBorder),
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: CircleAvatar(
                          radius: avatarInnerRadius,
                          backgroundImage: AssetImage(Appimage.manj),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavWidget(),
    );
  }
}

/// Clipper that creates a wide curved header with a central dip (so avatar can sit inside it)
class DipHeaderClipper extends CustomClipper<Path> {
  final double dipHeight;

  DipHeaderClipper({this.dipHeight = 70});

  @override
  Path getClip(Size size) {
    final w = size.width;
    final h = size.height;
    final d = dipHeight.clamp(0.0, h * 0.9);

    final Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, h - d);

    // left -> center curve down then up to create central dip
    path.quadraticBezierTo(w * 0.25, h + d * 0.2, w * 0.5, h - d);
    path.quadraticBezierTo(w * 0.75, h - d * 2.2, w, h - d);

    path.lineTo(w, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant DipHeaderClipper oldClipper) =>
      oldClipper.dipHeight != dipHeight;
}
