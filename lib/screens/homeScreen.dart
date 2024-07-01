import 'package:flutter/material.dart';
import 'package:todo/screens/addnote.dart'; // Assuming AddNote is defined here
import 'package:todo/screens/home.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key); // Corrected constructor syntax

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: MyHome(),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.maxFinite,
        child: Column(
          children: [
            Container(
              height: 150,
              width: double.maxFinite,
              color: Colors.blue,
              child: const AddNote(), // Removed const from here
            ),
          ],
        ),
      ),
    );
  }
}
