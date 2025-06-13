import 'package:belajar_flutter/belajartext.dart';
import 'package:belajar_flutter/container.dart';
import 'package:belajar_flutter/dialog.dart';
import 'package:belajar_flutter/ett.dart';
import 'package:belajar_flutter/invisible.dart';
import 'package:belajar_flutter/register.dart';
import 'package:belajar_flutter/snackbar.dart';
import 'package:belajar_flutter/statefull.dart';
import 'package:belajar_flutter/testing.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('users');
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

// Future<String> getData() async {
//   await Future.delayed(Duration(seconds: 2)); // simulasi loading
//   return "data sudah diambil";
// }

// void main() async {
//   print("mulai");
//   String data = await getData();
//   print(data);
//   print("selesai");
// }
