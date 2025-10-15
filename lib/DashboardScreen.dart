import 'package:flutter/material.dart';
import 'package:myapp/HomeScreen.dart';
import 'package:myapp/NewDemo.dart';
import 'package:myapp/NewListDemo.dart';

class DashboardScreen extends StatefulWidget {
  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  final List<dynamic> _titles = [
    HomeScreen(),
    Text("Feeds Screen",style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
    Text("Notifications Screen",style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
    Text("Profile Screen",style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
    NewDemo(),
    ListMethodsDemo()
  ];

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard"),),
      body: AnimatedSwitcher(
        duration: Duration(milliseconds: 300),
        transitionBuilder: (child, animation) =>
            FadeTransition(opacity: animation, child: child),
        child: Center(
          key: ValueKey<int>(_selectedIndex),
          child: _titles[_selectedIndex]
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Column(
              children: [
                if (_selectedIndex == 0)
                  Container(height: 3, width: 40, color: Colors.blue),
                Icon(Icons.home),
              ],
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                if (_selectedIndex == 1)
                  Container(height: 3, width: 40, color: Colors.blue),
                Icon(Icons.article),
              ],
            ),
            label: "Feeds",
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                if (_selectedIndex == 2)
                  Container(height: 3, width: 40, color: Colors.blue),
                Icon(Icons.notifications),
              ],
            ),
            label: "Notifications",
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                if (_selectedIndex == 3)
                  Container(height: 3, width: 40, color: Colors.blue),
                Icon(Icons.person),
              ],
            ),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                if (_selectedIndex == 4)
                  Container(height: 3, width: 40, color: Colors.blue),
                Icon(Icons.developer_mode),
              ],
            ),
            label: "New Demo",
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                if (_selectedIndex == 5)
                  Container(height: 3, width: 40, color: Colors.blue),
                Icon(Icons.list_alt_rounded),
              ],
            ),
            label: "List Demo",
          ),
        ],
      ),
    );
  }
}
