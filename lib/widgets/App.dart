import 'package:flutter/material.dart';

import 'Home.dart';

// root widget
class App extends StatelessWidget {
  // App theme
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Start 001',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: HomePage(
          title: 'Home Page',
          description: 'x100'
      ),
    );
  }
}
