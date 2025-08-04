import 'package:flutter/material.dart';

class VerifyNumberScreen extends StatelessWidget {
  const VerifyNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00022E),
      appBar: AppBar(
        backgroundColor: const Color(0xFF00022E),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Verify Your Phone",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 29,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "To purchase business packages please verify your phone number",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              const SizedBox(height: 20),
              const Text(
                "Phone",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                keyboardType: TextInputType.phone,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  prefixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(width: 8),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: const Text(
                          "+92",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(height: 30, width: 1, color: Colors.white38),
                      const SizedBox(width: 8),
                    ],
                  ),
                  hintText: "Phone Number",
                  hintStyle: const TextStyle(color: Colors.white54),
                  filled: true,
                  fillColor: Colors.transparent,
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white38),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Continue",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
