// chat_detail_screen.dart
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/widget/custombuttom.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

// Simple message model (replace with your backend model)
class Message {
  final String sender;
  final String text;
  final DateTime time;
  final bool isMe;
  final bool isTyping;

  Message({
    required this.sender,
    required this.text,
    required this.time,
    required this.isMe,
    this.isTyping = false,
  });
}

class ChatDetailScreen extends StatefulWidget {
  const ChatDetailScreen({super.key});

  @override
  State<ChatDetailScreen> createState() => _ChatDetailScreenState();
}

class _ChatDetailScreenState extends State<ChatDetailScreen> {
  final TextEditingController _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  // Mock messages — dynamic-ready
  List<Message> messages = [
    Message(
      sender: "You",
      text: "Hi Aisha, where should we meet?",
      time: DateTime.now().subtract(const Duration(minutes: 18)),
      isMe: true,
    ),
    Message(
      sender: "Aisha",
      text: "is typing...",
      time: DateTime.now().subtract(const Duration(minutes: 17, seconds: 50)),
      isMe: false,
      isTyping: true,
    ),
    Message(
      sender: "Aisha",
      text: "Near Ojota BRT terminal",
      time: DateTime.now().subtract(const Duration(minutes: 16)),
      isMe: false,
    ),
    Message(
      sender: "You",
      text: "Okay, I’ll be there by 7:55 👍",
      time: DateTime.now().subtract(const Duration(minutes: 15)),
      isMe: true,
    ),
    Message(
      sender: "Aisha",
      text: "Perfect! I’ll wait there.",
      time: DateTime.now().subtract(const Duration(minutes: 14)),
      isMe: false,
    ),
    Message(
      sender: "You",
      text: "Got it. Please wear something blue so I can spot you 😊",
      time: DateTime.now().subtract(const Duration(minutes: 13)),
      isMe: true,
    ),
  ];

  final String contactAvatar = Appimage.lady;
  final String myAvatar = Appimage.profile;

