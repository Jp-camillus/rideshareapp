import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/widget/custombuttom.dart';
import 'package:rideshareapp/widget/network_image.dart';


// Upcoming Trip Card Widget
class UpcomingTripCard extends StatelessWidget {
  final String driverName;
  final String carModel;
  final String price;
  final String fromLocation;
  final String toLocation;
  final String departureTime;
  final String availableSeats;
  final String driverAvatarUrl;
  final VoidCallback? onViewTrip;
  final VoidCallback? onChat;
  final VoidCallback? onCancel;

  const UpcomingTripCard({
    super.key,
    required this.driverName,
    required this.carModel,
    required this.price,
    required this.fromLocation,
    required this.toLocation,
    required this.departureTime,
    required this.availableSeats,
    this.driverAvatarUrl = '',
    this.onViewTrip,
    this.onChat,
    this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    
    return Container(
      margin: EdgeInsets.only(bottom: 6.h),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8.r,
            offset: Offset(0, 2.h),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Driver info and price
          Row(
            children: [
              NetworkAvatar(
                imageUrl: driverAvatarUrl,
                radius: 20,
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      driverName,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Text(
                      carModel,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color:  AppColors.primaryOrange,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                price,
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          
          
          Divider(color: AppColors.borderLight),
         
          
          // Route info
          Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                color: Colors.grey[600],
                size: 16.sp,
              ),
              SizedBox(width: 8.w),
              Expanded(
                child: Text(
                  fromLocation,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Colors.grey[600],
                  ),
                ),
              ),
            ],
          ),
          
          SizedBox(height: 8.h),
          
          Row(
            children: [
              Icon(
                Icons.flag_outlined,
                color: Colors.grey[600],
                size: 16.sp,
              ),
              SizedBox(width: 8.w),
              Expanded(
                child: Text(
                  toLocation,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Colors.grey[600],
                  ),
                ),
              ),
            ],
          ),
          
           Divider(color: AppColors.borderLight),
          
          // Trip details
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildTripDetail(
                icon: Icons.access_time,
                label: departureTime,
                context: context,
              ),
              _buildTripDetail(
                icon: Icons.event_seat,
                label: '$availableSeats seats',
                context: context,
              ),
              _buildTripDetail(
                icon: Icons.people_outline,
                label: 'Booked',
                context: context,
              ),
            ],
          ),
          
           Divider(color: AppColors.borderLight),
          
