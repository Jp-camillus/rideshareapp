import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/theme/app_theme.dart';
import 'package:rideshareapp/widget/custombuttom.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class Requestdetails extends StatefulWidget {
  const Requestdetails({super.key});

  @override
  State<Requestdetails> createState() => _RequestdetailsState();
}

class _RequestdetailsState extends State<Requestdetails>
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
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPendingRequests1() {
    return SingleChildScrollView(
      child: Column(
        children: [_buildUserRequestCard(), const SizedBox(height: 16)],
      ),
    );
  }

  Widget _buildPendingRequests() {
    return SingleChildScrollView(
      child: Column(
        children: [const SizedBox(height: 16), _buildTripSummaryCard()],
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

  Widget _buildTripSummaryCard() {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();
    return Container(
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

          Spacewidgetheight(space: 20),
          const Text(
            'Drivers accepted your request:',
            style: TextStyle(
              color: AppColors.textPrimary,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          Spacewidgetheight(space: 20),
          Container(
            height: 141.43092346191406,
            width: double.infinity,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColors.borderLight),
            ),
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: w * 0.17,

                        child: Stack(
                          children: [
                            Positioned(
                              top: h * 0.01,
                              left: w * 0.05,
                              child: Container(
                                height: h * 0.041,
                                width: w * 0.12,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.contain,
                                    image: AssetImage(Appimage.whitecar),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              child: Container(
                                height: h * 0.05,
                                width: w * 0.07,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(Appimage.smileman),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacewidgetwidth(space: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'John Doe',
                            style: AppThemes.titleLarge.copyWith(
                              color: AppColors.textPrimary,
                              fontSize: 20,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.deepOrange,
                                size: 10,
                              ),
                              Text(
                                '4.2',
                                style: TextStyle(
                                  fontSize: 9.19,
                                  color: AppColors.primaryOrange,
                                ),
                              ),
                              Spacewidgetwidth(space: 5),
                              Text(
                                ' (120 reviews)',
                                style: TextStyle(
                                  fontSize: 9.19,
                                  color: AppColors.textSecondary,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image(
                                height: 16,
                                width: 16,
                                image: AssetImage(Appimage.claritycarline),
                              ),
                              Text(
                                'Toyota Corolla 2016',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: AppColors.textSecondary,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Image(image: AssetImage(Appimage.message)),
                          Spacewidgetwidth(space: 5),
                          Image(image: AssetImage(Appimage.call)),
                        ],
                      ),
                    ],
                  ),
                  Spacewidgetheight(space: 10),
                  Row(
                    children: [
                      Text(
                        'view profile',
                        style: TextStyle(color: AppColors.primaryBlue),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Custombuttom(tittle: 'Accept', width: 85, height: 35),
                          const SizedBox(width: 10),
                          const Text(
                            "Reject",
                            style: TextStyle(color: Colors.red, fontSize: 12.7),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Spacewidgetheight(space: 20),

          Container(
            height: 141.43092346191406,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColors.borderLight),
            ),
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: w * 0.17,

                        child: Stack(
                          children: [
                            Positioned(
                              top: h * 0.01,
                              left: w * 0.05,
                              child: Container(
                                height: h * 0.041,
                                width: w * 0.12,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.contain,
                                    image: AssetImage(Appimage.whitecar),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              child: Container(
                                height: h * 0.05,
                                width: w * 0.07,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(Appimage.smileman),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacewidgetwidth(space: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'John Doe',
                            style: AppThemes.titleLarge.copyWith(
                              color: AppColors.textPrimary,
                              fontSize: 20,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.deepOrange,
                                size: 10,
                              ),
                              Text(
                                '4.2',
                                style: TextStyle(
                                  fontSize: 9.19,
                                  color: AppColors.primaryOrange,
                                ),
                              ),
                              Spacewidgetwidth(space: 5),
                              Text(
                                ' (120 reviews)',
                                style: TextStyle(
                                  fontSize: 9.19,
                                  color: AppColors.textSecondary,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image(
                                height: 16,
                                width: 16,
                                image: AssetImage(Appimage.claritycarline),
                              ),
                              Text(
                                'Toyota Corolla 2016',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: AppColors.textSecondary,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Image(image: AssetImage(Appimage.message)),
                          Spacewidgetwidth(space: 5),
                          Image(image: AssetImage(Appimage.call)),
                        ],
                      ),
                    ],
                  ),
                  Spacewidgetheight(space: 10),
                  Row(
                    children: [
                      Text(
                        'view profile',
                        style: TextStyle(color: AppColors.primaryBlue),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Custombuttom(tittle: 'Accept', width: 85, height: 35),
                          const SizedBox(width: 10),
                          const Text(
                            "Reject",
                            style: TextStyle(color: Colors.red, fontSize: 12.7),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Spacewidgetheight(space: 10),
          Container(
            height: 91,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromRGBO(255, 245, 237, 1),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Your Trip Token',
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColors.textPrimary,
                        ),
                      ),
                      Text(
                        'X9PQ4',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: AppColors.textPrimary,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Share this token with passengers when they meet you.',
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColors.textPrimary,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Spacewidgetheight(space: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Custombuttom(
                tittle: 'Cancel ',
                width: 97,
                height: 48,
                tap: () {
                  canceldialogue(context);
                },
              ),
              Container(
                height: 48,
                width: 97,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.colorBlue),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    "Edit",
                    style: TextStyle(color: AppColors.colorBlue, fontSize: 16),
                  ),
                ),
              ),
              const Text(
                "Add to calendar",
                style: TextStyle(color: AppColors.colorBlue, fontSize: 16),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void canceldialogue(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Container(
            height: 266,
            width: 298.55859375,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(image: AssetImage(Appimage.bluemessage)),
                  Text(
                    'Are you sure you want to cancel this request?',
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColors.textPrimary,
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Custombuttom(
                        tittle: 'Yes i am sure',
                        width: 120,
                        height: 35,
                      ),
                      Spacewidgetwidth(space: 10),
                      Text(
                        "No don't",
                        style: TextStyle(color: AppColors.error),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
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
