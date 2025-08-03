import 'package:flutter/material.dart';

class AddsPage extends StatefulWidget {
  const AddsPage({super.key});

  @override
  State<AddsPage> createState() => _AddsPageState();
}

class _AddsPageState extends State<AddsPage> {
  String selected = "All"; // Track which tab is selected

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF00022E),
      appBar: AppBar(
        backgroundColor: Color(0xFF00022E),
        title: Text(
          "My Ads[0]",
          style: TextStyle(color: Colors.white),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(48),
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
                        color:  Colors.white,
                        fontSize: 20,
                        fontWeight: selected == "All"
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                    if (selected == "All")
                      Container(
                        margin: EdgeInsets.only(top: 4),
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
                        color:  Colors.white,
                        fontSize: 20,
                        fontWeight: selected == "Active"
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                    if (selected == "Active")
                      Container(
                        margin: EdgeInsets.only(top: 4),
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
                        color:  Colors.white,
                        fontSize: 20,
                        fontWeight: selected == "Pending"
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                    if (selected == "Pending")
                      Container(
                        margin: EdgeInsets.only(top: 4),
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
                        margin: EdgeInsets.only(top: 4),
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
            Icon(Icons.search, color: Colors.white, size: 100),
            Text(
              'Oops, no results available!',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
