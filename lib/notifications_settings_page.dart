import 'package:flutter/material.dart';

class NotificationsSettingsPage extends StatelessWidget {
  const NotificationsSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00022E),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xFF00022E),
        title: const Text(
          "Notification Settings",
          style: TextStyle(color: Colors.white),
        ),
    ),
    body: Column(
      children: [
        _buildSettingsTile("Recommendations", "Receive recommendations based on your activity."),
        _buildSettingsTile("Special Communication & offers", "Receive updates, offers, surveys and more")
      ],
    ),
    );
  }
}
 Widget _buildSettingsTile(String title, String subtitle) {
  return ListTile(
    contentPadding: const EdgeInsets.symmetric(horizontal: 8),
    title: Text(title, style: const TextStyle(color: Colors.white)),
    subtitle: subtitle.isNotEmpty
        ? Text(subtitle, style: const TextStyle(color: Colors.white60))
        : null,
    trailing: Switch(
      value: true, 
      onChanged: (value) {},
      activeColor: Colors.white,
      inactiveThumbColor: Colors.black,
      inactiveTrackColor: Colors.white30,
    ),
  );
}
