import 'package:flutter/material.dart';

class increment extends StatefulWidget {
  @override
  State<increment> createState() => _incrementState();
}

class _incrementState extends State<increment> {
  int angka = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text("$angka", style: TextStyle(fontSize: 20)),
            SizedBox(),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('halo ini snackbar'),
                    action: SnackBarAction(label: 'kirim', onPressed: () {}),
                  ),
                );
              },
              child: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
