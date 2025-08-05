import 'package:flutter/material.dart';
import 'package:olx_app/verify_number_screen.dart';

class AddsPage extends StatefulWidget {
  const AddsPage({super.key});

  @override
  State<AddsPage> createState() => _AddsPageState();
}

class _AddsPageState extends State<AddsPage> {
  String selected = "All";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00022E),
      appBar: AppBar(
        backgroundColor: const Color(0xFF00022E),
        title: const Text("My Ads[0]", style: TextStyle(color: Colors.white)),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(48),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {
                  setState(() => selected = "All");
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "All",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: selected == "All"
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                    if (selected == "All")
                      Container(
                        margin: const EdgeInsets.only(top: 4),
                        height: 2,
                        width: 70,
                        color: Colors.white,
                      ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() => selected = "Active");
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Active",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: selected == "Active"
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                    if (selected == "Active")
                      Container(
                        margin: const EdgeInsets.only(top: 4),
                        height: 2,
                        width: 70,
                        color: Colors.white,
                      ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() => selected = "Pending");
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Pending",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: selected == "Pending"
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                    if (selected == "Pending")
                      Container(
                        margin: const EdgeInsets.only(top: 4),
                        height: 2,
                        width: 70,
                        color: Colors.white,
                      ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() => selected = "Inactive");
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Inactive",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: selected == "Inactive"
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                    if (selected == "Inactive")
                      Container(
                        margin: const EdgeInsets.only(top: 4),
                        height: 2,
                        width: 70,
                        color: Colors.white,
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context, rootNavigator: true).push(
                MaterialPageRoute(
                  builder: (context) => const VerifyNumberScreen(),
                ),
              );
            },
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.local_offer, color: Colors.white),
                  SizedBox(width: 5),
                  const Text(
                    "Discounted Prices",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 210),
                  Row(
                    children: const [
                      Icon(Icons.chevron_right, color: Colors.white),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.search, color: Colors.white, size: 100),
                  Text(
                    'Oops, no results available!',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
