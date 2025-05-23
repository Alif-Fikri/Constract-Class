// import 'package:flutter/material.dart';

// class Dialogs extends StatefulWidget {
//   const Dialogs({super.key});

//   @override
//   State<Dialogs> createState() => _DialogsState();
// }

// class _DialogsState extends State<Dialogs> {
//   bool mata = true;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('appbar')),
//       body: Padding(
//         padding: const EdgeInsets.all(24.0),
//         child: Column(
//           children: [
//             TextField(
//               keyboardType: TextInputType.emailAddress,
//               textInputAction: TextInputAction.next,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 label: Text('Username'),
//                 labelStyle: TextStyle(fontStyle: FontStyle.italic),
//                 prefixIcon: Padding(
//                   padding: const EdgeInsets.only(left: 10),
//                   child: Icon(Icons.people, size: 20),
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             TextField(
//               obscureText: mata,
//               decoration: InputDecoration(
//                 labelText: 'Password',
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 prefixIcon: Icon(Icons.lock),
//                 suffixIcon: IconButton(
//                   icon: Icon(mata ? Icons.visibility_off : Icons.visibility),
//                   onPressed: () {
//                     setState(() {
//                       mata = !mata;
//                     });
//                   },
//                 ),
//               ),
//             ),

//             SizedBox(height: 20),

//             TextField(
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 labelText: 'Field Lain',
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
