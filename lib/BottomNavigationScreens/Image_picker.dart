import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CameraPreviewScreen extends StatefulWidget {
  @override
  _CameraPreviewScreenState createState() => _CameraPreviewScreenState();
}

class _CameraPreviewScreenState extends State<CameraPreviewScreen> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;
  File? _image;

  @override
  void initState() {
    super.initState();
    // _initializeControllerFuture = _initializeCamera();
    _showOptionsDialog();
  }

  Future<void> _initializeCamera() async {
    final cameras = await availableCameras();
    final firstCamera = cameras.first;

    _controller = CameraController(
      firstCamera,
      ResolutionPreset.low,
    );

    return _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _getImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: source);

    setState(() {
      if (pickedImage != null) {
        _image = File(pickedImage.path);
      } else {
        print('No image selected.');
      }
      Navigator.of(context).pop(); // Close the dialog after selecting/taking a photo
    });
  }

  Future<void> _viewPhoto() async {
    if (_image != null) {
      // Open a dialog to view the selected photo
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Image.file(_image!),
            actions: <Widget>[
              TextButton(
                child: Text('Close'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    } else {
      // Show an error message if no photo is selected
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Text('No photo selected!'),
            actions: <Widget>[
              TextButton(
                child: Text('Close'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  void _showOptionsDialog() {
    // Open a dialog with options to take a photo, pick from gallery, view photo, and cancel
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select an Option'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ElevatedButton(
                onPressed: () => _getImage(ImageSource.camera),
                child: Text('Take Photo'),
              ),
              ElevatedButton(
                onPressed: () => _getImage(ImageSource.gallery),
                child: Text('Choose from Gallery'),
              ),
              ElevatedButton(
                onPressed: _viewPhoto,
                child: Text('View Photo'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog on cancel
                },
                child: Text('Cancel'),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Camera'),
      ),
      body: Center(
        child: _image != null
                ? Image.file(_image!)
                : Text('No Image Selected.'),
      ),
      // FutureBuilder<void>(
      //   future: _initializeControllerFuture,
      //   builder: (context, snapshot) {
      //     if (snapshot.connectionState == ConnectionState.done) {
      //       return CameraPreview(_controller);
      //     } else {
      //       return Center(child: CircularProgressIndicator());
      //     }
      //   },
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showOptionsDialog,
        tooltip: 'Select Photo',
        child: Icon(Icons.camera_alt),
      ),
    );
  }
}
