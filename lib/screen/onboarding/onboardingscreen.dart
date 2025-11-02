import 'package:flutter/material.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/route/app_routes.dart';
import 'package:rideshareapp/theme/app_theme.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int currentPage = 0;

  final List<Map<String, dynamic>> pages = [
    {
      "title1": "Find Trusted ",
      "title1 textstyle": AppThemes.titleLarge.copyWith(
        fontSize: 32,
        fontWeight: FontWeight.w700,
        color: AppColors.textPrimary,
      ),
      "highlight": "Rides",
      "highlight textstyle": AppThemes.titleLarge.copyWith(
        fontSize: 32,
        fontWeight: FontWeight.w700,
        color: AppColors.colorBlue,
      ),
      "title2": "",
      "title2 textstyle": AppThemes.titleLarge.copyWith(
        fontSize: 32,
        fontWeight: FontWeight.w700,
        color: AppColors.textPrimary,
      ),
      "desc": "Travel affordably and safely with verified drivers.",
      "image1": Appimage.s1,
      "image2": Appimage.s2,
    },
    {
      "title1": "Post or",
      "title1 textstyle": AppThemes.titleLarge.copyWith(
        fontSize: 32,
        fontWeight: FontWeight.w700,
        color: AppColors.textPrimary,
      ),
      "highlight": "Join a",
      "highlight textstyle": AppThemes.titleLarge.copyWith(
        fontSize: 32,
        fontWeight: FontWeight.w700,
        color: AppColors.textPrimary,
      ),
      "title2": " Trip",
      "title2 textstyle": AppThemes.titleLarge.copyWith(
        fontSize: 32,
        fontWeight: FontWeight.w700,
        color: AppColors.colorBlue,
      ),
      "desc": "Join a trip as a passenger, or post your route as a driver.",
      "image1": Appimage.s3,
      "image2": Appimage.s4,
    },
    {
      "title1": "Verified. ",
      "title1 textstyle": AppThemes.titleLarge.copyWith(
        fontSize: 32,
        fontWeight: FontWeight.w700,
        color: AppColors.colorBlue,
      ),
      "highlight": "Reliable. ",
      "highlight textstyle": AppThemes.titleLarge.copyWith(
        fontSize: 32,
        fontWeight: FontWeight.w700,
        color: AppColors.textPrimary,
      ),
      "title2": "Safe.",
      "title2 textstyle": AppThemes.titleLarge.copyWith(
        fontSize: 32,
        fontWeight: FontWeight.w700,
        color: AppColors.textPrimary,
      ),
      "desc":
          "All users are verified with ID and phone number for extra safety.",
      "image1": Appimage.s5,
      "image2": Appimage.s6,
    },
  ];

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Logo
            const SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: const [Image(image: AssetImage(Appimage.swiftRides))],
              ),
            ),

            const SizedBox(height: 10),

            // PageView
            Expanded(
              child: PageView.builder(
                controller: _controller,
                onPageChanged: (index) {
                  setState(() {
                    currentPage = index;
                  });
                },
                itemCount: pages.length,
                itemBuilder: (context, index) {
                  final data = pages[index];

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Top images
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: w * 0.47,
                            height: h * 0.5,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(data["image1"]!),
                              ),
                            ),
                          ),
                          Container(
                            width: w * 0.47,
                            height: h * 0.5,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(data["image2"]!),
                              ),
                            ),
                          ),
                        ],
                      ),

                      // Titles
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,

                              children: [
                                if (index == 2) Spacewidgetheight(space: 12),
                                Text(
                                  data["title1"],
                                  style: data['title1 textstyle'],
                                ),
                                if (index == 2)
                                  Image(image: AssetImage(Appimage.arrow)),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                if (index == 0) Spacewidgetheight(space: 2),

                                Text(
                                  data["highlight"],
                                  style: data['highlight textstyle'],
                                ),
                                if (index == 0)
                                  Image(
                                    width: 60,
                                    fit: BoxFit.contain,
                                    image: AssetImage(Appimage.arrow),
                                  ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,

                              children: [
                                if (index == 1) Spacewidgetheight(space: 7),

                                Text(
                                  data["title2"],
                                  style: data['title2 textstyle'],
                                ),
                                if (index == 1)
                                  Image(
                                    width: 60,
                                    image: AssetImage(Appimage.arrow),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      // ✅ Only show "Across Nigeria" on 2nd page
                      if (index == 0)
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Text(
                            "Across Nigeria",
                            style: AppThemes.titleLarge.copyWith(
                              fontSize: 32,
                              fontWeight: FontWeight.w700,
                              color: AppColors.textPrimary,
                            ),
                          ),
                        ),

                      const SizedBox(height: 8),

                      // Description
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Text(
                          data["desc"]!,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            fontSize: 16,
                            color: AppColors.textSecondary,
                            height: 1.5,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),

            const SizedBox(height: 5),

            // Dots indicator
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: List.generate(
                  pages.length,
                  (index) => AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    margin: const EdgeInsets.only(right: 6),
                    height: 8,
                    width: currentPage == index ? 18 : 8,
                    decoration: BoxDecoration(
                      color:
                          currentPage == index
                              ? AppColors.primaryOrange
                              : Colors.grey.shade300,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10),

            // Bottom controls
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    if (currentPage == 2) {
                      _controller.previousPage(
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeInOut,
                      );
                    } else {
                      _controller.animateToPage(
                        2,
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                  child: Text(
                    currentPage == 2 ? "Go back" : "Skip",
                    style: const TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    if (currentPage == 2) {
                      Navigator.pushReplacementNamed(
                        context,
                        AppRoutes.welcomescreensignup,
                      );
                    } else {
                      _controller.nextPage(
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                  child: Container(
                    height: currentPage == 2 ? 56 : 80,
                    width: currentPage == 2 ? 164 : 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      gradient: const LinearGradient(
                        colors: [Color(0xFF0047FF), Color(0xFFFF6A00)],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                    child: Center(
                      child:
                          currentPage == 2
                              ? Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Get Started",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Spacewidgetwidth(space: 5),
                                  const Icon(
                                    size: 15,
                                    Icons.arrow_forward_ios,
                                    color: Colors.white,
                                  ),
                                ],
                              )
                              : const Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
