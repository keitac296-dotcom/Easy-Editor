import 'package:flutter/material.dart';

class EditorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Éditeur')),
      body: Center(
        child: Text('Ici tu pourras couper, ajouter texte et stickers'),
      ),
    );
  }
}