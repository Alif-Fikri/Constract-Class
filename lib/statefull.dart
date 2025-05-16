import 'package:flutter/material.dart';

class BelajartStatefull extends StatefulWidget {
  const BelajartStatefull({super.key});

  @override
  State<BelajartStatefull> createState() => _BelajartStatefullState();
}

class _BelajartStatefullState extends State<BelajartStatefull> {
  int angka = 0;
  @override
  Widget build(BuildContext context) {
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // print('sudah ditambahkan');
                    print(angka);
                    angka = angka + 1;
                    setState(() {});
                  },
                  child: Icon(Icons.add),
                  // child: Text('Tambah'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // print('sudah berkurang');
                    print(angka);
                    angka = angka - 1;
                    setState(() {});
                  },
                  child: Icon(Icons.remove),
                  // child: Text('Kurang'),
                ),
              ],
            ),
            // SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
