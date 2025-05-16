import 'package:flutter/material.dart';

class BelajartStatefull extends StatelessWidget {
  const BelajartStatefull({super.key});

  @override
  Widget build(BuildContext context) {
    int angka = 0;

    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar StateFull'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          spacing: 20,
          children: [
            Text('$angka', style: TextStyle(fontSize: 30)),
            // SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print('sudah ditambahkan');
              },
              child: Text('Tambah'),
            ),
            // SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print('sudah berkurang');
              },
              child: Text('Kurang'),
            ),
          ],
        ),
      ),
    );
  }
}
