import 'package:flutter/material.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({super.key});

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  String selectedTop = "All"; 
  String selectedLower = "lowerAll"; 

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
          onPressed: () {},
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
          onPressed: () {},
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
          onPressed: () {},
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
          onPressed: () {},
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
          onPressed: () {},
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

  @override
  Widget build(BuildContext context) {
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
                  setState(() => selectedTop = "All");
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "All",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: selectedTop == "All"
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                    if (selectedTop == "All")
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
                  setState(() => selectedTop = "Buying");
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Buying",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: selectedTop == "Buying"
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                    if (selectedTop == "Buying")
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
                  setState(() => selectedTop = "Selling");
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Selling",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: selectedTop == "Selling"
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                    if (selectedTop == "Selling")
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
                      selectedLower = "lowerAll";
                    });
                  },
                  child: Text(
                    "All",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: selectedLower == "lowerAll"
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
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
                        selectedLower = "Unread Chats";
                      });
                    },
                    child: Text(
                      "Unread Chats",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: selectedLower == "Unread Chats"
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
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
                      selectedLower = "Favourites";
                    });
                  },
                  child: Text(
                    "Favourites",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: selectedLower == "Favourites"
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 160),
          if (selectedTop == "Selling")
            centre2
          else if (selectedLower == "Unread Chats")
            unreadChats
          else if (selectedLower == "Favourites")
            fvrtChats
          else if (selectedLower == "lowerAll")
            lowerAll
          else
            centre,
        ],
      ),
    );
  }
}
