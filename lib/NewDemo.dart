import 'package:flutter/material.dart';

class NewDemo extends StatefulWidget {
  @override
  _PageViewDemoState createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<NewDemo> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  final List<Color> _pageColors = [Colors.teal[100]!, Colors.orange[100]!, Colors.pink[100]!];
  final List<String> _titles = ["Home", "Profile", "Settings"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _controller,
        itemCount: 3,
        onPageChanged: (index) {
          setState(() {
            _currentPage = index;
          });
        },
        itemBuilder: (context, index) {
          return Container(
            color: _pageColors[index],
            child: Center(
              child: Text(
                "This is ${_titles[index]} Page",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.teal[900]),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          int nextPage = (_currentPage + 1) % 3;
          _controller.animateToPage(
            nextPage,
            duration: Duration(milliseconds: 400),
            curve: Curves.easeInOut,
          );
        },
        child: Icon(Icons.arrow_forward),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.teal,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            "Page ${_currentPage + 1} of 3",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
