import 'package:flutter/material.dart';
import 'editor_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Easy Editor')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => EditorScreen()));
              },
              child: Text('Ajouter Vidéo/Photo'),
            ),
            ElevatedButton(onPressed: () {}, child: Text('Exporter')),
          ],
        ),
      ),
    );
  }
}