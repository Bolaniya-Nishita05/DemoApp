import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard"),leading: Icon(Icons.dashboard_outlined)),
      body: Center(child: Text("Welcome 🎉",style: TextStyle(fontSize: 20),)),
    );
  }
}
