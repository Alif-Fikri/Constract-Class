import 'package:flutter/material.dart';

class Snackbars extends StatefulWidget {
  const Snackbars({super.key});

  @override
  State<Snackbars> createState() => _SnackbarsState();
}

class _SnackbarsState extends State<Snackbars> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Snackbar'),
        centerTitle: true,
        backgroundColor: Color(0xffB8CFCE),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Berhasil Terkirim'),
                duration: Duration(seconds: 5),
                // shape: Border(top: BorderSide.none),
                backgroundColor: Colors.blue,
                // action: SnackBarAction(label: 'Kembali', onPressed: (){

                // }),
              ),
            );
          },
          child: Text('Tombol'),
        ),
      ),
    );
  }
}