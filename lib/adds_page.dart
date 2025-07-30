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
      bottomNavigationBar: BottomNavigationBar(
          
          backgroundColor: Color(0xFF333366),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chats"),
            BottomNavigationBarItem(
              icon: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: SweepGradient(
                    colors: [
                      Colors.red,
                      Colors.orange,
                      Colors.yellow,
                      Colors.green,
                      Colors.blue,
                      Colors.indigo,
                      Colors.purple,
                      Colors.red,
                    ],
                    startAngle: 0.0,
                    endAngle: 6.3, // almost 2π
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(4), 
                   child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF00022E),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.add, color: Colors.white),
                  ),
                ),
              ),
              label: "Sell",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: "My Ads"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
          ],
        ),
    );
  }
}