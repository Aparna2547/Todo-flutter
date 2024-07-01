import 'package:flutter/material.dart';

class Navbar extends StatelessWidget{
  const Navbar ({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title:const Text(
          'Simple Todo',
          style: TextStyle(
            color: Colors.white
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 38, 7, 92),
        centerTitle: true,
        ),
    );
  }
  
}