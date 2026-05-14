import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class VideoPickerWidget extends StatefulWidget {
  final Function(File) onVideoSelected;

  VideoPickerWidget({required this.onVideoSelected});

  @override
  _VideoPickerWidgetState createState() => _VideoPickerWidgetState();
}

class _VideoPickerWidgetState extends State<VideoPickerWidget> {
  File? _videoFile;

  Future<void> _pickVideo() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickVideo(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _videoFile = File(pickedFile.path);
      });
      widget.onVideoSelected(_videoFile!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: _pickVideo,
          child: Text('Sélectionner Vidéo'),
        ),
        _videoFile != null ? Text('Vidéo sélectionnée : ${_videoFile!.path}') : Container(),
      ],
    );
  }
}