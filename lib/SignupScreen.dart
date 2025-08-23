import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();
  final confirmCtrl = TextEditingController();
  final formKey = GlobalKey<FormState>();

  Future<void> signup() async {
    if (formKey.currentState!.validate()) {
      try {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailCtrl.text,
          password: passCtrl.text,
        );
        Navigator.pushReplacementNamed(context, '/login');
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Signup")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(controller: emailCtrl, decoration: InputDecoration(labelText: "Email")),
              TextFormField(controller: passCtrl, obscureText: true, decoration: InputDecoration(labelText: "Password")),
              TextFormField(controller: confirmCtrl, obscureText: true, decoration: InputDecoration(labelText: "Confirm Password"),
                  validator: (v) => v == passCtrl.text ? null : "Passwords don't match"),
              SizedBox(height: 20),
              ElevatedButton(onPressed: signup, child: Text("Sign Up"))
            ],
          ),
        ),
      ),
    );
  }
}
