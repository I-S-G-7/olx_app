import 'package:flutter/material.dart';

class SellingPage extends StatelessWidget {
  const SellingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00022E),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.close, color: Colors.white,size: 30,),
              ),
              Text("What are you selling?", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
            ],
          ),
          Column(
            children: [
              _buildSettingsTile(Icons.directions_car, "Vehicles"),
              _buildSettingsTile(Icons.smartphone, "Mobiles"),
              _buildSettingsTile(Icons.apartment, "Property"),
              _buildSettingsTile(Icons.home, "House"),
              _buildSettingsTile(Icons.directions_bike, "Bikes"),
              _buildSettingsTile(Icons.work, "Jobs"),
              _buildSettingsTile(Icons.pets, "Animals"),
              _buildSettingsTile(Icons.celebration, "Furniture & Home Decor"),
              _buildSettingsTile(Icons.checkroom, "Fashion & Beauty"),
              _buildSettingsTile(Icons.toys, "Kids"),
              _buildSettingsTile(Icons.factory, "Business, Industrial & Agriculture"),
              _buildSettingsTile(Icons.library_books, "Books, Sports & Hobbies"),
            ],
          ),
        ],
      ),
    );
  }
  Widget _buildSettingsTile(IconData icon, String title) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 8),
      leading: Icon(icon, color: Colors.white, size: 30,),
      title: Text(title, style: const TextStyle(color: Colors.white, fontSize: 18)),
      trailing: const Icon(Icons.chevron_right, color: Colors.white,size: 30,),
      onTap: () {},
    );
  }
}