import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/screen/homescreen/tripdetails.dart';
import 'package:rideshareapp/screen/pasengeranddriversection/ongoingtripview.dart';
import 'package:rideshareapp/widget/custombuttom.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class Bookingandrequest extends StatefulWidget {
  const Bookingandrequest({super.key});

  @override
  State<Bookingandrequest> createState() => _BookingandrequestState();
}

class _BookingandrequestState extends State<Bookingandrequest>
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

  final tabs = ['Instant Booking', 'Pending Requests'];
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
          padding: const EdgeInsets.all(15),
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
                    'Bookings & Requests',
                    style: TextStyle(
                      color: AppColors.textPrimary,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  // Small gap, then expand middle to push search to the right
                  const SizedBox(width: 8),
                  const Spacer(),
                ],
              ),

              const SizedBox(height: 12),
              Spacewidgetheight(space: 20),

              // Tabs (rounded white container)
              Container(
                width: 280.2962341308594,
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                decoration: BoxDecoration(
                  color: AppColors.backgroundLight,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.02),
                      blurRadius: 6,
                      offset: const Offset(0, 9),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(tabs.length, (i) {
                      final active = i == selectedTab;
                      return GestureDetector(
                        onTap: () => setState(() => selectedTab = i),
                        child: SizedBox(
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
              ),
              // ------------------ Notifications List ------------------\
              Spacewidgetheight(space: 10),

              Spacewidgetheight(space: 20),
              if (selectedTab == 0)
                Expanded(
                  child: ListView.builder(
                    itemCount: 1,
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) {
                      final item = notifications[index];
                      return _buildPendingRequests1();
                    },
                  ),
                ),
              if (selectedTab == 1)
                Expanded(
                  child: ListView.builder(
                    itemCount: 1,
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) {
                      final item = notificationstrip[index];
                      return _buildPendingRequests();
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
    );
  }

  Widget _buildPendingRequests1() {
    return SingleChildScrollView(
      child: Column(
        children: [_buildUserRequestCard2(), const SizedBox(height: 16)],
      ),
    );
  }

  Widget _buildPendingRequests() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildUserRequestCard(),
          const SizedBox(height: 16),
          _buildTripSummaryCard(),
        ],
      ),
    );
  }

  Widget _buildUserRequestCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.08),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // --- User info row
          Row(
            children: [
              const CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage(Appimage.lady),
              ),
              const SizedBox(width: 10),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sarah O.",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: AppColors.primaryOrange,
                          size: 16,
                        ),
                        SizedBox(width: 4),
                        Text(
                          "4.2",
                          style: TextStyle(
                            color: AppColors.primaryOrange,

                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 4),
                        Text(
                          "· 85 Trips",
                          style: TextStyle(
                            color: AppColors.textSecondary,
                            fontSize: 11.77,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              _buildStatusTag("Pending"),
            ],
          ),

          const SizedBox(height: 16),
          const Divider(height: 1, color: Color(0xFFE9EBEE)),
          const SizedBox(height: 12),

          // --- Trip details
          const Row(
            children: [
              Image(
                height: 18,
                width: 18,
                fit: BoxFit.cover,
                image: AssetImage(Appimage.s),
              ),

              SizedBox(width: 6),
              Text("Ikeja"),
              SizedBox(width: 6),
              SizedBox(width: 12, child: Divider()),
              SizedBox(width: 6),

              Image(
                height: 18,
                width: 18,
                fit: BoxFit.cover,
                image: AssetImage(Appimage.location),
              ),

              SizedBox(width: 6),
              Text("Lekki"),
            ],
          ),
          const SizedBox(height: 6),
          const Row(
            children: [
              Image(
                height: 18,
                width: 18,
                fit: BoxFit.cover,
                image: AssetImage(Appimage.chair),
              ),
              SizedBox(width: 6),
              Text("Seats Booked: 2 Seats"),
            ],
          ),
          const SizedBox(height: 6),
          const Row(
            children: [
              Image(
                height: 18,
                width: 18,
                fit: BoxFit.cover,
                image: AssetImage(Appimage.calendar),
              ),
              SizedBox(width: 6),
              Text("Tuesday, April 30, 2025  •  8:00 AM"),
            ],
          ),

          const SizedBox(height: 14),

          // --- Buttons
          Row(
            children: [
              Custombuttom(tittle: 'Accept', width: 88, height: 51),
              const SizedBox(width: 10),
              const Text(
                "Reject",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w600,
                  fontSize: 12.7,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildUserRequestCard2() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.08),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // --- User info row
          Row(
            children: [
              const CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage(Appimage.lady),
              ),
              const SizedBox(width: 10),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sarah O.",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: AppColors.primaryOrange,
                          size: 16,
                        ),
                        SizedBox(width: 4),
                        Text(
                          "4.2",
                          style: TextStyle(
                            color: AppColors.primaryOrange,

                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 4),
                        Text(
                          "· 85 Trips",
                          style: TextStyle(
                            color: AppColors.textSecondary,
                            fontSize: 11.77,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              _buildStatusTag("Pending"),
            ],
          ),

          const SizedBox(height: 16),
          const Divider(height: 1, color: Color(0xFFE9EBEE)),
          const SizedBox(height: 12),

          // --- Trip details
          const Row(
            children: [
              Image(
                height: 18,
                width: 18,
                fit: BoxFit.cover,
                image: AssetImage(Appimage.s),
              ),

              SizedBox(width: 6),
              Text("Ikeja"),
              SizedBox(width: 6),
              SizedBox(width: 12, child: Divider()),
              SizedBox(width: 6),

              Image(
                height: 18,
                width: 18,
                fit: BoxFit.cover,
                image: AssetImage(Appimage.location),
              ),

              SizedBox(width: 6),
              Text("Lekki"),
            ],
          ),
          const SizedBox(height: 6),
          const Row(
            children: [
              Image(
                height: 18,
                width: 18,
                fit: BoxFit.cover,
                image: AssetImage(Appimage.chair),
              ),
              SizedBox(width: 6),
              Text("Seats Booked: 2 Seats"),
            ],
          ),
          const SizedBox(height: 6),
          const Row(
            children: [
              Image(
                height: 18,
                width: 18,
                fit: BoxFit.cover,
                image: AssetImage(Appimage.calendar),
              ),
              SizedBox(width: 6),
              Text("Tuesday, April 30, 2025  •  8:00 AM"),
            ],
          ),

          const SizedBox(height: 14),

          // --- Buttons
          Row(
            children: [
              Custombuttom(
                tap: () {
                  Get.to(Tripdetails());
                },
                tittle: 'View details',
                width: 120,
                height: 51,
              ),
              const SizedBox(width: 10),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTripSummaryCard() {
    return Container(
      height: 398.20794677734375,
      width: double.infinity,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.08),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [_buildStatusTag("Pending")],
          ),
          const SizedBox(height: 10),

          const Row(
            children: [
              Image(
                height: 18,
                width: 18,
                fit: BoxFit.cover,
                image: AssetImage(Appimage.s),
              ),
              SizedBox(width: 6),
              Text("Ikeja, Lagos"),
              SizedBox(width: 6),

              SizedBox(width: 12, child: Divider()),
              SizedBox(width: 6),
              Image(
                height: 18,
                width: 18,
                fit: BoxFit.cover,
                image: AssetImage(Appimage.location),
              ),

              SizedBox(width: 6),
              Text("Ibadan, Iwo Road"),
            ],
          ),
          const SizedBox(height: 10),
          const Row(
            children: [
              Image(
                height: 18,
                width: 18,
                fit: BoxFit.cover,
                image: AssetImage(Appimage.calendar),
              ),

              SizedBox(width: 6),
              Text("Date: May 20, 2025  @ 08:00 AM"),
            ],
          ),
          const SizedBox(height: 10),

          Row(
            children: [
              Icon(Icons.note_alt_outlined, color: Colors.grey, size: 18),
              SizedBox(width: 6),
              Text("Notes: "),
              SizedBox(width: 6),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.fadeblue,
                ),
                alignment: Alignment.centerLeft,
                height: 39.227439916696696,
                width: 213.76322956806735,
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "I Have a Suitcase",
                  style: TextStyle(fontSize: 12, color: AppColors.textPrimary),
                ),
              ),
            ],
          ),

          const SizedBox(height: 6),
          const Row(
            children: [
              Image(
                height: 18,
                width: 18,
                fit: BoxFit.cover,
                image: AssetImage(Appimage.chair),
              ),
              SizedBox(width: 6),
              Text("Seats Requested: 2 Seats"),
            ],
          ),
          const SizedBox(height: 6),
          const Row(
            children: [
              Image(
                height: 18,
                width: 18,
                fit: BoxFit.cover,
                image: AssetImage(Appimage.calendarandclockk),
              ),
              SizedBox(width: 6),
              Text("Recurring: Yes (Mon, Wed)"),
            ],
          ),
          const SizedBox(height: 12),
          Divider(),

          Row(
            children: [
              Text(
                "Price: ",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: AppColors.textSecondary,
                  fontSize: 15,
                ),
              ),
              Text(
                "₦2500 ",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              Text(
                "Per Day",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: AppColors.textSecondary,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Spacewidgetheight(space: 20),
          Row(
            children: [
              Custombuttom(tittle: 'View Details', width: 140, height: 48),
              const SizedBox(width: 10),
              const Text(
                "Reject",
                style: TextStyle(color: Colors.red, fontSize: 12.7),
              ),
            ],
          ),
          Spacewidgetheight(space: 20),
        ],
      ),
    );
  }

  Widget _buildStatusTag(String status) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: AppColors.fadeorang,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        status,
        style: const TextStyle(
          color: AppColors.warning,
          fontSize: 12.5,
          fontWeight: FontWeight.w600,
        ),
      ),
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
