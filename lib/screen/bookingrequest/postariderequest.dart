import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/theme/app_theme.dart';
import 'package:rideshareapp/widget/custombuttom.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class PostRideRequestScreen extends StatefulWidget {
  const PostRideRequestScreen({Key? key}) : super(key: key);

  @override
  State<PostRideRequestScreen> createState() => _PostRideRequestScreenState();
}

class _PostRideRequestScreenState extends State<PostRideRequestScreen> {
  final TextEditingController _fromController = TextEditingController();
  final TextEditingController _toController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _timeController = TextEditingController();
  final TextEditingController _passengerController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _notesController = TextEditingController();

  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;

  bool isRecurring = false;
  bool addReturnTrip = false;

  Map<String, bool> days = {
    'Mon': false,
    'Tue': false,
    'Wed': false,
    'Thur': false,
    'Fri': false,
    'Sat': false,
    'Sun': false,
  };

  TimeOfDay departureTime = const TimeOfDay(hour: 12, minute: 0);
  TimeOfDay returnTime = const TimeOfDay(hour: 12, minute: 0);

  @override
  void initState() {
    super.initState();
    _selectedDate = DateTime.now();
    _selectedTime = const TimeOfDay(hour: 7, minute: 0);
    _dateController.text = DateFormat('dd-MM-yyyy').format(_selectedDate!);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _timeController.text = _selectedTime!.format(context);
  }

