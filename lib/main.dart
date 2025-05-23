import 'package:belajar_flutter/belajartext.dart';
import 'package:belajar_flutter/container.dart';
import 'package:belajar_flutter/dialog.dart';
import 'package:belajar_flutter/ett.dart';
import 'package:belajar_flutter/invisible.dart';
import 'package:belajar_flutter/snackbar.dart';
import 'package:belajar_flutter/statefull.dart';
import 'package:belajar_flutter/testing.dart';
import 'package:belajar_flutter/textfield.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(bebas());
}

class bebas extends StatelessWidget {
  const bebas({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Register());
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(home: increment());
//   }
// }

// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }

// class MyWidget extends StatefulWidget {
//   const MyWidget({super.key});

//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }

// State management

// Getx
// Riverpod
// Provider
// Bloc
// Cubit

// Navigator.push(
//   context,
//   MaterialPageRoute(builder: (context) => HalamanBaru()),
// );
