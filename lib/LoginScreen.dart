import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();
  final formKey = GlobalKey<FormState>();

  Future<void> login() async {
    if (formKey.currentState!.validate()) {
      try {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailCtrl.text,
          password: passCtrl.text,
        );
        Navigator.pushNamed(context, '/dashboard');
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(controller: emailCtrl, decoration: InputDecoration(labelText: "Email")),
              TextFormField(controller: passCtrl, obscureText: true, decoration: InputDecoration(labelText: "Password")),
              SizedBox(height: 20),
              ElevatedButton(onPressed: login, child: Text("Login")),
              TextButton(
                  onPressed: () => Navigator.pushNamed(context, '/signup'),
                  child: Text("New User? Sign Up"))
            ],
          ),
        ),
      ),
    );
  }
}
