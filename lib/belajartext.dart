import 'package:flutter/material.dart';

class Textbelajar extends StatelessWidget {
  const Textbelajar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Belajar Text",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w400,
            color: Colors.white,
            fontStyle: FontStyle.italic,
          ),
          textAlign: TextAlign.start,
        ),
        centerTitle: false,
        backgroundColor: Colors.blue,
      ),
      body: Text(
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: Colors.black,
          fontStyle: FontStyle.italic,
          // fontFamily: "inter",
        ),
        textAlign: TextAlign.end,
      ),
    );
  }
}


// Safearea