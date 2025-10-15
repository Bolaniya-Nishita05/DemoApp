import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:myapp/DashboardScreen.dart';
import 'package:myapp/LoginScreen.dart';
import 'package:myapp/NewListDemo.dart';
import 'package:myapp/SignupScreen.dart';
import 'package:myapp/SplashScreen.dart';

import 'HomeScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyB4jeU0-HNnffi-o8BsYnpVfwnlA69ocf8",
      authDomain: "demoproject-d19c0.firebaseapp.com",
      projectId: "demoproject-d19c0",
      storageBucket: "demoproject-d19c0.firebasestorage.app",
      messagingSenderId: "1082232791619",
      appId: "1:1082232791619:web:b47fc95f071b8a990beaf6",
      measurementId: "G-QPFVNRY9BY"
    ),
  );

  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.purple,               // Background color
          elevation: 4,                     // Shadow
          titleTextStyle: TextStyle(        // Title style
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(         // Icon color
            color: Colors.white,
          ),
        ),
      ),
      home: //NewListDemo(),
            SplashScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/login': (_) => LoginScreen(),
        '/signup': (_) => SignupScreen(),
        '/dashboard': (_) => DashboardScreen(),
      },
    );
  }
}

