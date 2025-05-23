import 'package:belajar_flutter/invisible.dart';
import 'package:flutter/material.dart';

class Dialogs extends StatefulWidget {
  const Dialogs({super.key});

  @override
  State<Dialogs> createState() => _DialogsState();
}

class _DialogsState extends State<Dialogs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Dialog'),
        centerTitle: true,
        backgroundColor: Color(0xffB8CFCE),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder:
                  (context) => AlertDialog(
                    title: Text('Ini judul'),
                    content: Text(
                      'Selamat datang di Universitas Mercu Buana, tempat di mana kami mempersiapkan generasi muda untuk menghadapi tantangan dan peluang di era digital. Tempat di mana inovasi, keunggulan akademik,',
                    ),
                    actions: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Kembali'),
                      ),
                      ElevatedButton(onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => InvisibleBelajar(),));
                      }, child: Text('Next')),
                    ],
                  ),
            );
          },
          child: Text('Tombol'),
        ),
      ),
    );
  }
}

// child = center, padding, padding
// children = row, column
// navigator antar halaman = 
// navigator.push
// navigator.pop
// navigator.pushandremoveuntil
// navigator.pushreplacment