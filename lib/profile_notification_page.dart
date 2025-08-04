import 'package:flutter/material.dart';

class ProfileNotificationPage extends StatelessWidget {
  const ProfileNotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00022E),
      appBar: AppBar(
        backgroundColor: const Color(0xFF00022E),
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          "Notifications",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.notifications, color: Colors.white, size: 120),
            SizedBox(height: 20),
            Text(
              "No notifications yet!",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 3),
            Text(
              "View your ads update here",
              style: TextStyle(color: Colors.white, fontSize: 13),
            ),
          ],
        ),
      ),
    );
  }
}
