import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/screen/auth/signup/phone_number_verification.dart';
import 'package:rideshareapp/screen/auth/signup/phone_number_verifysucessful.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class OtpVerificationScreen extends StatefulWidget {
  final String phoneNumber; // e.g. "+234 801 234 5678"
  final int otpLength;

  const OtpVerificationScreen({
    super.key,
    required this.phoneNumber,
    this.otpLength = 4, // screenshot shows 4 circles
  });

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  String otp = "";
  int _secondsRemaining = 45;
  Timer? _timer;
  bool _showKeypad = false; // <-- controls keypad visibility
  bool activatebutton = false; // <-- controls keypad visibility

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    setState(() => _secondsRemaining = 45);
    _timer = Timer.periodic(const Duration(seconds: 1), (t) {
      if (_secondsRemaining == 0) {
        t.cancel();
      } else {
        setState(() => _secondsRemaining--);
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _onKeyTap(String value) {
    setState(() {
      if (value == 'back') {
        if (otp.isNotEmpty) {
          otp = otp.substring(0, otp.length - 1);
        }
      } else if (otp.length == 4) {
        setState(() => _showKeypad = false); // show keypad when tapped
      } else {
        if (otp.length < widget.otpLength) {
          otp += value;
        }
      }

      activatebutton = otp.length == widget.otpLength;
    });
  }

  void _onBackspace() {
    if (otp.isEmpty) return;
    setState(() => otp = otp.substring(0, otp.length - 1));
  }

  Widget _otpCircle({required bool filled, String? value}) {
    return Container(
      width: 52,
      height: 52,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: filled ? Colors.white : const Color(0xFFF1F2F4),
        border: Border.all(
          color: filled ? Colors.black54 : const Color(0xFFE0E3E7),
          width: 1.2,
        ),
        boxShadow: filled
            ? [
                BoxShadow(
                  color: Colors.black.withOpacity(0.06),
                  blurRadius: 6,
                  offset: const Offset(0, 2),
                ),
              ]
            : null,
      ),
      alignment: Alignment.center,
      child: filled
          ? Text(
              value ?? "",
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black87,
                fontWeight: FontWeight.w600,
              ),
            )
          : null,
    );
  }

  Widget _otpRow() {
    return GestureDetector(
      onTap: () {
        setState(() => _showKeypad = true); // show keypad when tapped
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: List.generate(widget.otpLength, (i) {
          final isFilled = i < otp.length;
          final char = isFilled ? otp[i] : null;
          return Padding(
            padding: EdgeInsets.only(right: i == widget.otpLength - 1 ? 0 : 16),
            child: _otpCircle(filled: isFilled, value: char),
          );
        }),
      ),
    );
  }

  static const _t9 = [
    ["1", ""],
    ["2", "ABC"],
    ["3", "DEF"],
    ["4", "GHI"],
    ["5", "JKL"],
    ["6", "MNO"],
    ["7", "PQRS"],
    ["8", "TUV"],
    ["9", "WXYZ"],
  ];

  Widget _keyButton(String number, String letters, {VoidCallback? onTap}) {
    return InkWell(
      onTap: onTap ?? () => _onKeyTap(number),
      borderRadius: BorderRadius.circular(10),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: const Color.fromRGBO(204, 206, 211, 1)),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.04),
                blurRadius: 10,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                number,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              if (letters.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: Text(
                    letters,
                    style: const TextStyle(
                      letterSpacing: 2,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _keypad(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromRGBO(240, 241, 245, 1),
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      padding: const EdgeInsets.fromLTRB(12, 12, 12, 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 1.8,
            children: [for (final k in _t9) _keyButton(k[0], k[1])],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: Opacity(opacity: 0.0, child: _keyButton("•", "")),
              ),
              const SizedBox(width: 10),
              Expanded(child: _keyButton("0", "")),
              const SizedBox(width: 10),
              Expanded(
                child: InkWell(
                  onTap: _onBackspace,
                  borderRadius: BorderRadius.circular(10),
                  child: const Icon(Icons.backspace_outlined, size: 22),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacewidgetheight(space: h * 0.15),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Verify Your Phone Number',
                            style: TextStyle(
                              fontSize: h * 0.035,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Spacewidgetheight(space: 10),
                          Text(
                            "Enter the 6-digit code sent to: ${widget.phoneNumber} ",
                          ),
                        ],
                      ),
                    ),
                    Spacewidgetheight(space: h * 0.1),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [_otpRow()],
                    ),
                    SizedBox(height: h * 0.055),
                    Container(
                      height: h * 0.5,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(22),
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Appcolor.bottombackground,
                            Appcolor.bottombackground,
                            Color.fromARGB(50, 180, 197, 253),
                          ],
                        ),
                      ),
                      alignment: Alignment.center,
                      child: (_secondsRemaining > 0)
                          ? Column(
                              children: [
                                Spacewidgetheight(space: h * 0.05),
                                Text(
                                  "Resend Code in 00:${_secondsRemaining.toString().padLeft(2, '0')}",
                                  style: const TextStyle(
                                    fontSize: 13,
                                    color: Colors.black54,
                                  ),
                                ),
                                Spacewidgetheight(space: h * 0.15),
                                Text(
                                  'Change Phone Number',
                                  style: TextStyle(
                                    fontSize: h * 0.021,
                                    color: Appcolor.primarrylight,
                                  ),
                                ),
                                Spacewidgetheight(space: h * 0.01),

                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            Get.to(
                                              PhoneNumberVerifysucessful(),
                                            );
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              gradient: activatebutton
                                                  ? LinearGradient(
                                                      colors: [
                                                        Appcolor.gradientblue,
                                                        Appcolor.gradientorang,
                                                      ],
                                                    )
                                                  : const LinearGradient(
                                                      colors: [
                                                        Colors.grey,
                                                        Colors.grey,
                                                      ],
                                                    ),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                    w * 0.06,
                                                  ),
                                            ),
                                            height: h * 0.06,
                                            alignment: Alignment.center,
                                            width: w * 0.38,
                                            child: Padding(
                                              padding: const EdgeInsets.all(
                                                8.0,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  const Text(
                                                    'Continue',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  Spacewidgetwidth(space: 5),
                                                  Icon(
                                                    Icons
                                                        .arrow_forward_ios_outlined,
                                                    color: Colors.white,
                                                    size: h * 0.015,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            )
                          : TextButton(
                              onPressed: _startTimer,
                              child: Column(
                                children: [
                                  Spacewidgetheight(space: h * 0.05),

                                  Text(
                                    "Resend Code",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Spacewidgetheight(space: h * 0.15),
                                  Text(
                                    'Change Phone Number',
                                    style: TextStyle(
                                      fontSize: h * 0.021,
                                      color: Appcolor.primarrylight,
                                    ),
                                  ),
                                  Spacewidgetheight(space: h * 0.01),

                                  Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              Get.to(
                                                PhoneNumberVerifysucessful(),
                                              );
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                gradient: activatebutton
                                                    ? LinearGradient(
                                                        colors: [
                                                          Appcolor.gradientblue,
                                                          Appcolor
                                                              .gradientorang,
                                                        ],
                                                      )
                                                    : const LinearGradient(
                                                        colors: [
                                                          Colors.grey,
                                                          Colors.grey,
                                                        ],
                                                      ),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                      w * 0.06,
                                                    ),
                                              ),
                                              height: h * 0.06,
                                              alignment: Alignment.center,
                                              width: w * 0.38,
                                              child: Padding(
                                                padding: const EdgeInsets.all(
                                                  8.0,
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    const Text(
                                                      'Continue',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                    Spacewidgetwidth(space: 5),
                                                    Icon(
                                                      Icons
                                                          .arrow_forward_ios_outlined,
                                                      color: Colors.white,
                                                      size: h * 0.015,
                                                    ),
                                                  ],
                                                ),
                                              ),
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
            if (_showKeypad) _keypad(context), // <-- show only when tapped
          ],
        ),
      ),
    );
  }
}
