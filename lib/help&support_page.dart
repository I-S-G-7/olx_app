import 'package:flutter/material.dart';
import 'package:olx_app/helpCentrepage.dart';
import 'package:share_plus/share_plus.dart';
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
            (){
            Navigator.of(context, rootNavigator: false).push(
               MaterialPageRoute(builder: (context) => Helpcentrepage()),
            );
          },
          ),
          _buildSettingsTile(
            Icons.feedback,
            "Feedback",
            "Take a moment and let us know how we're doing",
            () {
              showModalBottomSheet(
                context: context,
                backgroundColor: const Color(0xFF00022E),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                ),
                builder: (context) {
                  return Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 40,
                          height: 4,
                          decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        const SizedBox(height: 20),

                        const Text(
                          "Help Us Improve!",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                        const SizedBox(height: 8),

                        const Text(
                          "Tell us what worked and what could be better we're listening",
                          style: TextStyle(color: Colors.white60, fontSize: 15),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text("😡", style: TextStyle(fontSize: 28)),
                            SizedBox(width: 12),
                            Text("☹️", style: TextStyle(fontSize: 28)),
                            SizedBox(width: 12),
                            Text("😐", style: TextStyle(fontSize: 28)),
                            SizedBox(width: 12),
                            Text("🙂", style: TextStyle(fontSize: 28)),
                            SizedBox(width: 12),
                            Text("😍", style: TextStyle(fontSize: 28)),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(width: 8),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 120,
                                  vertical: 12,
                                ),
                              ),
                              child: const Text(
                                "Submit Feedback",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
          _buildSettingsTile(
            Icons.person,
            "Invite friends to OLX",
            "Invite your friends to buy and sell.",
            () {
              showModalBottomSheet(
                context: context,
                backgroundColor: const Color(0xFF00022E),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                ),
                builder: (context) {
                  return Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 4,
                          width: 40,
                          margin: const EdgeInsets.only(bottom: 12),
                          decoration: BoxDecoration(
                            color: Colors.grey[600],
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        const Text(
                          "Invite friends to OLX",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          "Invite your friends to buy and sell.",
                          style: TextStyle(color: Colors.white70),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 16),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _shareOption(Icons.chat, "WhatsApp", () {
                              Share.share(
                                "Hey! Check out OLX: https://olx.com",
                              );
                            }),
                            _shareOption(Icons.facebook, "Facebook", () {
                              Share.share("Join me on OLX! https://olx.com");
                            }),
                            _shareOption(Icons.copy, "Copy Link", () {
                              Share.share("https://olx.com");
                            }),
                          ],
                        ),
                        const SizedBox(height: 16),
                      ],
                    ),
                  );
                },
              );
            },
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

Widget _shareOption(IconData icon, String label, VoidCallback onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Column(
      children: [
        CircleAvatar(
          radius: 28,
          backgroundColor: Colors.white10,
          child: Icon(icon, size: 28, color: Colors.white),
        ),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(color: Colors.white)),
      ],
    ),
  );
}
