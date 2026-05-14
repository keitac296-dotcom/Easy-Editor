import 'package:flutter/material.dart';
import '../widgets/video_picker.dart';
import '../widgets/image_picker_widget.dart';
import 'dart:io';

class EditorScreen extends StatefulWidget {
  @override
  _EditorScreenState createState() => _EditorScreenState();
}

class _EditorScreenState extends State<EditorScreen> {
  File? _selectedVideo;
  File? _selectedImage;

  void _onVideoSelected(File video) {
    setState(() {
      _selectedVideo = video;
    });
  }

  void _onImageSelected(File image) {
    setState(() {
      _selectedImage = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Éditeur')),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              VideoPickerWidget(onVideoSelected: _onVideoSelected),
              _selectedVideo != null ? Text('Vidéo : ${_selectedVideo!.path}') : Container(),
              SizedBox(height: 20),
              ImagePickerWidget(onImageSelected: _onImageSelected),
              _selectedImage != null
                  ? Text('Image sélectionnée : ${_selectedImage!.path}')
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}