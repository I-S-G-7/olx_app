import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class ChatsPage extends StatefulWidget {
  final PersistentTabController controller;
  const ChatsPage({super.key, required this.controller});

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  String selected = "All";
  @override
  Widget build(BuildContext context) {
    final lowerAll = Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.message_rounded, color: Colors.white, size: 100),
          const Text(
            'No messages yet?',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'Find Something you like and start a conversation',
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
          const SizedBox(height: 5),
          TextButton(
            onPressed: () {
              widget.controller.jumpToTab(0);
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              side: const BorderSide(color: Colors.white24),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            ),
            child: const Text(
              "Explore the latest ads",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
    final centre = Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.message_rounded, color: Colors.white, size: 100),
          const Text(
            'No messages yet?',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'Find Something you like and start a conversation',
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
          const SizedBox(height: 5),
          TextButton(
            onPressed: () {
              widget.controller.jumpToTab(0);
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              side: const BorderSide(color: Colors.white24),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            ),
            child: const Text(
              "Explore the latest ads",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
    final centre2 = Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.message_rounded, color: Colors.white, size: 100),
          const Text(
            'No messages yet?',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'We\'ll keep messages for any item you\'re selling in here',
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
          const SizedBox(height: 5),
          TextButton(
            onPressed: () {
              widget.controller.jumpToTab(0);
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              side: const BorderSide(color: Colors.white24),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            ),
            child: const Text(
              "Start Selling",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
    final unreadChats = Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.message_rounded, color: Colors.white, size: 100),
          const Text(
            'Your\'re all up to date',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'You\'ve no unread chats',
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
          const SizedBox(height: 5),
          TextButton(
            onPressed: () {
              widget.controller.jumpToTab(0);
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              side: const BorderSide(color: Colors.white24),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            ),
            child: const Text(
              "Explore the latest ads",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
    final fvrtChats = Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.message_rounded, color: Colors.white, size: 100),
          const Text(
            'Your\'re all up to date',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'You\'ve no favourite chats',
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
          const SizedBox(height: 5),
          TextButton(
            onPressed: () {
              widget.controller.jumpToTab(0);
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              side: const BorderSide(color: Colors.white24),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            ),
            child: const Text(
              "Explore the latest ads",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );

    return Scaffold(
      backgroundColor: const Color(0xFF00022E),
      appBar: AppBar(
        backgroundColor: const Color(0xFF00022E),
        title: const Text("Chats", style: TextStyle(color: Colors.white)),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(40),
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
                  setState(() => selected = "Buying");
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Buying",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: selected == "Buying"
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                    if (selected == "Buying")
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
                  setState(() => selected = "Selling");
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Selling",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: selected == "Selling"
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                    if (selected == "Selling")
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(3, 0, 0, 0),
            child: Row(
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    side: const BorderSide(color: Colors.white24),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      selected = "lowerAll";
                    });
                  },
                  child: const Text(
                    "All",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      side: const BorderSide(color: Colors.white24),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        selected = "Unread Chats";
                      });
                    },
                    child: const Text(
                      "Unread Chats",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    side: const BorderSide(color: Colors.white24),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      selected = "Favourites";
                    });
                  },
                  child: const Text(
                    "Favourites",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 160),
          if (selected == "Selling")
            centre2
          else if (selected == "Unread Chats")
            unreadChats
          else if (selected == "Favourites")
            fvrtChats
          else if (selected == "lowerAll")
            lowerAll
          else
            centre,
        ],
      ),
    );
  }
}
