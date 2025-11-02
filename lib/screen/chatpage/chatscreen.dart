import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/route/app_routes.dart';
import 'package:rideshareapp/services/navigation_service.dart';

// Mock Chat Model
class ChatModel {
  final String name;
  final String lastMessage;
  final String avatarUrl;
  final DateTime time;
  final bool isMe;

  ChatModel({
    required this.name,
    required this.lastMessage,
    required this.avatarUrl,
    required this.time,
    this.isMe = false,
  });
}

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _searchController = TextEditingController();
  final List<ChatModel> _chats = [
    ChatModel(
      name: 'You',
      lastMessage: 'Hi Aisha, where should we meet?',
      avatarUrl: Appimage.profile, // placeholder profile image
      time: DateTime.now().subtract(const Duration(days: 1)),
      isMe: true,
    ),
    ChatModel(
      name: 'Aisha',
      lastMessage: 'Near Ojota BRT terminal',
      avatarUrl: Appimage.lady, // placeholder profile image
      time: DateTime.now().subtract(const Duration(hours: 2)),
    ),
  ];

  List<ChatModel> _filteredChats = [];
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    _filteredChats = _chats;
    _searchController.addListener(_onSearchChanged);
  }

  void _onSearchChanged() {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(const Duration(milliseconds: 300), () {
      final query = _searchController.text.toLowerCase();
      setState(() {
        _filteredChats =
            _chats
                .where(
                  (chat) =>
                      chat.name.toLowerCase().contains(query) ||
                      chat.lastMessage.toLowerCase().contains(query),
                )
                .toList();
      });
    });
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _searchController.dispose();
    super.dispose();
  }

  String _formatTime(DateTime dt) {
    final now = DateTime.now();
    if (now.difference(dt).inDays > 0) {
      return DateFormat.MMMd().format(dt);
    }
    return DateFormat.jm().format(dt);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: const Color(0xFFF7FAFF),
      body: Column(
        children: [
          // Header
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFEAF2FF), Color(0xFFF7FAFF)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Top Row
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
                          const SizedBox(height: 10),
                          // Title Row
                          Row(
                            children: [
                              Text(
                                "Chats",
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  color: AppColors.textPrimary,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(width: 6),
                            ],
                          ),
                          const SizedBox(height: 16),
                          // Search bar
                          Row(
                            children: [
                              Container(
                                height: 56,
                                width: 356,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: AppColors.borderLight,
                                  ),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: TextField(
                                  controller: _searchController,
                                  decoration: InputDecoration(
                                    hint: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Search here..",
                                          textAlign: TextAlign.justify,
                                        ),
                                      ],
                                    ),
                                    hintStyle: GoogleFonts.poppins(
                                      color: Colors.grey.shade500,
                                      fontSize: 14,
                                    ),
                                    prefixIcon: Image(
                                      image: AssetImage(Appimage.searchgrey),
                                    ),
                                    suffixIcon: Image(
                                      image: AssetImage(Appimage.recorder),
                                    ),

                                    border: InputBorder.none,
                                  ),
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

          // Chat list
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: _filteredChats.length,
              itemBuilder: (context, index) {
                final chat = _filteredChats[index];
                return ChatTile(
                  chat: chat,
                  formattedTime: _formatTime(chat.time),
                  onTap: () {
                    NavigationService().navigateTo(AppRoutes.chatdetailscreen);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// ---------------------- Chat Tile Widget ----------------------
class ChatTile extends StatelessWidget {
  final ChatModel chat;
  final String formattedTime;
  final VoidCallback? onTap;

  const ChatTile({
    super.key,
    required this.chat,
    required this.formattedTime,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(18),
      onTap: onTap,
      child: Container(
        height: 86.20548248291016,
        width: 392.568115234375,
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: Colors.black12.withOpacity(0.05),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 22,
                  backgroundImage: AssetImage(chat.avatarUrl),
                ),
                Positioned(
                  bottom: 2,
                  right: 2,
                  child: Container(
                    width: 9,
                    height: 9,
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 1.5),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    chat.name,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    chat.lastMessage,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.poppins(
                      color: AppColors.textSecondary,

                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 6),
            Text(
              formattedTime,
              style: GoogleFonts.poppins(
                fontSize: 11,
                color: Colors.grey.shade600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
