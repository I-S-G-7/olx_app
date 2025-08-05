import 'package:flutter/material.dart';

class HelpsupportPage extends StatelessWidget {
  const HelpsupportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00022E),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xFF00022E),
        title: const Text(
          "Help & Support",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          _buildSettingsTile(
            Icons.help,
            "Help Centre",
            "See FAQ and contacr support.",
            null,
          ),
          _buildSettingsTile(
            Icons.feedback,
            "Feedback",
            "Take a moment and let us know how we're doing",
            null,
          ),
          _buildSettingsTile(
            Icons.person,
            "Invite friends to OLX",
            "Invite your friends to buy and sell.",
            null,
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 8),
            leading: Icon(Icons.info, color: Colors.white),
            title: Text("Version", style: const TextStyle(color: Colors.white)),
            subtitle: Text(
              "16.19",
              style: const TextStyle(color: Colors.white60),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildSettingsTile(
  IconData icon,
  String title,
  String subtitle,
  void Function()? onT,
) {
  return ListTile(
    contentPadding: const EdgeInsets.symmetric(horizontal: 8),
    leading: Icon(icon, color: Colors.white),
    title: Text(title, style: const TextStyle(color: Colors.white)),
    subtitle: subtitle.isNotEmpty
        ? Text(subtitle, style: const TextStyle(color: Colors.white60))
        : null,
    trailing: const Icon(Icons.chevron_right, color: Colors.white),
    onTap: () {
      if (onT != null) {
        onT();
      }
    },
  );
}
