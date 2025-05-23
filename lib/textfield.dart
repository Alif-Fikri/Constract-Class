import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool mata = true;

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
                  obscureText: mata,
                  autofocus: true,
                  keyboardType: TextInputType.emailAddress,

                  decoration: InputDecoration(
                    label: Text('Password'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 30),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
