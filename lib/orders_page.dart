import 'package:flutter/material.dart';
import 'package:olx_app/verify_number_screen.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({super.key});

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  String selected = "Active";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00022E),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xFF00022E),
        title: const Text(
          "Bought Packages",
          style: TextStyle(color: Colors.white),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(48),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
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
                  setState(() => selected = "Scheduled");
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Scheduled",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: selected == "Scheduled"
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                    if (selected == "Scheduled")
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
                  setState(() => selected = "Expired");
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Expired",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: selected == "Expired"
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                    if (selected == "Expired")
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.local_offer, color: Colors.white, size: 100),
            const Text(
              'No packages available',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (selected == "Expired")
              Text(
                'You don\'t have any expired packages',
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
            if (selected != "Expired")
              Text(
                selected == "Scheduled"
                    ? 'You don\'t have any scheduled packages'
                    : 'You don\'t have any active packages',
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
            const SizedBox(height: 5),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                side: const BorderSide(color: Colors.white24),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.of(context, rootNavigator: true).push(
                    MaterialPageRoute(
                      builder: (context) => VerifyNumberScreen(),
                    ),
                  );
                },
                child: const Text(
                  "Buy Discounted Packages",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
