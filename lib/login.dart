import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? email;
  String? password;

  @override
  void initState() {
    super.initState();

    final box = Hive.box('users');
    // box.get(email);
    email = box.get('email');
    // box.getAt(1);
    // box.get(password);
    password = box.get('password');
    print('ini email saya: $email');
    print('ini pass saya: $password');
    //   if (password == "") {
    //     print("KOSONG");
    //   }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('emailnya : $email\npasswordnya : $password')),
    );
  }
}
