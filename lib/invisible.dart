import 'package:flutter/material.dart';

class InvisibleBelajar extends StatelessWidget {
  const InvisibleBelajar({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Belajar Invisible widget'),
          backgroundColor: Colors.blue,
        ),
        body: Stack(
          children: [
            Container(
              width: 500,
              height: 500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black,
              ),
            ),
            Container(
              width: 400,
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.red,
              ),
            ),
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue,
              ),
            ),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// // Column = dia container memanjang horizontal ( atas ke bawah)
// // row = container memanjang vertikal (kiri ke kanan)      overflow = panjang sebuah widget melebih sebuah ukuran screen harus dibungkus dengan singlechildscrollview
// // SingleChildScrollView
// // listview
// // stack = gabisa pakai SingleChildScrollView