  @override
  void dispose() {
    _messageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  String _formatTime(DateTime dt) => DateFormat('hh:mm a').format(dt);

  void _sendMessage() {
    final text = _messageController.text.trim();
    if (text.isEmpty) return;
    final msg = Message(
      sender: "You",
      text: text,
      time: DateTime.now(),
      isMe: true,
    );
    setState(() {
      // remove typing placeholder if present
      messages.removeWhere((m) => m.isTyping);
      messages.add(msg);
      _messageController.clear();
    });
    // auto-scroll
    Future.delayed(const Duration(milliseconds: 100), () {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent + 120,
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // total header height used to account for overlap
    const double headerHeight = 160;
    const double floatingCardTopOffset = 60;

    return Scaffold(
      backgroundColor: const Color(0xFFF6F7FB),
      body: Column(
        children: [
          // ----------------- Gradient Header + Floating Contact Card -----------------
          Container(
            height: 280.701171875,

            child: Stack(
              clipBehavior: Clip.none,
              children: [
                // Gradient background
                Card(
                  shadowColor: AppColors.primaryBlue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                      color: Color(0xFFEAF2FF),
                    ),
                    height: 220.701171875,
                    width: double.infinity,
                    child: SafeArea(
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
                              const SizedBox(width: 12),
                              // spacer so title sits left below (we mirror screenshot where title is left aligned)
                              const Spacer(),
                              Text(
                                'Delete',
                                style: TextStyle(
                                  color: AppColors.error,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),

                          // Title Row
                        ],
                      ),
                    ),
                  ),
                ),

                // Floating contact card (centered pill)
                Positioned(
                  top: 150,
                  left: 14,
                  right: 14,
                  bottom: 0,
                  child: Center(
                    child: Container(
                      height: 98,
                      width: 391,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(237, 246, 255, 1),
                            Color.fromRGBO(202, 228, 255, 1),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(54),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12.withOpacity(0.06),
                            blurRadius: 18,
                            offset: const Offset(0, 8),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 26,
                            backgroundImage: AssetImage(contactAvatar),
                          ),
                          const SizedBox(width: 14),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Aisah",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const SizedBox(height: 6),
                                Row(
                                  children: [
                                    Container(
                                      width: 8,
                                      height: 8,
                                      decoration: BoxDecoration(
                                        color: Colors.greenAccent.shade400,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: Colors.white,
                                          width: 1.4,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      "Active Now",
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        color: Colors.grey.shade700,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          // small icon circles
                          _iconCircle(icon: Icons.call, onTap: () {}),
                          const SizedBox(width: 8),
                          _iconCircle(icon: Icons.videocam, onTap: () {}),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // ----------------- Chat messages area -----------------
          Expanded(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Container(
                color: const Color(0xFFF6F7FB),
                padding: const EdgeInsets.all(12),
                child: Stack(
                  children: [
                    // message list
                    ListView.builder(
                      controller: _scrollController,
                      padding: const EdgeInsets.only(bottom: 120),
                      itemCount: messages.length + 1, // +1 for centered "Today"
                      itemBuilder: (context, rawIndex) {
                        // Inject "Today" label before the first actual message (example position)
                        if (rawIndex == 0) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Center(
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 6,
                                  vertical: 6,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12.withOpacity(0.02),
                                      blurRadius: 6,
                                      offset: const Offset(0, 2),
                                    ),
                                  ],
                                ),
                                child: Text(
                                  'Today',
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    color: Colors.grey.shade700,
                                  ),
                                ),
                              ),
                            ),
                          );
                        }

                        final index = rawIndex - 1;
                        final msg = messages[index];

                        if (msg.isTyping) {
                          return _buildTypingRow(contactAvatar);
                        }

                        return msg.isMe
                            ? _buildSentRow(msg, myAvatar)
                            : _buildReceivedRow(msg, contactAvatar);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),

          // ----------------- Message input -----------------
          Container(
            padding: EdgeInsets.fromLTRB(
              16,
              8,
              16,
              MediaQuery.of(context).viewInsets.bottom + 20,
            ),
            color: Colors.transparent,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 45,
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.borderLight),
                      color: AppColors.textWhite,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12.withOpacity(0.02),
                          blurRadius: 6,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: _messageController,
                            decoration: InputDecoration(
                              prefixIcon: Image(
                                image: AssetImage(Appimage.pen),
                              ),

                              hintText: 'Type your message here...',
                              hintStyle: GoogleFonts.poppins(
                                color: Colors.grey.shade600,
                                fontSize: 14,
                              ),
                              border: InputBorder.none,
                            ),
                            onSubmitted: (_) => _sendMessage(),
                          ),
                        ),
                        GestureDetector(
                          onTap: _sendMessage,
                          child: Image(image: AssetImage(Appimage.sendblue)),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),

                Image(image: AssetImage(Appimage.recorderblack)),
                const SizedBox(width: 10),

                Image(image: AssetImage(Appimage.camera)),
                const SizedBox(width: 10),

                Image(image: AssetImage(Appimage.file)),
                const SizedBox(width: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ------------- Helpers & widgets for rows ---------------

  Widget _buildSentRow(Message msg, String avatarUrl) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            // Timestamp above bubble
            Text(
              _formatTime(msg.time),
              style: GoogleFonts.poppins(
                fontSize: 11,
                color: Colors.grey.shade400,
              ),
            ),

            // Bubble and small avatar
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // bubble
                GestureDetector(
                  onTap: () {
                    deletedialogue(context);
                  },
                  child: Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.62,
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.colorBlue,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12.withOpacity(0.06),
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Text(
                      msg.text,
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),

                const SizedBox(width: 8),

                // small avatar aligned center
                CircleAvatar(
                  radius: 16,
                  backgroundImage: AssetImage(avatarUrl),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  void deletedialogue(BuildContext context) {
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
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(image: AssetImage(Appimage.bluemessage)),
                  Text(
                    'Delete message',
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  Text(
                    'Do you really want to delete this conversation?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.textSecondary,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Custombuttom(tittle: 'Delete', width: 86, height: 35),
                      Spacewidgetwidth(space: 10),
                      Text('Cancel', style: TextStyle(color: AppColors.error)),
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

  Widget _buildReceivedRow(Message msg, String avatarUrl) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, right: 80),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(radius: 16, backgroundImage: NetworkImage(avatarUrl)),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // bubble
              Container(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.62,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: AppColors.fadeblue,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12.withOpacity(0.02),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Text(
                  msg.text,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Colors.black87,
                  ),
                ),
              ),

              const SizedBox(height: 6),
              Text(
                _formatTime(msg.time),
                style: GoogleFonts.poppins(
                  fontSize: 11,
                  color: Colors.grey.shade400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTypingRow(String avatarUrl) {
    return Padding(
      padding: const EdgeInsets.only(top: 18, right: 140),
      child: Row(
        children: [
          CircleAvatar(radius: 16, backgroundImage: NetworkImage(avatarUrl)),
          const SizedBox(width: 10),
          Text(
            'Aisah is typing...',
            style: GoogleFonts.poppins(
              color: Colors.grey.shade700,
              fontSize: 13,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }

  Widget _iconCircle({required IconData icon, VoidCallback? onTap}) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        height: 36,
        width: 36,
        decoration: BoxDecoration(
          color: Color.fromRGBO(237, 246, 255, 1),

          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black12.withOpacity(0.03),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Icon(icon, size: 18, color: Colors.blueGrey),
      ),
    );
  }
}
