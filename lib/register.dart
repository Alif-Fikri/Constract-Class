import 'package:belajar_flutter/login.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool mata = true;
  bool mata1 = true;
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final confirmpasswordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Register', style: TextStyle(fontSize: 16)),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              spacing: 20,
              children: [
                FlutterLogo(size: 50),
                TextField(
                  controller: emailcontroller,
                  obscureText: false,
                  autofocus: true,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    label: Text('Email'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Icon(Icons.email_outlined),
                    ),
                  ),
                ),
                // SizedBox(height: 20,),
                TextField(
                  controller: passwordcontroller,
                  obscureText: mata,
                  autofocus: true,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    label: Text('Password'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      // child: Icon(Icons.visibility_off),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            mata = !mata;
                          });
                        },
                        icon: Icon(
                          mata ? Icons.visibility_off : Icons.visibility,
                        ),
                      ),
                    ),
                  ),
                ),
                TextField(
                  controller: confirmpasswordcontroller,
                  obscureText: mata1,
                  autofocus: true,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    label: Text('Confirm Password'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      // child: Icon(Icons.visibility_off),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            mata1 = !mata1;
                          });
                        },
                        icon: Icon(
                          mata1 ? Icons.visibility_off : Icons.visibility,
                        ),
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    final email = emailcontroller.text.trim();
                    final pass = passwordcontroller.text.trim();
                    final passcon = confirmpasswordcontroller.text.trim();

                    if (email.isEmpty || pass.isEmpty || passcon.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Tolong isi semua field')),
                      );
                      return;
                    }

                    if (pass != passcon) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Password ga cocok')),
                      );
                      return;
                    }

                    final box = Hive.box('users');
                    box.put('email', email);
                    box.put('password', pass);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.black,
                    fixedSize: Size(500, 45),
                    elevation: 10,
                  ),
                  child: Text(
                    'Daftar',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: 'Jika sudah punya akun maka login ',
                    style: TextStyle(color: Colors.black, fontSize: 14),
                    children: [
                      TextSpan(
                        text: 'Disini',
                        style: TextStyle(color: Colors.blue, fontSize: 14),
                        recognizer:
                            TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginPage(),
                                  ),
                                );
                              },
                      ),
                      // TextButton(onPressed: (){}, child: Text(''))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
