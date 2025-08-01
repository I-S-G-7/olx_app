import 'package:flutter/material.dart';

class AddsPage extends StatelessWidget {
  const AddsPage({super.key});

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
                onPressed: () {}, // add logic
                child: Text("All", style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
              TextButton(
                onPressed: () {},
                child: Text("Active", style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
              TextButton(
                onPressed: () {},
                child: Text("Pending", style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
              TextButton(
                onPressed: () {},
                child: Text("Inactive", style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.search, color: Colors.white, size: 100,),
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