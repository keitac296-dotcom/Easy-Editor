import 'package:flutter/material.dart';
import '../widgets/video_picker.dart';
import 'dart:io';

class EditorScreen extends StatefulWidget {
  @override
  _EditorScreenState createState() => _EditorScreenState();
}

class _EditorScreenState extends State<EditorScreen> {
  File? _selectedVideo;

  void _onVideoSelected(File video) {
    setState(() {
      _selectedVideo = video;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Éditeur')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            VideoPickerWidget(onVideoSelected: _onVideoSelected),
            _selectedVideo != null ? Text('Fichier : ${_selectedVideo!.path}') : Container(),
            // Ici plus tard : boutons pour couper, ajouter texte/stickers
          ],
        ),
      ),
    );
  }
}