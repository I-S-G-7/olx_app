import 'package:flutter/material.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00022E),
      appBar: AppBar(
        backgroundColor: const Color(0xFF00022E),
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Change Password",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),

              const Text(
                'Old password',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              const SizedBox(height: 8),
              const PasswordField(hint: 'Enter old password'),

              const SizedBox(height: 20),

              const Text(
                'New Password',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              const SizedBox(height: 8),
              const PasswordField(hint: 'Enter new password'),

              const SizedBox(height: 20),

              const Text(
                'Confirm Password',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              const SizedBox(height: 8),
              const PasswordField(hint: 'Enter new password again'),

              const SizedBox(height: 20),

              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFF1F1F3F),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RequirementText(text: 'Must have at least 8 characters'),
                    RequirementText(text: 'Must have at least 1 number'),
                    RequirementText(text: 'Must have at least 1 letter'),
                    RequirementText(
                      text:
                          'Must have at least 1 special character [@,#,\$,%,etc]',
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFF2C2C4C),
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: const Text(
                  'Save',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
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

class PasswordField extends StatelessWidget {
  final String hint;

  const PasswordField({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.grey),
        filled: true,
        fillColor: const Color(0xFF1F1F3F),
        suffixIcon: const Icon(Icons.remove_red_eye, color: Colors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
      ),
    );
  }
}

class RequirementText extends StatelessWidget {
  final String text;

  const RequirementText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          const Icon(Icons.circle, size: 6, color: Colors.grey),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(color: Colors.grey, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
