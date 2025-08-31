import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rideshareapp/controllers/bottom_nav_controller.dart';

import '../../theme/app_theme.dart';

// My Trips Screen
class MyTripsScreen extends GetView<BottomNavController> {
  const MyTripsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      
      appBar: AppBar(
        title: Text('My Trips'),
        
        elevation: 0,
        foregroundColor: Colors.black87,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.directions_car_outlined,
              size: 80,
              color: Colors.grey[400],
            ),
            SizedBox(height: 16),
            Text(
              'No trips yet',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Your trip history will appear here',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Receipts Screen
class ReceiptsScreen extends GetView<BottomNavController> {
  const ReceiptsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Set the current index to 2 when this screen is shown
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   controller.setCurrentIndex(2);
    // });

    return Scaffold(
      
      appBar: AppBar(
        title: Text('Receipts'),
        
        elevation: 0,
        foregroundColor: Colors.black87,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.receipt_long_outlined,
              size: 80,
              color: Colors.grey[400],
            ),
            SizedBox(height: 16),
            Text(
              'No receipts yet',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Your payment receipts will appear here',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Account Screen
class AccountScreen extends GetView<BottomNavController> {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Set the current index to 3 when this screen is shown
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   controller.setCurrentIndex(3);
    // });

    return Scaffold(
      
      appBar: AppBar(
        title: Text('Account'),
        
        elevation: 0,
        foregroundColor: Colors.black87,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            // Profile section
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[50],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey[300],
                    child: Icon(Icons.person, color: Colors.grey[600], size: 30),
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ahmed',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'ahmed@example.com',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            
            // Account options
            _buildAccountOption(
              icon: Icons.edit_outlined,
              title: 'Edit Profile',
              onTap: () {},
            ),
            _buildAccountOption(
              icon: Icons.payment_outlined,
              title: 'Payment Methods',
              onTap: () {},
            ),
            _buildAccountOption(
              icon: Icons.settings_outlined,
              title: 'Settings',
              onTap: () {},
            ),
            _buildAccountOption(
              icon: Icons.help_outline,
              title: 'Help & Support',
              onTap: () {},
            ),
             _buildAccountOption(
              icon: Icons.brightness_6,
              title: 'Theme',
              onTap: () {
                 Get.find<AppThemes>().toggleTheme();
              },
              
            ),
            _buildAccountOption(
              icon: Icons.logout,
              title: 'Logout',
              onTap: () {},
              isLogout: true,
            ),
           
          ],
        ),
      ),
    );
  }

  Widget _buildAccountOption({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
    bool isLogout = false,
  }) {
    return ListTile(
      leading: Icon(
        icon,
        color: isLogout ? Colors.red : Colors.grey[600],
      ),
      title: Text(
        title,
        style: TextStyle(
          
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        size: 16,
        color: Colors.grey[400],
      ),
      onTap: onTap,
    );
  }
}