import 'package:flutter/material.dart';

class ManageAccountPage extends StatelessWidget {
  const ManageAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00022E),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xFF00022E),
        title: const Text(
          "Manage Account",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSettingsTile( "Show phone number in ads", "Hide or show your phone number in ads", true, null),
          _buildSettingsTile("Change password", "Set new unique password", false, null),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text("Delete Account", style: TextStyle(color: Colors.grey, decoration: TextDecoration.underline, fontWeight: FontWeight.bold),),
          ),
          Container(
                        margin: EdgeInsets.only(left: 10.5),
                        height: 2,
                        width: 100,
                        color: Colors.grey,
                      ),
        ],
      ),
    );
  }
}

Widget _buildSettingsTile(
  String title,
  String subtitle,
  bool button,
  void Function()? onT,
) {
  return ListTile(
    contentPadding: const EdgeInsets.symmetric(horizontal: 8),
    title: Text(title, style: const TextStyle(color: Colors.white)),
    subtitle: subtitle.isNotEmpty
        ? Text(subtitle, style: const TextStyle(color: Colors.white60))
        : null,
    trailing: button == true
        ? Switch(
            value: true,
            onChanged: (value) {},
            activeColor: Colors.white,
            inactiveThumbColor: Colors.black,
            inactiveTrackColor: Colors.white30,
          )
        : const Icon(Icons.chevron_right, color: Colors.white),
    onTap: () {
      if (onT != null) {
        onT();
      }
    },
  );
}
