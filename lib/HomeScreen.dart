import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> items = ["Apple", "Banana", "Mango", "Orange", "Grapes"];

  void _showDialog(String fruit) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text("Selected"),
        content: Text("You tapped on $fruit"),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: Text("OK"))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Demo App", style: TextStyle(color: Colors.white,)),
          backgroundColor: Colors.purple,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
            onTap: () => _showDialog(items[index]),
            focusColor: Colors.purple.shade700,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() => items.shuffle());
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text("List Shuffled")));
        },
        child: Icon(Icons.shuffle),
      ),
    );
  }
}
