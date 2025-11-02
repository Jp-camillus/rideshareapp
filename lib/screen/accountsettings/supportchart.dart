import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class SupportChatScreen extends StatefulWidget {
  const SupportChatScreen({Key? key}) : super(key: key);

  @override
  State<SupportChatScreen> createState() => _SupportChatScreenState();
}

class _SupportChatScreenState extends State<SupportChatScreen> {
  final TextEditingController _messageController = TextEditingController();

  final List<Map<String, dynamic>> _messages = [
    {
      "isUser": false,
      "text":
          "Hi Kitsbase, Let me know you need help and you can ask us any questions.",
      "time": "08:20 AM",
    },
    {
      "isUser": true,
      "text": "How to book a ride nextweek?",
      "time": "08:21 AM",
    },
    {
      "isUser": false,
      "text":
          "Open the FinX Stock app to get started and follow the steps. FinX Stock doesn’t charge a fee to create or maintain your FinX Stock account.",
      "time": "08:22 AM",
    },
  ];

  @override
  Widget build(BuildContext context) {
    const kBgTop = Color(0xFFF8FAFF);
    const kBgBottom = Color(0xFFFFFFFF);
    const kSupportBubble = Color(0xFFE8F1FF);
    const kUserBubble = Color(0xFFFFE6DC);
    const kTimestamp = Color(0xFFA3A9B5);
    const kTextPrimary = Color(0xFF2E3542);
    const kIconGray = Color(0xFF8A8F9E);

    return Scaffold(
      backgroundColor: kBgBottom,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(221, 237, 255, 1),

              Color.fromRGBO(178, 215, 255, 0.07),
              Color.fromRGBO(178, 215, 255, 0.07),
              Color.fromRGBO(178, 215, 255, 0.07),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                // APP BAR
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
                Spacewidgetheight(space: 20),

                Row(
                  children: [
                    Text(
                      'Support',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimary,
                      ),
                    ),
                  ],
                ),
                Image(
                  height: 150,
                  image: AssetImage(Appimage.customerservicemesage),
                ),
                const SizedBox(height: 10),

                // CHAT LIST
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    itemCount: _messages.length,
                    itemBuilder: (context, index) {
                      final msg = _messages[index];
                      final bool isUser = msg["isUser"];
                      return Column(
                        crossAxisAlignment:
                            isUser
                                ? CrossAxisAlignment.end
                                : CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment:
                                isUser
                                    ? MainAxisAlignment.end
                                    : MainAxisAlignment.start,
                            children: [
                              if (!isUser)
                                Padding(
                                  padding: const EdgeInsets.only(
                                    right: 8.0,
                                    bottom: 6,
                                  ),
                                  child: CircleAvatar(
                                    radius: 14,
                                    backgroundColor: Colors.transparent,
                                    backgroundImage: AssetImage(
                                      Appimage.customerwoman,
                                    ),
                                  ),
                                ),
                              Flexible(
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 14,
                                    vertical: 10,
                                  ),
                                  margin: const EdgeInsets.symmetric(
                                    vertical: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    color:
                                        isUser ? kUserBubble : kSupportBubble,
                                    borderRadius: BorderRadius.only(
                                      topLeft: const Radius.circular(16),
                                      topRight: const Radius.circular(16),
                                      bottomLeft: Radius.circular(
                                        isUser ? 16 : 4,
                                      ), // small tail
                                      bottomRight: Radius.circular(
                                        isUser ? 4 : 16,
                                      ), // small tail
                                    ),
                                  ),
                                  child: Text(
                                    msg["text"],
                                    style: const TextStyle(
                                      fontSize: 14,
                                      color: kTextPrimary,
                                      height: 1.4,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 2,
                            ),
                            child: Text(
                              msg["time"],
                              style: const TextStyle(
                                fontSize: 11,
                                color: kTimestamp,
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),

                // MESSAGE INPUT BAR
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10,
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(28),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 10,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Row(children: [Image(image: AssetImage(Appimage.pen))]),
                      const SizedBox(width: 8),
                      Expanded(
                        child: TextField(
                          controller: _messageController,
                          decoration: const InputDecoration(
                            hintText: "Type your message here...",
                            hintStyle: TextStyle(
                              color: kIconGray,
                              fontSize: 14,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Image(image: AssetImage(Appimage.sendblue)),
                      const SizedBox(width: 10),
                      Image(image: AssetImage(Appimage.recorderblack)),

                      const SizedBox(width: 10),
                      Image(image: AssetImage(Appimage.camera)),
                      const SizedBox(width: 10),
                      Image(image: AssetImage(Appimage.file)),
                    ],
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
