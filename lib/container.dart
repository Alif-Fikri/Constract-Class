import 'package:flutter/material.dart';

class ContainerBelajar extends StatelessWidget {
  const ContainerBelajar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Button Text",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
        centerTitle: false,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.amber,
          ),
          child: Center(child: Text('testing')),
        ),
      ),
    );
  }
}
