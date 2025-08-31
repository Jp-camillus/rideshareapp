import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/theme/app_theme.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

import '../../widget/network_image.dart';
import '../../widget/ride_widgets.dart';

class DashboardHome extends StatelessWidget {
  const DashboardHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(15.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header with profile and notification
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: Colors.grey[600],
                          size: 16.sp,
                        ),
                        SizedBox(width: 4.w),
                        Text(
                          'Lagos (Ojota Bus Terminal)',
                          style: AppThemes.bodySmall,
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Icon(
                          Icons.notifications_outlined,
                          color: Colors.grey[600],
                          size: 24.sp,
                        ),
                        Positioned(
                          right: 0,
                          top: 0,
                          child: Container(
                            width: 8.w,
                            height: 8.h,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(height: 15.h),
                
                // Welcome message
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Welcome Back, ',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text: 'Ahmed',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ),

                // Balance section
                Padding(
                  padding: EdgeInsets.only(top: 16.h),
                  child: Row(
                    children: [
                      Icon(
                        Icons.account_balance_wallet_outlined,
                        color: Colors.grey[600],
                        size: 16.sp,
                      ),
                      SizedBox(width: 4.w),
                      Text(
                        '₦5,740',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      SizedBox(width: 4.w),
                      Icon(
                        Icons.remove_red_eye_outlined,
                        color: Colors.grey[400],
                        size: 16.sp,
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 22.h),

                // Join a Trip card
                Container(
                  height: 134.h,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [AppColors.primaryBlue, AppColors.primaryOrange],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(22.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(15.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(
                              "asset/svg/trip_van_ic_outlined.svg",
                              width: 32,
                              height: 32,
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                              size: 20.sp,
                            ),
                          ],
                        ),
                        Text(
                          'Join a Trip',
                          style: AppThemes.bodyLarge.copyWith(
                            color: AppColors.textWhite,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Search for rides or book a seat',
                          style: AppThemes.bodySmall.copyWith(
                            color: AppColors.textWhite,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 20.h),

                // Action cards row
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 134.h,
                        decoration: BoxDecoration(
                          color: AppColors.colorBlue,
                          borderRadius: BorderRadius.circular(22.r),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(15.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SvgPicture.asset(
                                    "asset/svg/trip_van_ic_outlined.svg",
                                    width: 32,
                                    height: 32,
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                    size: 20.sp,
                                  ),
                                ],
                              ),
                              Text(
                                'Post a Trip',
                                style: AppThemes.bodyLarge.copyWith(
                                  color: AppColors.textWhite,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                'Offer seat as a Driver',
                                style: AppThemes.bodySmall.copyWith(
                                  color: AppColors.textWhite,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 16.w),

                    Expanded(
                      child: Container(
                        height: 134.h,
                        decoration: BoxDecoration(
                          color: AppColors.primaryOrange,
                          borderRadius: BorderRadius.circular(22.r),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(15.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SvgPicture.asset(
                                    "asset/svg/trip_van_ic_outlined.svg",
                                    width: 32,
                                    height: 32,
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                    size: 20.sp,
                                  ),
                                ],
                              ),
                              Text(
                                'Send Package',
                                style: AppThemes.bodyLarge.copyWith(
                                  color: AppColors.textWhite,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                'Create delivery order',
                                style: AppThemes.bodySmall.copyWith(
                                  color: AppColors.textWhite,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 22.h),

                // Top Rated Driver section
                Row(
                  children: [
                    Text(
                      'Top Rated Driver',
                      style: AppThemes.titleSmall,
                    ),
                  ],
                ),

                SizedBox(height: 12.h),

                // Driver profiles
                Stack(
                  children: [
                    NetworkAvatar(
                      imageUrl: 'https://images.unsplash.com/photo-1618641986557-1ecd230959aa?q=80&w=387&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                      radius: 16,
                    ),
                    Positioned(
                      left: 20.w,
                      child: NetworkAvatar(
                        imageUrl: 'https://images.unsplash.com/photo-1618641986557-1ecd230959aa?q=80&w=387&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                        radius: 16,
                      ),
                    ),
                    Positioned(
                      left: 40.w,
                      child: NetworkAvatar(
                        imageUrl: 'https://images.unsplash.com/photo-1618641986557-1ecd230959aa?q=80&w=387&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                        radius: 16,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 29.h),

                // Your Upcoming Trips Section
                SectionHeader(
                  title: 'Your Upcoming Trips',
                  onViewAll: () => Get.toNamed('/trips'),
                ),
                
                SizedBox(height: 12.h),
                
                  SizedBox(
                  height: 280.h, // Fixed height for the horizontal scroll
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(right: 15.w),
                    itemCount: 3, // Replace with your actual trip count
                    itemBuilder: (context, index) {
                      return Container(
                        width: 300.w, // Fixed width for each card
                        margin: EdgeInsets.only(right: 12.w),
                        child: UpcomingTripCard(
                          driverName: 'Aisha B.',
                          carModel: '4.5 • 25 Trip',
                          price: '₦3,500',
                          fromLocation: 'Lagos (Oba Oba Terminal)',
                          toLocation: 'Ibadan',
                          departureTime: '8:00 AM',
                          availableSeats: '2',
                          onViewTrip: () => Get.toNamed('/trip-details'),
                          onChat: () => Get.toNamed('/chat'),
                        ),
                      );
                    },
                  ),
                ),

                SizedBox(height: 24.h),

                // Booking & Request Section
                SectionHeader(
                  title: 'Booking & Request',
                  onViewAll: () => Get.toNamed('/all-requests'),
                ),
                
                SizedBox(height: 12.h),
                
                // Single Booking Request Card (no Expanded needed)
                SizedBox(
                  height: 200.h, // Fixed height for the horizontal scroll
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(right: 15.w),
                    itemCount: 4, // Replace with your actual request count
                    itemBuilder: (context, index) {
                      return Container(
                        width: 280.w,
                         // Fixed width for each card
                        margin: EdgeInsets.only(right: 12.w),
                        child: BookingRequestCard(
                          passengerName: 'Sarah O.',
                          rating: '4.2',
                          tripType: '45 Trip',
                          fromLocation: 'Ikeja',
                          toLocation: 'Lekki',
                          passengerAvatarUrl: 'https://example.com/sarah.jpg',
                          status: index % 3 == 0 ? 'Pending' : index % 2 == 1 ? 'Accepted' : 'Rejected',
                          onAccept: () {
                            print('Accepted Sarah\'s request');
                            _handleAcceptRequest('sarah_123');
                          },
                          onReject: () {
                            print('Rejected Sarah\'s request');
                            _handleRejectRequest('sarah_123');
                          },
                        ),
                      );
                    },
                  ),
                ),

                SizedBox(height: 20.h),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _handleAcceptRequest(String requestId) {
    Get.dialog(
      AlertDialog(
        title: Text('Accept Request'),
        content: Text('Are you sure you want to accept this booking request?'),
        actions: [
          TextButton(
            onPressed: () => Get.back(),
            child: Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.back();
              Get.snackbar(
                'Success',
                'Booking request accepted!',
                backgroundColor: Colors.green,
                colorText: Colors.white,
              );
            },
            child: Text('Accept'),
          ),
        ],
      ),
    );
  }

  void _handleRejectRequest(String requestId) {
    Get.dialog(
      AlertDialog(
        title: Text('Reject Request'),
        content: Text('Are you sure you want to reject this booking request?'),
        actions: [
          TextButton(
            onPressed: () => Get.back(),
            child: Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.back();
              Get.snackbar(
                'Request Rejected',
                'Booking request has been rejected.',
                backgroundColor: Colors.red,
                colorText: Colors.white,
              );
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: Text('Reject'),
          ),
        ],
      ),
    );
  }
}