  @override
  void dispose() {
    _fromController.dispose();
    _toController.dispose();
    _dateController.dispose();
    _timeController.dispose();
    _passengerController.dispose();
    _priceController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  Future<void> _pickDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );
    if (picked != null) {
      setState(() {
        _selectedDate = picked;
        _dateController.text = DateFormat('dd-MM-yyyy').format(picked);
      });
    }
  }

  Future<void> _pickTime() async {
    final picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime!,
    );
    if (picked != null) {
      setState(() {
        _selectedTime = picked;
        _timeController.text = picked.format(context);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SafeArea(
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
                  const Spacer(),
                  _notificationButton(hasDot: true, onTap: () {}),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                'Post a New Trip',
                style: AppThemes.bodySmall.copyWith(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
              ),
              const SizedBox(height: 20),

              const Text(
                "Step 1: Trip Info",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                "Add your trip details so passengers can join you.",
                style: TextStyle(
                  fontSize: 13.9,
                  color: AppColors.textSecondary,
                ),
              ),
              const SizedBox(height: 16),

              // Trip Info container
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Column(
                  children: [
                    _buildInputField(
                      Appimage.location,
                      "From",
                      "e.g., Ikeja, Lagos",
                      _fromController,
                    ),
                    Divider(color: Colors.grey.shade200, thickness: 1),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [Image(image: AssetImage(Appimage.arrow2))],
                    ),
                    _buildInputField(
                      Appimage.s,
                      "To",
                      "e.g., Lekki Phase 1",
                      _toController,
                    ),
                    Divider(color: Colors.grey.shade200, thickness: 1),
                    Row(
                      children: [
                        Expanded(
                          child: _buildDateField(
                            Appimage.calendar,
                            "Date",
                            controller: _dateController,
                            onTap: _pickDate,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: _buildDateField(
                            Appimage.clock,
                            "Time",
                            controller: _timeController,
                            onTap: _pickTime,
                          ),
                        ),
                      ],
                    ),
                    Divider(color: Colors.grey.shade200, thickness: 1),
                    _buildInputField(
                      Appimage.chair,
                      "Available Seats",
                      "e.g., 2",
                      _passengerController,
                    ),
                    Divider(color: Colors.grey.shade200, thickness: 1),
                    _buildInputField(
                      Appimage.tagdollar,
                      "Price Per Seat",
                      "e.g., #1,000",
                      _priceController,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              const Text(
                "Step 2: Vehicle Info ",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                "Add some details about your vehicle to boost rider trust.",
                style: TextStyle(
                  fontSize: 13.9,
                  color: AppColors.textSecondary,
                ),
              ),
              const SizedBox(height: 16),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Column(
                  children: [
                    _buildInputField2(
                      "Make & Model",
                      "e.g., Toyota Corolla",
                      _fromController,
                    ),
                    Divider(color: Colors.grey.shade200, thickness: 1),
                    _buildInputField2(
                      "Year – Vehicle year",
                      "e.g., 2018",
                      _fromController,
                    ),
                    Divider(color: Colors.grey.shade200, thickness: 1),
                    _buildInputField2(
                      "Plate Number",
                      "e.g., ABC123JK",
                      _fromController,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 28),

              const Text(
                "Step 3: Trip Type",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                "Is this a one-time trip or will it happen regularly?",
                style: TextStyle(
                  fontSize: 13.9,
                  color: AppColors.textSecondary,
                ),
              ),
              const SizedBox(height: 12),

              _buildTripTypeToggle(),

              const SizedBox(height: 24),

              const Text(
                "Notes to Passenger:",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
              const SizedBox(height: 6),
              TextField(
                controller: _notesController,
                maxLines: 3,
                decoration: InputDecoration(
                  hintText: "Luggage space available, leave on time",
                  filled: true,
                  hintStyle: const TextStyle(
                    fontSize: 13.9,
                    color: AppColors.textPrimary,
                  ),
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: AppColors.borderLight),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.blueAccent),
                  ),
                ),
              ),

              const SizedBox(height: 30),
              const Text(
                "Ready to Go?",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
              const SizedBox(height: 6),
              const Text(
                "Once everything looks good, click below to share your trip with potential passengers.",
                style: TextStyle(fontSize: 13, color: Colors.black54),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Custombuttom(tittle: 'Submit Trip', width: 131, height: 48),
                ],
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  // --- Widgets ---

  Widget _buildTripTypeToggle() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.borderLight),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _tripTypeButton('One-time - Just once', false),
          const SizedBox(height: 10),
          _tripTypeButton('Recurring - Happens on a schedule', true),
          if (isRecurring) ...[
            const SizedBox(height: 20),
            _buildRecurringSection(),
          ],
        ],
      ),
    );
  }

  Widget _tripTypeButton(String title, bool recurringType) {
    final bool isActive = recurringType ? isRecurring : !isRecurring;
    return Row(
      children: [
        Transform.scale(
          scale: 0.8,
          child: Switch(
            value: isActive,
            activeTrackColor: AppColors.colorBlue,
            activeColor: Colors.white,
            inactiveThumbColor: Colors.white,
            inactiveTrackColor: const Color.fromRGBO(229, 230, 235, 1),
            onChanged: (value) {
              setState(() {
                isRecurring = recurringType;
              });
            },
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            title,
            style: const TextStyle(color: AppColors.textPrimary, fontSize: 14),
          ),
        ),
      ],
    );
  }

  Widget _buildRecurringSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Select the days this trip will occur:",
          style: TextStyle(
            fontSize: 14.5,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
        ),
        const SizedBox(height: 12),

        // --- Days of the week checkboxes ---
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children:
              days.keys.map((day) {
                return Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.borderLight),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Checkbox(
                        value: days[day],
                        activeColor: AppColors.colorBlue,
                        checkColor: Colors.white,
                        side: const BorderSide(color: Color(0xFFE5E6EB)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        onChanged: (value) {
                          setState(() {
                            days[day] = value ?? false;
                          });
                        },
                      ),
                      Text(
                        day,
                        style: const TextStyle(
                          fontSize: 14,
                          color: AppColors.textPrimary,
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
        ),

        const SizedBox(height: 22),

        const Text(
          "Departure Time",
          style: TextStyle(
            fontSize: 14.5,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
        ),
        const SizedBox(height: 8),

        GestureDetector(
          onTap: () async {
            final picked = await showTimePicker(
              context: context,
              initialTime: departureTime,
            );
            if (picked != null) {
              setState(() => departureTime = picked);
            }
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.borderLight),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  departureTime.format(context),
                  style: const TextStyle(fontSize: 15),
                ),
                const Icon(Icons.access_time, color: Colors.grey),
              ],
            ),
          ),
        ),

        const SizedBox(height: 20),

        // --- Add Return Trip toggle row (tappable) ---
        InkWell(
          onTap: () => setState(() => addReturnTrip = !addReturnTrip),
          borderRadius: BorderRadius.circular(8),
          child: Row(
            children: [
              Transform.scale(
                scale: 0.8,
                child: Switch.adaptive(
                  value: addReturnTrip,
                  activeTrackColor: AppColors.colorBlue,
                  activeColor: Colors.white,
                  onChanged: (value) {
                    setState(() => addReturnTrip = value);
                  },
                ),
              ),
              const SizedBox(width: 8),
              const Expanded(
                child: Text(
                  "Add Return Trip?",
                  style: TextStyle(fontSize: 14, color: AppColors.textPrimary),
                ),
              ),
            ],
          ),
        ),

        if (addReturnTrip) ...[
          const SizedBox(height: 8),
          GestureDetector(
            onTap: () async {
              final picked = await showTimePicker(
                context: context,
                initialTime: returnTime,
              );
              if (picked != null) {
                setState(() => returnTime = picked);
              }
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.borderLight),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    returnTime.format(context),
                    style: const TextStyle(fontSize: 15),
                  ),
                  const Icon(Icons.access_time, color: Colors.grey),
                ],
              ),
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildPendingRequests() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
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
                backgroundImage: AssetImage("assets/images/avatar.png"),
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
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber, size: 16),
                        SizedBox(width: 4),
                        Text(
                          "4.2",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        SizedBox(width: 4),
                        Text(
                          "· 85 Trips",
                          style: TextStyle(color: Colors.grey, fontSize: 13),
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
              Icon(
                Icons.location_on_outlined,
                color: Color(0xFF1E88E5),
                size: 18,
              ),
              SizedBox(width: 6),
              Text("Ikeja"),
              SizedBox(width: 6),
              Icon(
                Icons.arrow_forward_ios_rounded,
                size: 13,
                color: Colors.grey,
              ),
              SizedBox(width: 6),
              Text("Lekki"),
            ],
          ),
          const SizedBox(height: 6),
          const Row(
            children: [
              Icon(Icons.event_seat_outlined, color: Colors.grey, size: 18),
              SizedBox(width: 6),
              Text("Seats Booked: 2 Seats"),
            ],
          ),
          const SizedBox(height: 6),
          const Row(
            children: [
              Icon(Icons.calendar_today_outlined, color: Colors.grey, size: 16),
              SizedBox(width: 6),
              Text("Tuesday, April 30, 2025  •  8:00 AM"),
            ],
          ),

          const SizedBox(height: 14),

          // --- Buttons
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1E88E5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 12),
                  ),
                  child: const Text(
                    "Accept",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.red),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 12),
                  ),
                  child: const Text(
                    "Reject",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
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

  Widget _buildTripSummaryCard() {
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
          _buildStatusTag("Pending"),
          const SizedBox(height: 10),

          const Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                color: Color(0xFF1E88E5),
                size: 18,
              ),
              SizedBox(width: 6),
              Text("Ikeja, Lagos"),
              SizedBox(width: 6),
              Icon(
                Icons.arrow_forward_ios_rounded,
                size: 13,
                color: Colors.grey,
              ),
              SizedBox(width: 6),
              Text("Ibadan, Iwo Road"),
            ],
          ),
          const SizedBox(height: 10),

          const Row(
            children: [
              Icon(Icons.calendar_today_outlined, color: Colors.grey, size: 16),
              SizedBox(width: 6),
              Text("Date: May 20, 2025  @ 08:00 AM"),
            ],
          ),
          const SizedBox(height: 10),

          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.note_alt_outlined, color: Colors.grey, size: 18),
              SizedBox(width: 6),
              Text("Notes: "),
              SizedBox(width: 6),
              Expanded(
                child: Chip(
                  label: Text("I Have a Suitcase"),
                  labelStyle: TextStyle(fontSize: 13),
                  backgroundColor: Color(0xFFF1F4F8),
                ),
              ),
            ],
          ),

          const SizedBox(height: 6),
          const Row(
            children: [
              Icon(Icons.event_seat_outlined, color: Colors.grey, size: 18),
              SizedBox(width: 6),
              Text("Seats Requested: 2 Seats"),
            ],
          ),
          const SizedBox(height: 6),
          const Row(
            children: [
              Icon(Icons.repeat, color: Colors.grey, size: 18),
              SizedBox(width: 6),
              Text("Recurring: Yes (Mon, Wed)"),
            ],
          ),
          const SizedBox(height: 12),

          const Text(
            "Price: ₦2500 Per Day",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: Colors.black,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatusTag(String status) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: const Color(0xFFFFF3E0),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        status,
        style: const TextStyle(
          color: Color(0xFFE65100),
          fontSize: 12.5,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _buildInputField(
    String icon,
    String label,
    String hint,
    TextEditingController controller,
  ) {
    return Column(
      children: [
        Row(
          children: [
            const SizedBox(width: 28),
            Text(
              label,
              style: const TextStyle(
                fontSize: 14.48,
                color: AppColors.textPrimary,
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              fit: BoxFit.cover,
              height: 22,
              width: 22,
              image: AssetImage(icon),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                  hintText: hint,
                  hintStyle: TextStyle(
                    fontSize: 17,
                    color: AppColors.textSecondary,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildInputField2(
    String label,
    String hint,
    TextEditingController controller,
  ) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              label,
              style: const TextStyle(
                fontSize: 14.48,
                color: AppColors.textPrimary,
              ),
            ),
          ],
        ),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(fontSize: 17, color: AppColors.textSecondary),
            border: InputBorder.none,
          ),
        ),
      ],
    );
  }

  Widget _buildDateField(
    String icon,
    String label, {
    required TextEditingController controller,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Image(
            height: 22,
            width: 22,
            fit: BoxFit.cover,
            image: AssetImage(icon),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: TextField(
              controller: controller,
              enabled: false,
              decoration: InputDecoration(
                labelText: label,
                labelStyle: const TextStyle(
                  fontSize: 17,
                  color: AppColors.textPrimary,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _notificationButton({
    required bool hasDot,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              border: Border.all(color: AppColors.borderLight),
            ),
            child: const Image(image: AssetImage(Appimage.notiff)),
          ),
          if (hasDot)
            Positioned(
              right: -2,
              top: -2,
              child: CircleAvatar(
                radius: 6,
                backgroundColor: AppColors.error,
                child: Center(
                  child: Text(
                    '2',
                    style: AppThemes.titleSmall.copyWith(fontSize: 8),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
