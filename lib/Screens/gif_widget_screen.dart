import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:typed_data';
import 'dart:async';
import 'dart:math';

class AnimatedGifWidget extends StatelessWidget {
  Future<Uint8List> _loadImage() async {
    final ByteData data = await rootBundle.load('assets/images/Circle.png');
    return Uint8List.view(data.buffer);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Uint8List>(
      future: _loadImage(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Error loading image');
        } else if (snapshot.hasData) {
          final Uint8List _imageBytes = snapshot.data!;
          return AnimatedImage(imageBytes: _imageBytes);
        } else {
          return Text('No image data');
        }
      },
    );
  }
}

class AnimatedImage extends StatefulWidget {
  final Uint8List imageBytes;

  AnimatedImage({required this.imageBytes});

  @override
  _AnimatedImageState createState() => _AnimatedImageState();
}

class _AnimatedImageState extends State<AnimatedImage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    )..repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (BuildContext context, Widget? child) {
        return Transform.rotate(
          angle: 2 * pi * _controller.value,
          child: Image.memory(widget.imageBytes),
          // offset: Offset(
          //     0,
          //     -20 *
          //         sin(widget.imageBytes.lengthInBytes *
          //             0.5 *
          //             pi *
          //             _controller.value)),
          // child: Image.memory(widget.imageBytes),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
