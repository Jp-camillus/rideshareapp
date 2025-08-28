import 'dart:async';
import 'package:flutter/material.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class Loginscreenpin extends StatefulWidget {
  final String phoneNumber;
  final int otpLength;

  const Loginscreenpin({
    super.key,
    required this.phoneNumber,
    this.otpLength = 4, // screenshot shows 4 circles
  });

  @override
  State<Loginscreenpin> createState() => _LoginscreenpinState();
}

class _LoginscreenpinState extends State<Loginscreenpin> {
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Spacewidgetheight(space: h * 0.1),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CircleAvatar(
                          backgroundColor: const Color.fromRGBO(
                            18,
                            18,
                            29,
                            0.05,
                          ),
                          child: Image(image: AssetImage(Appimage.close)),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      radius: w * 0.08,
                      backgroundImage: AssetImage(Appimage.agwas),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Welcome ',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Appcolor.primarrylight,
                            fontSize: h * 0.035,
                          ),
                        ),
                        Text(
                          'back!',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: h * 0.035,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Alayande',
                      style: TextStyle(
                        fontSize: h * 0.03,
                        color: const Color.fromRGBO(75, 85, 99, 1),
                      ),
                    ),
                    Spacewidgetheight(space: h * 0.1),
                    Text('Enter your PIN to login'),
                    Spacewidgetheight(space: h * 0.05),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [_otpRow()],
                    ),
                    Spacewidgetheight(space: h * 0.05),
                    Text(
                      'Forgot your PIN',
                      style: TextStyle(color: Appcolor.primarrylight),
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
