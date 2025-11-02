import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class PaymentHistory extends StatefulWidget {
  const PaymentHistory({Key? key}) : super(key: key);

  @override
  State<PaymentHistory> createState() => _PaymentHistoryState();
}

class _PaymentHistoryState extends State<PaymentHistory> {
  final tabs = ['All', 'Trips', 'System', 'Promotion'];
  int selectedTab = 0;

  final List<Map<String, dynamic>> transactions = [
    {
      'avatar': 'https://i.pravatar.cc/100?img=3',
      'routeFrom': 'Lagos',
      'routeTo': 'Ibadan',
      'date': '01 May 2025',
      'amount': '₦5,500',
      'orderId': '1213141516',
      'status': 'Paid',
    },
    {
      'avatar': 'https://i.pravatar.cc/100?img=5',
      'routeFrom': 'Lagos',
      'routeTo': 'Ibadan',
      'date': '02 May 2025',
      'amount': '₦4,700',
      'orderId': '1314151617',
      'status': 'Failed',
    },
  ];

  static const Color titleColor = Color(0xFF1B1D28);
  static const Color subtleGray = Color(0xFF9CA3AF);
  static const Color tabActive = Color(0xFF2563EB);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
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
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Image(image: AssetImage(Appimage.searchgrey)),
                          const SizedBox(width: 8),
                          Expanded(
                            child: TextField(
                              style: const TextStyle(
                                color: titleColor,
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
                  ],
                ),

                const SizedBox(height: 12),
                Spacewidgetheight(space: 20),

                // Tabs (rounded white container)
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 8,
                  ),
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
                              (MediaQuery.of(context).size.width -
                                  18 * 2 -
                                  16) /
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
                Spacewidgetheight(space: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Icon(Icons.more_horiz)],
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.textWhite,
                  ),
                  height: 260.00543212890625,
                  width: 378.8486633300781,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 110,
                                  height: 230.00543212890625,

                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: w * 0.05,
                                        child: Container(
                                          height: h * 0.091,
                                          width: w * 0.19,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.contain,
                                              image: AssetImage(
                                                Appimage.whitecar,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Container(
                                          height: h * 0.085,
                                          width: w * 0.099,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                              image: AssetImage(
                                                Appimage.smileman,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 239,
                                  height: 230.00543212890625,
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Row(
                                            children: [
                                              Image(
                                                image: AssetImage(Appimage.s),
                                              ),
                                              Spacewidgetwidth(space: 10),
                                              Text(
                                                'Lagos',
                                                style: TextStyle(
                                                  fontSize: 17.32,
                                                  color: AppColors.textPrimary,
                                                ),
                                              ),
                                              Spacewidgetwidth(space: 10),

                                              SizedBox(
                                                width: 20,
                                                child: Divider(),
                                              ),
                                              Spacewidgetwidth(space: 10),
                                              Image(
                                                image: AssetImage(
                                                  Appimage.location,
                                                ),
                                              ),
                                              Spacewidgetwidth(space: 10),
                                              Text(
                                                'Ibadan',
                                                style: TextStyle(
                                                  fontSize: 17.32,
                                                  color: AppColors.textPrimary,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Spacewidgetheight(space: 10),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Date',
                                            style: TextStyle(
                                              color: AppColors.textSecondary,
                                            ),
                                          ),
                                          Text(
                                            '01 May 2025',
                                            style: TextStyle(
                                              color: AppColors.textPrimary,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Spacewidgetheight(space: 10),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Amount:',
                                            style: TextStyle(
                                              color: AppColors.textSecondary,
                                            ),
                                          ),
                                          Text(
                                            '₦5,500',
                                            style: TextStyle(
                                              color: AppColors.textPrimary,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Spacewidgetheight(space: 10),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Order ID',
                                            style: TextStyle(
                                              color: AppColors.textSecondary,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                '1213141516',
                                                style: TextStyle(
                                                  color: AppColors.textPrimary,
                                                ),
                                              ),
                                              Icon(Icons.copy_rounded),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Spacewidgetheight(space: 10),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                          color: AppColors.fadeblue,
                                        ),
                                        height: 26,
                                        width: w.toDouble(),
                                        alignment: Alignment.center,
                                        child: Text(
                                          'Paid',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: AppColors.colorBlue,
                                          ),
                                        ),
                                      ),
                                      Spacewidgetheight(space: 15),
                                      Divider(),
                                      Spacewidgetheight(space: 15),

                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'See More Details',
                                            style: TextStyle(
                                              color: AppColors.colorBlue,
                                            ),
                                          ),
                                          Icon(
                                            Icons.arrow_forward_ios_outlined,
                                            color: AppColors.colorBlue,
                                            size: 13.9,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Spacewidgetheight(space: 30),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.textWhite,
                  ),
                  height: 260.00543212890625,
                  width: 378.8486633300781,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 110,
                                  height: 230.00543212890625,

                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: w * 0.05,
                                        child: Container(
                                          height: h * 0.091,
                                          width: w * 0.19,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.contain,
                                              image: AssetImage(
                                                Appimage.whitecar,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Container(
                                          height: h * 0.085,
                                          width: w * 0.099,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                              image: AssetImage(
                                                Appimage.smileman,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 239,
                                  height: 230.00543212890625,
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Row(
                                            children: [
                                              Image(
                                                image: AssetImage(Appimage.s),
                                              ),
                                              Spacewidgetwidth(space: 10),
                                              Text(
                                                'Lagos',
                                                style: TextStyle(
                                                  fontSize: 17.32,
                                                  color: AppColors.textPrimary,
                                                ),
                                              ),
                                              Spacewidgetwidth(space: 10),

                                              SizedBox(
                                                width: 20,
                                                child: Divider(),
                                              ),
                                              Spacewidgetwidth(space: 10),
                                              Image(
                                                image: AssetImage(
                                                  Appimage.location,
                                                ),
                                              ),
                                              Spacewidgetwidth(space: 10),
                                              Text(
                                                'Ibadan',
                                                style: TextStyle(
                                                  fontSize: 17.32,
                                                  color: AppColors.textPrimary,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Spacewidgetheight(space: 10),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Date',
                                            style: TextStyle(
                                              color: AppColors.textSecondary,
                                            ),
                                          ),
                                          Text(
                                            '01 May 2025',
                                            style: TextStyle(
                                              color: AppColors.textPrimary,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Spacewidgetheight(space: 10),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Amount:',
                                            style: TextStyle(
                                              color: AppColors.textSecondary,
                                            ),
                                          ),
                                          Text(
                                            '₦5,500',
                                            style: TextStyle(
                                              color: AppColors.textPrimary,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Spacewidgetheight(space: 10),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Order ID',
                                            style: TextStyle(
                                              color: AppColors.textSecondary,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                '1213141516',
                                                style: TextStyle(
                                                  color: AppColors.textPrimary,
                                                ),
                                              ),
                                              Icon(Icons.copy_rounded),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Spacewidgetheight(space: 10),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                          color: AppColors.fadeorang,
                                        ),
                                        height: 26,
                                        width: w.toDouble(),
                                        alignment: Alignment.center,
                                        child: Text(
                                          'Failed',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: AppColors.error,
                                          ),
                                        ),
                                      ),
                                      Spacewidgetheight(space: 15),
                                      Divider(),
                                      Spacewidgetheight(space: 15),

                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'See More Details',
                                            style: TextStyle(
                                              color: AppColors.colorBlue,
                                            ),
                                          ),
                                          Icon(
                                            Icons.arrow_forward_ios_outlined,
                                            color: AppColors.colorBlue,
                                            size: 13.9,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
