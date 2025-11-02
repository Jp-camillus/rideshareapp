import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/widget/bottomnav.dart';
import 'package:rideshareapp/widget/custombuttom.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<Map<String, dynamic>> notifications = [
    {
      'type': 'trip',
      'title': 'Trip Confirmed',
      'message':
          'Your ride from Lagos to Ibadan at 8:00 AM on Apr 30 is confirmed.',
      'time': '10 mins ago',
      'color': const Color(0xFFEAF4FF),
      'iconColor': const Color(0xFF2D8EFF),
      'image': Appimage.bluenotif,
    },
    {
      'type': 'trip',
      'title': 'Trip Cancelled',
      'message': 'Driver Aisha Bello has cancelled the trip.',
      'time': '1 hr ago',
      'color': const Color(0xFFFFEDED),
      'iconColor': Colors.redAccent,
      'image': Appimage.rednotif,
    },
    {
      'type': 'system',
      'title': 'Payment Successful',
      'message': '₦3,500 has been paid for your booking to Ibadan.',
      'time': '1 hr ago',
      'color': const Color(0xFFE9FCE9),
      'iconColor': Colors.green,
      'image': Appimage.greenwallet,
    },
    {
      'type': 'promotion',
      'title': 'Aisha Bello',
      'message': 'Hi, I’m already at Jibowu Terminal.',
      'time': '1 hr ago',
      'color': const Color(0xFFEAF4FF),
      'iconColor': const Color(0xFF2D8EFF),
      'reply': true,
      'image': Appimage.bluechat,
    },
    {
      'type': 'Promotion',
      'title': 'Promo Offer',
      'message': 'Get ₦1,000 off your next ride! Use code: WELCOME1000',
      'time': 'Yesterday',
      'color': AppColors.backgroundLight,
      'iconColor': Colors.green,
      'image': Appimage.notificatcionmicrophone,
    },
  ];

  final List<Map<String, dynamic>> notificationstrip = [
    {
      'type': 'promotion',
      'title': 'Aisha Bello',
      'message': 'Hi, I’m already at Jibowu Terminal.',
      'time': '1 hr ago',
      'color': const Color(0xFFEAF4FF),
      'iconColor': const Color(0xFF2D8EFF),
      'reply': true,
      'image': Appimage.bluechat,
    },
    {
      'type': 'trip',
      'title': 'Trip Cancelled',
      'message': 'Driver Aisha Bello has cancelled the trip.',
      'time': '1 hr ago',
      'color': const Color(0xFFFFEDED),
      'iconColor': Colors.redAccent,
      'image': Appimage.rednotif,
    },
  ];
  static const Color tabActive = Color(0xFF2563EB);
  static const Color subtleGray = Color(0xFF9CA3AF);

  final tabs = ['All', 'Trips', 'System', 'Promotion'];
  int selectedTab = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F7FB),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                  // Title (left-aligned)
                  const Text(
                    'Payment History',
                    style: TextStyle(
                      color: AppColors.textPrimary,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  // Small gap, then expand middle to push search to the right
                  const SizedBox(width: 8),
                  const Spacer(),

                  // SEARCH field placed on same line to the right; width tuned to screenshot
                  Container(
                    height: 40,
                    width:
                        200, // adjust width to match your screenshot proportion
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.borderLight),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Image(image: AssetImage(Appimage.searchgrey)),
                          const SizedBox(width: 8),
                          Expanded(
                            child: TextField(
                              style: const TextStyle(
                                color: AppColors.textSecondary,
                                fontSize: 14,
                              ),
                              decoration: const InputDecoration(
                                hintText: 'Search',
                                hintStyle: TextStyle(
                                  color: Color(0xFFB0B4C0),
                                  fontSize: 14,
                                ),
                                border: InputBorder.none,
                                isDense: true,
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: 10,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 12),
              Spacewidgetheight(space: 20),

              // Tabs (rounded white container)
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                decoration: BoxDecoration(
                  color: AppColors.backgroundLight,
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.02),
                      blurRadius: 6,
                      offset: const Offset(0, 9),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(tabs.length, (i) {
                    final active = i == selectedTab;
                    return GestureDetector(
                      onTap: () => setState(() => selectedTab = i),
                      child: SizedBox(
                        width:
                            (MediaQuery.of(context).size.width - 18 * 2 - 16) /
                            tabs.length,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              tabs[i],
                              style: TextStyle(
                                color: active ? tabActive : subtleGray,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            AnimatedContainer(
                              duration: const Duration(milliseconds: 150),
                              height: 3,
                              width: active ? 26 : 0,
                              decoration: BoxDecoration(
                                color: tabActive,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
              // ------------------ Notifications List ------------------\
              Spacewidgetheight(space: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Icon(Icons.more_horiz)],
              ),
              Spacewidgetheight(space: 20),
              if (selectedTab == 0)
                Expanded(
                  child: ListView.builder(
                    itemCount: notifications.length,
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) {
                      final item = notifications[index];
                      return _buildNotificationCard(item);
                    },
                  ),
                ),
              if (selectedTab == 1)
                Expanded(
                  child: ListView.builder(
                    itemCount: notificationstrip.length,
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) {
                      final item = notificationstrip[index];
                      return _buildNotificationCard2(item);
                    },
                  ),
                ),
              if (selectedTab == 2)
                Expanded(
                  child: ListView.builder(
                    itemCount: 1,
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) {
                      final item = notifications[2];
                      return _buildNotificationCard(item);
                    },
                  ),
                ),
              if (selectedTab == 3)
                Expanded(
                  child: ListView.builder(
                    itemCount: 1,
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) {
                      final item = notifications[4];
                      return _buildNotificationCard(item);
                    },
                  ),
                ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavWidget(),
    );
  }

  Widget _buildNotificationCard(Map<String, dynamic> item) {
    return Container(
      // height: 106.01790618896484,
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.borderLight),
        color: item['color'] as Color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image(image: AssetImage(item['image'])),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  item['title'],
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    color: AppColors.textPrimary,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            item['message'],
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: AppColors.textPrimary,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image(image: AssetImage(Appimage.clock)),
                  Spacewidgetwidth(space: 5),
                  Text(
                    item['time'],
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 8,
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
              if (item['reply'] == true)
                InkWell(
                  borderRadius: BorderRadius.circular(20),
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: const Color(0xFF2D8EFF),
                        width: 1,
                      ),
                    ),
                    child: Text(
                      'Reply',
                      style: GoogleFonts.poppins(
                        color: const Color(0xFF2D8EFF),
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildNotificationCard2(Map<String, dynamic> item) {
    return Container(
      // height: 106.01790618896484,
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.borderLight),
        color: item['color'] as Color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image(image: AssetImage(item['image'])),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  item['title'],
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    color: AppColors.textPrimary,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            item['message'],
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: AppColors.textPrimary,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image(image: AssetImage(Appimage.clock)),
                  Spacewidgetwidth(space: 5),
                  Text(
                    item['time'],
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 8,
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
              Text(
                item['time'],
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 8,
                  color: AppColors.textSecondary,
                ),
              ),
              if (item['reply'] == true)
                Row(
                  children: [
                    Custombuttom(tittle: 'Reply', width: 88, height: 35),
                    Spacewidgetwidth(space: 5),
                    Text(
                      'Reject',
                      style: TextStyle(fontSize: 12.7, color: AppColors.error),
                    ),
                  ],
                ),
            ],
          ),
        ],
      ),
    );
  }
}
