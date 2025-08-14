import 'package:flutter/material.dart';

class Helpcentrepage extends StatelessWidget {
  const Helpcentrepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xFF00022E),
        title: const Text("Help Centre", style: TextStyle(color: Colors.white)),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "OLX HELP CENTRE",
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            buildTabTile(
              "Important Updates",
              "All important details reagrding OLX Pakistan App Upgradation",
            ),
            buildTabTile(
              "Safety",
              "All safety measures for our valuable curtomer's convinience, are to be found here",
            ),
            buildTabTile(
              "Legal & Privacy Information",
              "There is some Legal & Privacy information for our valuable customer's ease",
            ),
            buildTabTile(
              "Featured Ads & Business Packages",
              "Featured Ads & Business Packages for customer's ease and convinience over here",
            ),
            buildTabTile(
              "Free Ad Limits",
              "There is a description for the guidance of customer and free ad limit",
            ),
            buildTabTile(
              "Boost to Top",
              "This will help our precious customers' take their Ad(s) on the top of the particular category",
            ),
            buildTabTile(
              "OLX Car Inspections - New!",
              "Here we find how we can inspect a car at OLX                     ",
            ),
            buildTabTile(
              "My Account / Profile",
              "It includes all the important information about Account & Profile creation and modification",
            ),
            buildTabTile(
              "Posting and Managing Ads",
              "This may help our valued customers as far as posting and managing ads are concerned that lead to manage account & post Ads with proper guidelines",
            ),
            buildTabTile(
              "Payments & Invoices",
              "Payment methods, Billing details, & General information        ",
            ),
            buildTabTile(
              "Chat",
              "A convenient way for our valued customers to chat with OLX users",
            ),
            buildTabTile(
              "How do I buy on OLX?",
              "Here we will find the procedure to buy and sell on OLX      ",
            ),
            buildTabTile(
              "About Us!",
              "Here we can see contact details and what's new in #NayaOLX and our premium support",
            ),
            SizedBox(height: 50,),
            Text("Recent activity", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
             SizedBox(height: 50,),
             buildHelpTile(title: "Tips for a safe transaction", linkText: "How do I Sell Safely?", commentTime: "5 Hours Ago", commentCount: 56)
          ],
        ),
      ),
    );
  }
}

Widget buildTabTile(String title, String subtitle) {
  return Container(
    margin: const EdgeInsets.symmetric(
      horizontal: 16,
      vertical: 8,
    ), 
    padding: const EdgeInsets.all(18),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 3)),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Color(0xFF134E4A),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          subtitle,
          style: const TextStyle(fontSize: 14, color: Color(0xFF134E4A)),
        ),
      ],
    ),
  );
}

Widget buildHelpTile({
  required String title,
  required String linkText,
  VoidCallback? onLinkTap,
  required String commentTime,
  required int commentCount,
}) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 4),
                  GestureDetector(
                    onTap: onLinkTap??(){},
                    child: Text(
                      linkText,
                      style: const TextStyle(
                        color: Colors.blue,
                        fontSize: 14,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Right side: Comment info
            Row(
              children: [
                Text(
                  "Comment added $commentTime",
                  style: const TextStyle(fontSize: 12, color: Colors.black54),
                ),
                const SizedBox(width: 6),
                const Icon(Icons.comment, size: 16, color: Colors.teal),
                const SizedBox(width: 2),
                Text(
                  "$commentCount",
                  style: const TextStyle(fontSize: 12, color: Colors.black87),
                ),
              ],
            ),
          ],
        ),
      ),
      const Divider(height: 1, color: Colors.black12),
    ],
  );
}
