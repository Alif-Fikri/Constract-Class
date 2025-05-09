import 'package:flutter/material.dart';

class Invisiblebelajar extends StatelessWidget {
  const Invisiblebelajar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Invisible widget",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
        centerTitle: false,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Stack(
          // scrollDirection: Axis.horizontal,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // spacing: 20,
          children: [
            Container(width: 400, height: 400, color: Colors.red),
            // SizedBox(height: 20),
            Container(width: 300, height: 300, color: Colors.blue),
            // SizedBox(height: 20),
            Container(width: 200, height: 200, color: Colors.black),
            // SizedBox(height: 20),
            Container(width: 100, height: 100, color: Colors.amber),
            // SizedBox(height: 20),
            Container(width: 100, height: 100, color: Colors.red),
            // SizedBox(height: 20),
            Container(width: 100, height: 100, color: Colors.blue),
            // SizedBox(height: 20),
            Container(width: 100, height: 100, color: Colors.black),
            // SizedBox(height: 20),
            Container(width: 100, height: 100, color: Colors.amber),
          ],
        ),
      ),
    );
  }
}

// Column = dia container memanjang horizontal ( atas ke bawah)
// row = container memanjang vertikal (kiri ke kanan)
// SingleChildScrollView
// listview
// stack = gabisa pakai SingleChildScrollView
