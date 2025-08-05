import 'package:flutter/material.dart';
import 'package:olx_app/verify_number_screen.dart';

class FavouritesPage extends StatefulWidget {
  const FavouritesPage({super.key});

  @override
  State<FavouritesPage> createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
  String selected = "Favourites";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00022E),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xFF00022E),
        title: const Text(
          "Favourites & Saved Searches",
          style: TextStyle(color: Colors.white),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(48),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {
                  setState(() => selected = "Favourites");
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Favourites",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: selected == "Favourites"
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                    if (selected == "Favourites")
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
                  setState(() => selected = "Saved Searches");
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Saved Searches",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: selected == "Saved Searches"
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                    if (selected == "Saved Searches")
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(Icons.search, color: Colors.white, size: 150),
             Text(
              selected == "Favourites"
                    ? 'You haven\'nt liked anything yet!'
                    : 'You don\'t have any saved searches yet!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 2),
            if(selected == "Saved Searches")
            Text(
              textAlign: TextAlign.center,
              'Start saving searches now to get alerts on new ads that match your preference',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17
,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
