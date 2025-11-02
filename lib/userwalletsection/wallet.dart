import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/widget/custombuttom.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  final String referralLink = "https://yourplatform.com/signup?ref=ahusaht123";

  void copyReferralLink() {
    Clipboard.setData(ClipboardData(text: referralLink));
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text("Referral link copied!")));
  }

  @override
  Widget build(BuildContext context) {
    // sizing helpers
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(221, 237, 255, 1),

              AppColors.backgroundLight,
              AppColors.backgroundLight,
              AppColors.backgroundLight,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  // Big gradient header with rounded bottom
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
                      Image(image: AssetImage(Appimage.searchblack)),
                    ],
                  ),
                  // Content scroll area
                  const SizedBox(height: 38),

                  // Floating white card overlapping header
                  // Use Fractional translation with negative margin to overlap
                  const SizedBox(height: 18),
                  Row(
                    children: [
                      Text(
                        'Wallet',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: AppColors.textPrimary,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 29),

                  // Two stat cards row
                  Row(
                    children: [
                      Expanded(
                        child: _statChip(
                          "Available Balance",
                          "₦15,000",
                          Image(image: AssetImage(Appimage.greenwallet)),
                          Color(0xFF2DD4BF),
                          AppColors.fadegreen,
                        ),
                      ),
                      const SizedBox(width: 12),

                      Expanded(
                        child: _statChip(
                          "Pending Payout",
                          "₦5,000",
                          Icon(
                            Icons.money_rounded,
                            color: AppColors.primaryBlue,
                          ),

                          AppColors.primaryBlue,
                          AppColors.fadeblue,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 50),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Custombuttom(
                        tittle: 'Request Payout',
                        width: 147,
                        tap: () {
                          _showWithdrawEarningsSheet(context);
                        },
                        height: 45,
                      ),
                      const SizedBox(width: 12),
                      Text(
                        "History",
                        style: GoogleFonts.inter(
                          color: AppColors.colorBlue,
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),

                  // Referral link card
                  const SizedBox(height: 28),
                  Spacewidgetheight(space: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Last Payout:',
                        style: TextStyle(
                          fontSize: 18,
                          color: AppColors.textPrimary,
                        ),
                      ),
                      Text(
                        'View all',
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.colorBlue,
                        ),
                      ),
                    ],
                  ),
                  Spacewidgetheight(space: 30),

                  Container(
                    height: 76,
                    width: 392,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      border: Border.all(color: AppColors.borderLight),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image(
                                    image: AssetImage(
                                      Appimage.calendarandclockk,
                                    ),
                                  ),
                                  Spacewidgetwidth(space: 10),
                                  Text(
                                    'May 7, 2025',
                                    style: TextStyle(
                                      color: AppColors.textPrimary,
                                    ),
                                  ),
                                  Spacewidgetwidth(space: 5),
                                  Text(
                                    '08:30am',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: AppColors.textPrimary,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                '₦12,000',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: AppColors.textPrimary,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.check_circle_outline_sharp,
                                color: Colors.green,
                                size: 12,
                              ),
                              Spacewidgetwidth(space: 6),
                              Text(
                                'Paid',
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 12,
                                ),
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
      ),
    );
  }

  // small stat chip widget used above
  Widget _statChip(
    String title,
    String value,
    Widget icon,
    Color iconColor,
    Color color,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black12.withOpacity(0.03),
            blurRadius: 10,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Row(
        children: [
          icon,
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.inter(color: Colors.black54, fontSize: 12),
              ),
              const SizedBox(height: 4),
              Text(
                value,
                style: GoogleFonts.inter(
                  color: AppColors.textPrimary,
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // bullet line with small icon
  Widget _bulletLine(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(Icons.arrow_forward_ios, size: 12, color: AppColors.colorBlue),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            text,
            style: GoogleFonts.inter(fontSize: 14, color: AppColors.colorBlue),
          ),
        ),
      ],
    );
  }

  void _showWithdrawEarningsSheet(BuildContext context) {
    final TextEditingController amountController = TextEditingController();
    final RxBool showBankSection = false.obs;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
      ),
      builder: (context) {
        return Container(
          height: 617.74609375,
          child: Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
              left: 20,
              right: 20,
              top: 25,
            ),
            child: Obx(
              () => SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // top drag handle
                    Center(
                      child: Container(
                        width: 40,
                        height: 5,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),

                    // Header
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Withdraw Earnings",
                          style: GoogleFonts.inter(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                        IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: const Icon(Icons.close, color: Colors.black54),
                        ),
                      ],
                    ),

                    Text(
                      "Easily transfer your earning balance to your bank account",
                      style: GoogleFonts.inter(
                        fontSize: 13,
                        color: Colors.black54,
                      ),
                    ),
                    const SizedBox(height: 24),

                    // Input section
                    Container(
                      height: 137.56491088867188,
                      width: 393,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          colors: [
                            Color.fromRGBO(255, 248, 243, 1),
                            Color.fromRGBO(220, 228, 255, 1),
                          ],
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Please input the amount you wish to withdraw from your wallet.",
                              style: GoogleFonts.inter(
                                fontSize: 10,
                                color: AppColors.textPrimary,
                              ),
                            ),
                            const SizedBox(height: 20),

                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey[300]!),
                                borderRadius: BorderRadius.circular(30),
                                color: const Color(0xFFFFF9F9),
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(width: 15),
                                  Text(
                                    "₦",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: AppColors.textPrimary,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Expanded(
                                    child: TextField(
                                      controller: amountController,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        hintText: "Amount",
                                        border: InputBorder.none,
                                        hintStyle: GoogleFonts.inter(
                                          color: Colors.grey,
                                        ),
                                      ),
                                      onChanged: (value) {
                                        final amount =
                                            int.tryParse(
                                              value.replaceAll(',', ''),
                                            ) ??
                                            0;
                                        showBankSection.value = amount >= 5000;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          "Note",
                          style: GoogleFonts.inter(
                            fontSize: 11,
                            color: AppColors.textPrimary,
                          ),
                        ),
                        Text(
                          ": You can only withdraw the minimum amount of ",
                          style: GoogleFonts.inter(
                            fontSize: 11,
                            color: Colors.black54,
                          ),
                        ),
                        Text(
                          "₦5,000",
                          style: GoogleFonts.inter(
                            fontSize: 11,
                            color: AppColors.textPrimary,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),

                    // ✅ Bank Details (only show if amount >= 5000)
                    if (showBankSection.value) ...[
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12.withOpacity(0.05),
                              blurRadius: 10,
                              offset: const Offset(0, 6),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Image(
                              height: 20,
                              width: 20,
                              image: AssetImage(Appimage.verifyicon),
                            ),
                            Image(
                              height: 20,
                              width: 20,
                              image: AssetImage(Appimage.fcmb),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "First City Monument Bank",
                                    style: GoogleFonts.inter(
                                      color: AppColors.textPrimary,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13,
                                    ),
                                  ),
                                  Text(
                                    "Alayande Nurudeen Bamidele | 4737139012",
                                    style: GoogleFonts.inter(
                                      fontSize: 11,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "Edit",
                              style: GoogleFonts.inter(
                                fontSize: 13,

                                color: AppColors.colorBlue,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 10),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: AppColors.backgroundLight,
                            boxShadow: [
                              BoxShadow(
                                color: const Color.fromARGB(20, 0, 123, 255),
                                blurRadius: 2,
                                offset: const Offset(0, 6),
                              ),
                            ],
                          ),
                          child: TextButton.icon(
                            onPressed: () {
                              // logic to add new bank account
                            },
                            icon: const Icon(
                              Icons.add_circle_outline,
                              color: AppColors.colorBlue,
                            ),
                            label: Text(
                              "Add New Bank Account",
                              style: GoogleFonts.inter(
                                fontSize: 13,

                                color: AppColors.colorBlue,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                    const SizedBox(height: 25),

                    // Request payout button
                    Custombuttom(
                      tap: () {
                        Confirmpayoutrequest(context);
                      },
                      tittle: 'Request Payout',
                      width: 161,
                      height: 48,
                    ),
                    const SizedBox(height: 25),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void Confirmpayoutrequest(BuildContext context) {
    final TextEditingController amountController = TextEditingController();
    final RxBool showBankSection = false.obs;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
      ),
      builder: (context) {
        return Container(
          height: 480,
          child: Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
              left: 20,
              right: 20,
              top: 25,
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // top drag handle
                  Center(
                    child: Container(
                      width: 40,
                      height: 5,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),

                  // Header
                  Text(
                    '🎉 Confirm Payout Request',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Text(
                        "You're about to request a payout of ",
                        style: TextStyle(color: AppColors.textSecondary),
                      ),
                      Text(
                        "₦5,000",
                        style: TextStyle(color: AppColors.textPrimary),
                      ),
                    ],
                  ),

                  const SizedBox(height: 15),

                  Text(
                    "To the following account:",
                    style: TextStyle(color: AppColors.textPrimary),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.colorBlue,
                        size: 10,
                      ),
                      Spacewidgetwidth(space: 10),
                      Text(
                        'GTBank',
                        style: TextStyle(color: AppColors.colorBlue),
                      ),
                    ],
                  ),
                  Spacewidgetheight(space: 5),
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.colorBlue,
                        size: 10,
                      ),
                      Spacewidgetwidth(space: 10),
                      Text(
                        '0123456789 – Ahmed Bello',
                        style: TextStyle(color: AppColors.colorBlue),
                      ),
                    ],
                  ),
                  Spacewidgetheight(space: 20),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(216, 235, 255, 1),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    height: 23,
                    width: 255,
                    alignment: Alignment.center,
                    child: Center(
                      child: Text(
                        'Expected Time: Within 24–48 hours',
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.textSecondary,
                        ),
                      ),
                    ),
                  ),
                  Spacewidgetheight(space: 20),

                  // Request payout button
                  Row(
                    children: [
                      Custombuttom(
                        tittle: 'Confirm Payout',
                        width: 161,
                        height: 48,
                      ),
                      Spacewidgetwidth(space: 10),
                      Text('Cancel', style: TextStyle(color: AppColors.error)),
                    ],
                  ),
                  const SizedBox(height: 25),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
