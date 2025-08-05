import 'package:flutter/material.dart';
import 'package:olx_app/manage_account_page.dart';
import 'package:olx_app/notifications_settings_page.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00022E),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xFF00022E),
        title: const Text(
          "Settings",
          style: TextStyle(color: Colors.white),
        ),
    ),
    body: Column(
      children: [
        _buildSettingsTile(Icons.notifications, "Notifications Settings", "Recommendations and special communication",() {
                    Navigator.of(context, rootNavigator: true).push(
                      MaterialPageRoute(builder: (context) => NotificationsSettingsPage()),
                    );
                  },),
        _buildSettingsTile(Icons.manage_accounts, "Manage Account", "Take action on account", () {
                    Navigator.of(context, rootNavigator: true).push(
                      MaterialPageRoute(builder: (context) => ManageAccountPage()),
                    );
                  },)
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