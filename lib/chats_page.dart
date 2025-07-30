import 'package:flutter/material.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF00022E),
      appBar: AppBar(
        backgroundColor: Color(0xFF00022E),
        title: Text("Chats", style: TextStyle(color: Colors.white)),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {}, // add logic
                    child: Text(
                      "All",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Buying",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Selling",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(3, 0, 0, 0),
            child: Row(
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    side: BorderSide(color: Colors.white24),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  ),
                  onPressed: () {},
                  child: Text(
                    "All",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      side: BorderSide(color: Colors.white24), // border
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Unread Chats",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    side: BorderSide(color: Colors.white24), // border
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Favourites",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 160),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.message_rounded, color: Colors.white, size: 100),
                Text(
                  'No messages yet?',
                  style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Find Something you like and start a conversation',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
                SizedBox(height: 5,),
                TextButton(onPressed: (){}, 
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                    side: BorderSide(color: Colors.white24), // border
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  ),
                child: Text("Explore the latest ads",style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),))
              ],
            ),
          ),
        ],
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