          // Action buttons
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: onViewTrip,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.colorBlue,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 8.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(83.r),
                    ),
                  ),
                  child: Text(
                    'View Trip',
                    style: TextStyle(fontSize: 14.sp),
                  ),
                ),
              ),
              SizedBox(width: 8.w),
              Expanded(
                child: OutlinedButton(
                  onPressed: onChat,
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Theme.of(context).primaryColor,
                    padding: EdgeInsets.symmetric(vertical: 8.h),
                    side: BorderSide(color: Theme.of(context).primaryColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(83.r),
                    ),
                  ),
                  child: Text(
                    'Chat',
                    style: TextStyle(fontSize: 14.sp),
                  ),
                ),
              ),
              SizedBox(width: 8.w),
              TextButton(
                onPressed: onCancel,
               
                child: Text(
                  'Cancel',
                  style: TextStyle(fontSize: 14.sp, color: AppColors.error),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTripDetail({
    required IconData icon,
    required String label,
    required BuildContext context,
  }) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.grey[600],
          size: 20.sp,
        ),
        SizedBox(height: 4.h),
        Text(
          label,
          style: TextStyle(
            fontSize: 12.sp,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }
}

// Booking Request Card Widget
class BookingRequestCard extends StatelessWidget {
  final String passengerName;
  final String rating;
  final String tripType;
  final String fromLocation;
  final String toLocation;
  final String passengerAvatarUrl;
  final String status; // 'Pending', 'Accepted', 'Rejected'
  final VoidCallback? onAccept;
  final VoidCallback? onReject;

  const BookingRequestCard({
    super.key,
    required this.passengerName,
    required this.rating,
    required this.tripType,
    required this.fromLocation,
    required this.toLocation,
    this.passengerAvatarUrl = '',
    this.status = 'Pending',
    this.onAccept,
    this.onReject,
  });

  @override
  Widget build(BuildContext context) {
    
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8.r,
            offset: Offset(0, 2.h),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Passenger info and status
          Row(
            children: [
              NetworkAvatar(
                imageUrl: passengerAvatarUrl,
                radius: 20,
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      passengerName,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 14.sp,
                        ),
                        SizedBox(width: 4.w),
                        Text(
                          rating,
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: AppColors.primaryOrange,
                          ),
                        ),
                        SizedBox(width: 8.w),
                        Text(
                          tripType,
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                decoration: BoxDecoration(
                  color: _getStatusColor(status).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Text(
                  status,
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: _getStatusColor(status),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          
          SizedBox(height: 16.h),
          
          // Route info
          Row(
            children: [
              Icon(
                Icons.trip_origin,
                color: Colors.grey[600],
                size: 16.sp,
              ),
              SizedBox(width: 8.w),
              Text(
                fromLocation,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(width: 16.w),
              Icon(
                Icons.arrow_forward,
                color: Colors.grey[400],
                size: 16.sp,
              ),
              SizedBox(width: 16.w),
              Icon(
                Icons.location_on_outlined,
                color: Colors.grey[600],
                size: 16.sp,
              ),
              SizedBox(width: 8.w),
              Text(
                toLocation,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
          
          if (status == 'Pending') ...[
            SizedBox(height: 16.h),
            
            // Action buttons for pending requests
            Row(
              children: [
                  Custombuttomwithicon(
                    width: 100,
                  tap: () {},
                  tittle: 'Accept',
                  icon: Icon(Icons.circle, color: Colors.white, size: 0,),
                ),
                
                SizedBox(width: 12.w),
                Expanded(
                  child: OutlinedButton(
                    onPressed: onReject,
                    style: OutlinedButton.styleFrom(
                      foregroundColor: AppColors.error,
                      padding: EdgeInsets.symmetric(vertical: 8.h),
                      side: BorderSide(color: Colors.transparent),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                    ),
                    child: Text(
                      'Reject',
                      style: TextStyle(fontSize: 16.sp),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }

  Color _getStatusColor(String status) {
    switch (status.toLowerCase()) {
      case 'pending':
        return Colors.orange;
      case 'accepted':
        return Colors.green;
      case 'rejected':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }
}

// Section Header Widget
class SectionHeader extends StatelessWidget {
  final String title;
  final VoidCallback? onViewAll;

  const SectionHeader({
    super.key,
    required this.title,
    this.onViewAll,
  });

  @override
  Widget build(BuildContext context) {
    
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        if (onViewAll != null)
          TextButton(
            onPressed: onViewAll,
            child: Text(
              'View all',
              style: TextStyle(
                fontSize: 14.sp,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
      ],
    );
  }
}

// Usage Example:
class TripCardsExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Your Upcoming Trips Section
        SectionHeader(
          title: 'Your Upcoming Trips',
          onViewAll: () {
            // Navigate to all trips
          },
        ),
        
        SizedBox(height: 12.h),
        
        UpcomingTripCard(
          driverName: 'Aisha B.',
          carModel: '4.5 • 25 Trip',
          price: '₦3,500',
          fromLocation: 'Lagos (Oba Oba Terminal)',
          toLocation: 'Ibadan (New Garage)',
          departureTime: '8:00 AM',
          availableSeats: '2',
          driverAvatarUrl: 'https://example.com/avatar1.jpg',
          onViewTrip: () {
            print('View trip tapped');
          },
          onChat: () {
            print('Chat tapped');
          },
          onCancel: () {
            print('Cancel tapped');
          },
        ),
        
        SizedBox(height: 24.h),
        
        // Booking & Request Section
        SectionHeader(
          title: 'Booking & Request',
          onViewAll: () {
            // Navigate to all requests
          },
        ),
        
        SizedBox(height: 12.h),
        
        BookingRequestCard(
          passengerName: 'Sarah O.',
          rating: '4.2',
          tripType: '• 45 Trip',
          fromLocation: 'Ikeja',
          toLocation: 'Lekki',
          passengerAvatarUrl: 'https://example.com/avatar2.jpg',
          status: 'Pending',
          onAccept: () {
            print('Accept request');
          },
          onReject: () {
            print('Reject request');
          },
        ),
      ],
    );
  }
}