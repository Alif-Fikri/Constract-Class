import 'package:flutter/material.dart';

class Testing extends StatelessWidget {
  const Testing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text('Belajar Text')),
      body: Text(
        'jssjjsjsjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w900,
          fontStyle: FontStyle.italic,
          color: Colors.green,
        ),
      ),
    );
  }
}
