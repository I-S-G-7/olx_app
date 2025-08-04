import 'package:flutter/material.dart';

class VerifyNumberScreen extends StatelessWidget {
  const VerifyNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:  Color(0xFF00022E),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(18, 20, 0, 0),
              child: Text("Verify Your Phone", style: TextStyle(color: Colors.white, fontSize: 29, fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(18, 5, 0, 0),
              child: Text("To purchase business packages please verify your phone number", style: TextStyle(color: Colors.white, fontSize: 17,),),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(18, 15, 0, 0),
              child: Text("Phone", style: TextStyle(color: Colors.white, fontSize: 17,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(18, 5, 0, 0),
              child: TextField(
                keyboardType: TextInputType.number,
                keyboardAppearance: Brightness.dark,
              )
            ),
          ],
        ),
      ),
    );
  }
}