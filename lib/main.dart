import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(EasyEditorApp());
}

class EasyEditorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Easy Editor',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}